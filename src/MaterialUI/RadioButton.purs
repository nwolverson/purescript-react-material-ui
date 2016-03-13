module MaterialUI.RadioButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import radioButtonClass :: ReactClass RadioButtonProps
foreign import data RadioButtonOption :: *
newtype RadioButtonProps = RadioButtonProps Foreign
radioButtonProps :: Options RadioButtonOption -> RadioButtonProps
radioButtonProps = RadioButtonProps <<< options
radioButton :: Options RadioButtonOption -> Array ReactElement -> ReactElement
radioButton opts = createElement radioButtonClass (radioButtonProps opts)
checked :: Option RadioButtonOption (Boolean)
checked = opt "checked"
disabled :: Option RadioButtonOption (Boolean)
disabled = opt "disabled"
iconStyle :: Option RadioButtonOption (UnknownType)
iconStyle = opt "iconStyle" -- object
labelPosition :: Option RadioButtonOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
labelStyle :: Option RadioButtonOption (UnknownType)
labelStyle = opt "labelStyle" -- object
onCheck :: Option RadioButtonOption (EventHandlerOpt)
onCheck = opt "onCheck"
value :: Option RadioButtonOption (String)
value = opt "value"
