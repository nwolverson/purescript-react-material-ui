module MaterialUI.RadioGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import radioGroupClass :: ReactClass RadioGroupProps
foreign import data RadioGroupOption :: Type
newtype RadioGroupProps = RadioGroupProps Foreign
radioGroupProps :: Options RadioGroupOption -> RadioGroupProps
radioGroupProps = RadioGroupProps <<< options
radioGroup :: Options RadioGroupOption -> Array ReactElement -> ReactElement
radioGroup opts = createElement radioGroupClass (radioGroupProps opts)
classes :: Option RadioGroupOption (UnknownType)
classes = opt "classes" -- Object
children :: Option RadioGroupOption (UnknownType)
children = opt "children" -- Element
className :: Option RadioGroupOption (String)
className = opt "className"
name :: Option RadioGroupOption (String)
name = opt "name"
onBlur :: Option RadioGroupOption (UnknownType)
onBlur = opt "onBlur" -- Function
onChange :: Option RadioGroupOption (UnknownType)
onChange = opt "onChange" -- Function
onKeyDown :: Option RadioGroupOption (UnknownType)
onKeyDown = opt "onKeyDown" -- Function
selectedValue :: Option RadioGroupOption (String)
selectedValue = opt "selectedValue"
