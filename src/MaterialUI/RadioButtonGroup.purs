module MaterialUI.RadioButtonGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import radioButtonGroupClass :: ReactClass RadioButtonGroupProps
foreign import data RadioButtonGroupOption :: *
newtype RadioButtonGroupProps = RadioButtonGroupProps Foreign
radioButtonGroupProps :: Options RadioButtonGroupOption -> RadioButtonGroupProps
radioButtonGroupProps = RadioButtonGroupProps <<< options
radioButtonGroup :: Options RadioButtonGroupOption -> Array ReactElement -> ReactElement
radioButtonGroup opts = createElement radioButtonGroupClass (radioButtonGroupProps opts)
children :: Option RadioButtonGroupOption (Node)
children = opt "children"
className :: Option RadioButtonGroupOption (String)
className = opt "className"
defaultSelected :: Option RadioButtonGroupOption (String)
defaultSelected = opt "defaultSelected"
labelPosition :: Option RadioButtonGroupOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
name :: Option RadioButtonGroupOption (String)
name = opt "name"
onChange :: Option RadioButtonGroupOption (EventHandlerOpt)
onChange = opt "onChange"
style :: Option RadioButtonGroupOption (UnknownType)
style = opt "style" -- object
valueSelected :: Option RadioButtonGroupOption (String)
valueSelected = opt "valueSelected"
