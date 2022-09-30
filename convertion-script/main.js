// Global
/*
 Use Figma Tokens to export the tokens in the UI. Make sure to deselect "Include parent key".
 Save the file in the same directory as the script as "tokens.json"
 This script reads a file named tokens.json from the same file directory and outputs a Swift-file named Appearance.swift that can be used with the TDSDesignSystem
 
 Make sure to have node.js installed before trying to run. Run by executing command "node ./main.js"
 
*/

let fs = require("fs");
 
let tokensData = fs.readFileSync("tokens.json");
let tokens = JSON.parse(tokensData);
var swiftTemplateText = ""
try {
    swiftTemplateText = fs.readFileSync("AppearanceCurrent.swift").toString();
} catch (err) {
    swiftTemplateText = fs.readFileSync("AppearanceTemplate.swift").toString();
}

swiftTemplateText = generateAppearanceFromFigmaTokens(swiftTemplateText, tokens);

fs.writeFileSync("Appearance.swift", swiftTemplateText);

// Functions

/*
    Entry point to generate the Appearance file from a Figma Tokens Object

    This method takes in:
    @swiftString: The string that represents the template into which should be inserted. Needs to follow the pattern of AppearanceTemplate.swift
    @tokensObject: The json object that can be generated with Figma Tokens
*/
function generateAppearanceFromFigmaTokens(swiftString, tokensObject) {
    var retVal = swiftString;
    loopOverEveryProperty(tokensObject, function(property) {
        let currentTokenObject = tokensObject[property];
        
        retVal = addTokenToSwiftString(currentTokenObject, property, tokensObject, retVal)
    })

    return retVal;
}

/*
    Entry point to generate the Appearance file from a Figma Tokens Object

    This method takes in:
    @object: Single token Object that should be added
    @objectName: The property name of @object
    @tokensObject: The json object that can be generated with Figma Tokens
    @swiftString: The string that represents the template into which should be inserted. Needs to follow the pattern of AppearanceTemplate.swift
*/
function addTokenToSwiftString(object, objectName, tokensObject, swiftString) {
    var stringToInsert = ""
    var className = ""
    var objectNameToUse = objectName

    switch (object.type) {
        case "typography":
            objectNameToUse = objectName.replace("typography_", "");
            stringToInsert = buildSwiftStringForTemplateWithPropertyLookup(object, objectNameToUse, tokensObject, "Templates/TextTemplate.swift");
            className = "Text";
            break;

        case "color":
            objectNameToUse = objectName.replace("color_", "");
            stringToInsert = buildSwiftStringForTemplate(object, objectNameToUse, "Templates/ColorTemplate.swift");
            className = "Color";
            break;

        case "sizing":
            objectNameToUse = objectName.replace("sizing_", "");
            stringToInsert = buildSwiftStringForTemplate(object, objectNameToUse, "Templates/DefaultTemplate.swift", "CGFloat");
            className = "Size";
            break;

        case "borderRadius":
            objectNameToUse = objectName.replace("borderRadius_", "");
            stringToInsert = buildSwiftStringForTemplate(object, objectNameToUse, "Templates/DefaultTemplate.swift", "CGFloat");
            className = "CornerRadius";
            break;

        case "borderWidth":
            objectNameToUse = objectName.replace("borderWidth_", "");
            stringToInsert = buildSwiftStringForTemplate(object, objectNameToUse, "Templates/DefaultTemplate.swift", "CGFloat");
            className = "BorderWidth";
            break;

        case "spacing":
            objectNameToUse = objectName.replace("spacing", "");
            stringToInsert = buildSwiftStringForTemplate(object, objectNameToUse, "Templates/DefaultTemplate.swift", "CGFloat");
            className = "Spacing";
            break;
            
        // if there is no logic to build a string, default to search for a placeholder-string
        default:
            let value = addParanthesisIfNeeded(object.value);

            let retVal = swiftString.replace(`#${objectNameToUse}`, value);
            // console.log(`Replacing #${objectNameToUse}  with ${value}`);
            return retVal;
    }

    let retVal = insertString(stringToInsert, swiftString, objectNameToUse, className);

    return retVal;
}

