module MaterialUI.RadioButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import radioButtonClass :: ReactClass RadioButtonProps
foreign import data RadioButtonOption :: Type
newtype RadioButtonProps = RadioButtonProps Foreign
radioButtonProps :: Options RadioButtonOption -> RadioButtonProps
radioButtonProps = RadioButtonProps <<< options
radioButton :: Options RadioButtonOption -> Array ReactElement -> ReactElement
radioButton opts = createElement radioButtonClass (radioButtonProps opts)
checked :: Option RadioButtonOption (Boolean)
checked = opt "checked"
checkedIcon :: Option RadioButtonOption (ReactElement)
checkedIcon = opt "checkedIcon"
disabled :: Option RadioButtonOption (Boolean)
disabled = opt "disabled"
iconStyle :: Option RadioButtonOption (UnknownType)
iconStyle = opt "iconStyle" -- object
inputStyle :: Option RadioButtonOption (UnknownType)
inputStyle = opt "inputStyle" -- object
labelPosition :: Option RadioButtonOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
labelStyle :: Option RadioButtonOption (UnknownType)
labelStyle = opt "labelStyle" -- object
onCheck :: Option RadioButtonOption (EventHandlerOpt)
onCheck = opt "onCheck"
style :: Option RadioButtonOption (UnknownType)
style = opt "style" -- object
uncheckedIcon :: Option RadioButtonOption (ReactElement)
uncheckedIcon = opt "uncheckedIcon"
value :: Option RadioButtonOption (UnknownType)
value = opt "value" -- any
