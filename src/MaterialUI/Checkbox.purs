module MaterialUI.Checkbox where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import checkboxClass :: ReactClass CheckboxProps
foreign import data CheckboxOption :: Type
newtype CheckboxProps = CheckboxProps Foreign
checkboxProps :: Options CheckboxOption -> CheckboxProps
checkboxProps = CheckboxProps <<< options
checkbox :: Options CheckboxOption -> Array ReactElement -> ReactElement
checkbox opts = createElement checkboxClass (checkboxProps opts)
checked :: Option CheckboxOption (UnknownType)
checked = opt "checked" -- union
checkedClassName :: Option CheckboxOption (String)
checkedClassName = opt "checkedClassName"
checkedIcon :: Option CheckboxOption (UnknownType)
checkedIcon = opt "checkedIcon" -- Element
classes :: Option CheckboxOption (UnknownType)
classes = opt "classes" -- Object
className :: Option CheckboxOption (String)
className = opt "className"
defaultChecked :: Option CheckboxOption (Boolean)
defaultChecked = opt "defaultChecked"
disabled :: Option CheckboxOption (Boolean)
disabled = opt "disabled"
disabledClassName :: Option CheckboxOption (String)
disabledClassName = opt "disabledClassName"
disableRipple :: Option CheckboxOption (Boolean)
disableRipple = opt "disableRipple"
icon :: Option CheckboxOption (UnknownType)
icon = opt "icon" -- Element
indeterminate :: Option CheckboxOption (Boolean)
indeterminate = opt "indeterminate"
indeterminateIcon :: Option CheckboxOption (UnknownType)
indeterminateIcon = opt "indeterminateIcon" -- union
inputProps' :: Option CheckboxOption (UnknownType)
inputProps' = opt "inputProps" -- Object
inputRef :: Option CheckboxOption (UnknownType)
inputRef = opt "inputRef" -- Function
name :: Option CheckboxOption (String)
name = opt "name"
onChange :: Option CheckboxOption (UnknownType)
onChange = opt "onChange" -- Function
tabIndex :: Option CheckboxOption (String)
tabIndex = opt "tabIndex"
value :: Option CheckboxOption (String)
value = opt "value"
