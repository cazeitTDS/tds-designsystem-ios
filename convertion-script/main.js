// Globals 

let fs = require("fs");
 
let tokensData = fs.readFileSync("tokens.json");
let tokens = JSON.parse(tokensData);

let swiftTemplateText = fs.readFileSync("AppearanceTemplate.swift").toString();

swiftTemplateText = createAppearanceFromFigmaTokens(swiftTemplateText, tokens);

fs.writeFileSync("Appearance.swift", swiftTemplateText);


function createAppearanceFromFigmaTokens(templateString, tokensObject) {
    var retVal = templateString;
    loopOverEveryProperty(tokensObject, function(property) {
        let currentTokenObject = tokensObject[property];
        
        retVal = addObjectToTemplate(currentTokenObject, property, tokensObject, retVal)
    })

    return retVal;
}

function addObjectToTemplate(object, objectName, tokensObject, templateString) {
    var stringToInsert = ""
    var searchString = ""

    switch (object.type) {
        case "typography":
            stringToInsert = buildSwiftStringForTemplateWithPropertyLookup(object, objectName, tokensObject, "Templates/TextTemplate.swift");
            searchString = "public class Text {";
            break;

        case "color":
            stringToInsert = buildSwiftStringForTemplate(object, objectName, "Templates/ColorTemplate.swift");
            searchString = "public class Color {";
            break;

        case "spacing":
            var modifiedName = objectName.replace("spacing", "");
            stringToInsert = buildSwiftStringForTemplate(object, modifiedName, "Templates/DefaultTemplate.swift");
            searchString = "public class Spacing {";
            break;
            
        // if there is no logic to build a string, default to search for a placeholder-string
        default:
            let value = addParanthesisIfNeeded(object.value);

            let retVal = templateString.replace(`#${objectName}`, value);
            console.log(`Replacing #${objectName}  with ${value}`);
            return retVal;
    }

    let retVal = insertString(stringToInsert, templateString, searchString);

    return retVal;
}

function insertString(stringToInsert, string, searchString) {
    let writePosition = string.search(searchString) + searchString.length;

    var retVal = [string.slice(0, writePosition), "\n", stringToInsert ,string.slice(writePosition)].join("");

    return retVal;
}

function buildSwiftStringForTemplate(object, objectName, templateFileName) {
    var retVal = fs.readFileSync(templateFileName).toString();

    let objectValue = addParanthesisIfNeeded(object.value);
    
    retVal = retVal.replace("#variableName", objectName);
    retVal = retVal.replace("#variableValue", objectValue);

    return retVal;
}

function buildSwiftStringForTemplateWithPropertyLookup(textObject, textName, tokensObject, templateFileName) {
    var retVal = fs.readFileSync(templateFileName).toString();
    
    let textProperties = textObject.value;

    retVal = retVal.replace("#variableName", textName);

    loopOverEveryProperty(textProperties, function(property) {
        let currentToken = textProperties[property];
        let childPathArray = currentToken.replace("{", "").replace("}", "").split('.');
        
        var resolvedValue = tokensObject;
        childPathArray.forEach(element => {
            resolvedValue = resolvedValue[element]; 
        });

        resolvedValue = resolvedValue.value;
        resolvedValue = addParanthesisIfNeeded(resolvedValue);

        retVal = retVal.replace(`#${property}`, resolvedValue);
        console.log(`Replacing #${property}  with ${resolvedValue}`);
    })

    return retVal; 
}

function loopOverEveryProperty(object, body) {
    for (var prop in object) {
        if (Object.prototype.hasOwnProperty.call(object, prop)) {
            body(prop);
        }
    }
}

function addParanthesisIfNeeded(value) {
    if (typeof(value) != "string" || isNumeric(value)) {
        return value;
    }

    return `"${value}"`;
}

function isNumeric(str) {
    if (typeof str != "string") return false // we only process strings!  
    return !isNaN(str) && // use type coercion to parse the _entirety_ of the string (`parseFloat` alone does not do this)...
           !isNaN(parseFloat(str)) // ...and ensure strings of whitespace fail
  }