module MaterialUI.TextField where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import textFieldClass :: ReactClass TextFieldProps
foreign import data TextFieldOption :: Type
newtype TextFieldProps = TextFieldProps Foreign
textFieldProps :: Options TextFieldOption -> TextFieldProps
textFieldProps = TextFieldProps <<< options
textField :: Options TextFieldOption -> Array ReactElement -> ReactElement
textField opts = createElement textFieldClass (textFieldProps opts)
children :: Option TextFieldOption (Node)
children = opt "children"
className :: Option TextFieldOption (String)
className = opt "className"
defaultValue :: Option TextFieldOption (UnknownType)
defaultValue = opt "defaultValue" -- any
disabled :: Option TextFieldOption (Boolean)
disabled = opt "disabled"
errorStyle :: Option TextFieldOption (UnknownType)
errorStyle = opt "errorStyle" -- object
errorText :: Option TextFieldOption (Node)
errorText = opt "errorText"
floatingLabelFixed :: Option TextFieldOption (Boolean)
floatingLabelFixed = opt "floatingLabelFixed"
floatingLabelFocusStyle :: Option TextFieldOption (UnknownType)
floatingLabelFocusStyle = opt "floatingLabelFocusStyle" -- object
floatingLabelShrinkStyle :: Option TextFieldOption (UnknownType)
floatingLabelShrinkStyle = opt "floatingLabelShrinkStyle" -- object
floatingLabelStyle :: Option TextFieldOption (UnknownType)
floatingLabelStyle = opt "floatingLabelStyle" -- object
floatingLabelText :: Option TextFieldOption (Node)
floatingLabelText = opt "floatingLabelText"
fullWidth :: Option TextFieldOption (Boolean)
fullWidth = opt "fullWidth"
hintStyle :: Option TextFieldOption (UnknownType)
hintStyle = opt "hintStyle" -- object
hintText :: Option TextFieldOption (Node)
hintText = opt "hintText"
id :: Option TextFieldOption (String)
id = opt "id"
inputStyle :: Option TextFieldOption (UnknownType)
inputStyle = opt "inputStyle" -- object
multiLine :: Option TextFieldOption (Boolean)
multiLine = opt "multiLine"
name :: Option TextFieldOption (String)
name = opt "name"
onBlur :: Option TextFieldOption (EventHandlerOpt)
onBlur = opt "onBlur"
onChange :: Option TextFieldOption (EventHandlerOpt)
onChange = opt "onChange"
onFocus :: Option TextFieldOption (EventHandlerOpt)
onFocus = opt "onFocus"
rows :: Option TextFieldOption (Number)
rows = opt "rows"
rowsMax :: Option TextFieldOption (Number)
rowsMax = opt "rowsMax"
style :: Option TextFieldOption (UnknownType)
style = opt "style" -- object
textareaStyle :: Option TextFieldOption (UnknownType)
textareaStyle = opt "textareaStyle" -- object
type' :: Option TextFieldOption (String)
type' = opt "type"
underlineDisabledStyle :: Option TextFieldOption (UnknownType)
underlineDisabledStyle = opt "underlineDisabledStyle" -- object
underlineFocusStyle :: Option TextFieldOption (UnknownType)
underlineFocusStyle = opt "underlineFocusStyle" -- object
underlineShow :: Option TextFieldOption (Boolean)
underlineShow = opt "underlineShow"
underlineStyle :: Option TextFieldOption (UnknownType)
underlineStyle = opt "underlineStyle" -- object
value :: Option TextFieldOption (UnknownType)
value = opt "value" -- any
