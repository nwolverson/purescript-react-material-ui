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
autoComplete :: Option TextFieldOption (String)
autoComplete = opt "autoComplete"
autoFocus :: Option TextFieldOption (Boolean)
autoFocus = opt "autoFocus"
className :: Option TextFieldOption (String)
className = opt "className"
defaultValue :: Option TextFieldOption (String)
defaultValue = opt "defaultValue"
disabled :: Option TextFieldOption (Boolean)
disabled = opt "disabled"
error :: Option TextFieldOption (Boolean)
error = opt "error"
formHelperTextProps :: Option TextFieldOption (UnknownType)
formHelperTextProps = opt "FormHelperTextProps" -- Object
fullWidth :: Option TextFieldOption (Boolean)
fullWidth = opt "fullWidth"
helperText :: Option TextFieldOption (UnknownType)
helperText = opt "helperText" -- union
helperTextClassName :: Option TextFieldOption (String)
helperTextClassName = opt "helperTextClassName"
id :: Option TextFieldOption (String)
id = opt "id"
inputClassName :: Option TextFieldOption (String)
inputClassName = opt "InputClassName"
inputLabelProps :: Option TextFieldOption (UnknownType)
inputLabelProps = opt "InputLabelProps" -- Object
inputProps' :: Option TextFieldOption (UnknownType)
inputProps' = opt "InputProps" -- Object
inputRef :: Option TextFieldOption (UnknownType)
inputRef = opt "inputRef" -- Function
label :: Option TextFieldOption (UnknownType)
label = opt "label" -- union
labelClassName :: Option TextFieldOption (String)
labelClassName = opt "labelClassName"
multiline :: Option TextFieldOption (Boolean)
multiline = opt "multiline"
name :: Option TextFieldOption (String)
name = opt "name"
placeholder :: Option TextFieldOption (String)
placeholder = opt "placeholder"
required :: Option TextFieldOption (Boolean)
required = opt "required"
rootRef :: Option TextFieldOption (UnknownType)
rootRef = opt "rootRef" -- Function
rows :: Option TextFieldOption (UnknownType)
rows = opt "rows" -- union
rowsMax :: Option TextFieldOption (UnknownType)
rowsMax = opt "rowsMax" -- union
type' :: Option TextFieldOption (String)
type' = opt "type"
value :: Option TextFieldOption (UnknownType)
value = opt "value" -- union
margin :: Option TextFieldOption (UnknownType)
margin = opt "margin" -- union
