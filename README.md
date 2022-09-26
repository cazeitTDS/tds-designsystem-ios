# TDSDesignSystem

Framework created by Carl Zeitler for his bachelor thesis.

## How to Embed
Embed the Package by using the Swift Package Manager:
Use main branch for stable version.

You can use a designsystem-config.json file to change the default fallback behaviour of the frameworks TDSStyle class. Check the TDSStyle documentation for more information.
An example file looks like this:
```
{
    "default-style": {
        "foreground-color": {
            "hex": "#000000"
        },
        "background-color": {
            "hex": "#00000000"
        },
        "corner-radius": 0,
        "text-alignment" : "center",
        "border": {
            "color": {
                "hex": "#00000000"
            },
            "width": 0,
            "corner-radius": 0,
            "insets": {
                "top": 0,
                "left": 0,
                "right": 0,
                "bottom": 0
            }
        },
        "font": {
            "size": 16,
            "weight": "medium",
            "name": null,
            "letter-spacing": 0,
            "line-height": 0
        },
        "padding": {
            "top": 0,
            "left": 0,
            "right": 0,
            "bottom": 0
        },
        "margin": {
            "top": 0,
            "left": 0,
            "right": 0,
            "bottom": 0
        },
        "shadow": {
            "color": {
                "hex": "#00000000"
            },
            "radius": 0,
            "offset": {
                "horizontal": 0,
                "vertical": 0
            }
        }
    }
}
```

## How to Use
The framework contains three main components:
* Text
* Button
* Icon
* (ViewButton)

All components are styled using instances of TDSStyle. TDSStyle has the following properties:

Property | Type | Description
--- | --- | --- 
foregroundColor | TDSColor | Foreground Color of a view
backgroundColor | TDSColor | Background Color of a view
cornerRadius | CGFloat | Corner Radius of the view
textAlignment | TDSTextAlignment | Text Alignment of a view
border | TDSBorderData | Object representing the border of the view (width, color, cornerRadius, insets)
tdsFont | TDSFontData | Object representing the font of the view (size, weight, name, letterSpacing, lineHeight)
padding | TDSEdgeInsets | Object representing all padding insets of a view
margin | TDSEdgeInsets | Object representing all margin insets of a view
shadow | TDSShadow | Object representing the shadow of the view (color, radius, offset)
maxTextLines | Int | Maximum text lines in a view

A TDSStyle can be applied to a component to style it accordingly.
Additionally, for interactive elements, it is recommended to use TDSStyleStateSet

TDSStyleStateSet holds an instance of TDSStyle for each UI-State:
* default
* disabled
* pressed
* focused

### View-Styling

``` 
// Text
TDSText("Test Text",
        style: YOUR_STYLE)
        
// Button
TDSButton(title: "Disabled",
          styleStateSet: YOUR_STYLE_STATE_SET)
  .disabled(true)
  
// Icon
TDSIcon(iconData: iconData,
        styleStateSet: YOUR_STYLE_STATE_SET)
        
// View-Button
TDSViewButton(content: {
    Text("My Custom Button")
  }, action: {
    runMyCustomAction()
  }, styleStateSet: YOUR_STYLE_STATE_SET)
```
