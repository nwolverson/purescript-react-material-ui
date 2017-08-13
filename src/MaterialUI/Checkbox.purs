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
checked :: Option CheckboxOption (Boolean)
checked = opt "checked"
checkedIcon :: Option CheckboxOption (ReactElement)
checkedIcon = opt "checkedIcon"
defaultChecked :: Option CheckboxOption (Boolean)
defaultChecked = opt "defaultChecked"
disabled :: Option CheckboxOption (Boolean)
disabled = opt "disabled"
iconStyle :: Option CheckboxOption (UnknownType)
iconStyle = opt "iconStyle" -- object
inputStyle :: Option CheckboxOption (UnknownType)
inputStyle = opt "inputStyle" -- object
labelPosition :: Option CheckboxOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
labelStyle :: Option CheckboxOption (UnknownType)
labelStyle = opt "labelStyle" -- object
onCheck :: Option CheckboxOption (EventHandlerOpt)
onCheck = opt "onCheck"
style :: Option CheckboxOption (UnknownType)
style = opt "style" -- object
uncheckedIcon :: Option CheckboxOption (ReactElement)
uncheckedIcon = opt "uncheckedIcon"
valueLink :: Option CheckboxOption (UnknownType)
valueLink = opt "valueLink" -- object
