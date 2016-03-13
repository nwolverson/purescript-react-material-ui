module MaterialUI.Slider where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import sliderClass :: ReactClass SliderProps
foreign import data SliderOption :: *
newtype SliderProps = SliderProps Foreign
sliderProps :: Options SliderOption -> SliderProps
sliderProps = SliderProps <<< options
slider :: Options SliderOption -> Array ReactElement -> ReactElement
slider opts = createElement sliderClass (sliderProps opts)
defaultValue :: Option SliderOption (UnknownType)
defaultValue = opt "defaultValue" -- custom
description :: Option SliderOption (String)
description = opt "description"
disableFocusRipple :: Option SliderOption (Boolean)
disableFocusRipple = opt "disableFocusRipple"
disabled :: Option SliderOption (Boolean)
disabled = opt "disabled"
error :: Option SliderOption (String)
error = opt "error"
max :: Option SliderOption (UnknownType)
max = opt "max" -- custom
min :: Option SliderOption (UnknownType)
min = opt "min" -- custom
name :: Option SliderOption (String)
name = opt "name"
onBlur :: Option SliderOption (EventHandlerOpt)
onBlur = opt "onBlur"
onChange :: Option SliderOption (EventHandlerOpt)
onChange = opt "onChange"
onDragStart :: Option SliderOption (EventHandlerOpt)
onDragStart = opt "onDragStart"
onDragStop :: Option SliderOption (EventHandlerOpt)
onDragStop = opt "onDragStop"
onFocus :: Option SliderOption (EventHandlerOpt)
onFocus = opt "onFocus"
required :: Option SliderOption (Boolean)
required = opt "required"
step :: Option SliderOption (Number)
step = opt "step"
style :: Option SliderOption (UnknownType)
style = opt "style" -- object
value :: Option SliderOption (UnknownType)
value = opt "value" -- custom