/*
    Insert generated Swift-string into the current Appearance-string

    This method takes in:
    @stringToInsert: Swift-string that should be inserted
    @string: string into which should be inserted
    @objectName: The property name of @object
    @searchString: string that is the anchor of where in the @string @stringToInsert should be inserted
    @startSearchPosition: set a startPosition in @string from where the search will start
*/
function insertString(stringToInsert, string, objectName, className, startSearchPosition = 0) {
    // get the range of the current class (searchString)
    let classRange = getClassRangeInString(className, string);
    var stringToUse = string;

    // see if the property exists already in the current string
    var writePosition = string.indexOf(" " + objectName + ":", startSearchPosition);

    let searchString = getSearchStringForClass(className);

    // check the result of wether or not the property was already found as existent
    if (writePosition < 0) { 
        writePosition = string.search(searchString) + searchString.length;
    }
    else if (writePosition >= classRange.startPosition && writePosition <= classRange.endPosition) {
        let removeResult = removeCurrentPropertyString(writePosition, string);
        writePosition = removeResult.writePosition;
        stringToUse = removeResult.newString;
    }
    else {
        // console.log("Was not in class range:" + objectName);
        // console.log("ClassName: " + className + "Position: " + writePosition + " " + classRange.startPosition + " " + classRange.endPosition);
        // check if there is another occurence in the document
        return insertString(stringToInsert, string, objectName, className, writePosition + 1);
    }

    var retVal = [stringToUse.slice(0, writePosition), "\n", stringToInsert, stringToUse.slice(writePosition)].join("");

    return retVal;
}

/*
    Get the range of a Swift-class for a certain Swift-string
    
    This method takes in:
    @className: Name of the class (Example: "Text")
    @string: The string where the range should be found
*/
function getClassRangeInString(className, string) {
    let searchString = getSearchStringForClass(className);
    let startPosition = string.indexOf(searchString);

    let endPositionSearchStart = startPosition + searchString.length;
    var endPosition = string.indexOf("public class", endPositionSearchStart);
    if (endPosition < 0) {
        endPosition = string.length - 1;
    }
    
    return {
        "startPosition": startPosition,
        "endPosition": endPosition
    }
}

/*
    Remove the current property string from a given Swift-string
    
    This method takes in:
    @writePosition: Position where the property was found
    @string: string from which should be removed
*/
function removeCurrentPropertyString(writePosition, string) {
    var startPosition = string.lastIndexOf("\n", writePosition);
    var endPosition = writePosition;

    if (startPosition < 0) {
        startPosition = writePosition;
    }

    var endPosition = string.indexOf("\n", writePosition);
    var firstCurlyBracketAfterProperty = string.indexOf("{", writePosition);

    if (endPosition > firstCurlyBracketAfterProperty) {
        let endString = "}()\n";
        endPosition = string.indexOf(endString, writePosition) + endString.length;
    }

    var stringToBeRemoved = string.slice(startPosition, endPosition);
    return {
        "writePosition": startPosition,
        "newString": string.replace(stringToBeRemoved, "")
    };
}

/*
    Build a string that represents swiftCode by replacing values in a templateFile

    This method takes in:
    @object: Figma Tokens object that should be used for filling in the placeholders
    @objectName: The property name of @object
    @templateFilePath: The Path of the templateFile
    @variableType: Specify a variableType that will be replaced from the templateFile
*/
function buildSwiftStringForTemplate(object, objectName, templateFilePath, variableType = "") {
    var retVal = fs.readFileSync(templateFilePath).toString();

    let objectValue = addParanthesisIfNeeded(object.value);
    
    retVal = retVal.replace("#variableName", objectName);
    retVal = retVal.replace("#variableValue", objectValue);
    retVal = retVal.replace("#variableType", variableType);

    return retVal;
}

/*
    Build a string that represents swiftCode by replacing values in a templateFile with property lookup to resolve figmas json linking
    (Example: 
        {
            ...
            "fontFamily": "{fontFamilies.sf-pro-text}",
            ...
        }

    This method takes in:
    @object: Figma Tokens object that should be used for filling in the placeholders
    @objectName: The property name of @object
    @tokensObject: The json object that can be generated with Figma Tokens
    @templateFilePath: The Path of the templateFile
    @variableType: Specify a variableType that will be replaced from the templateFile
*/
function buildSwiftStringForTemplateWithPropertyLookup(object, objectName, tokensObject, templateFilePath) {
    var retVal = fs.readFileSync(templateFilePath).toString();
    
    let textProperties = object.value;

    retVal = retVal.replace("#variableName", objectName);

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
        //console.log(`Replacing #${property}  with ${resolvedValue}`);
    })

    return retVal; 
}

// Helpers

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

function getSearchStringForClass(className) {
    return `public class ${className} {`;
}