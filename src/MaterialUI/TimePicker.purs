module MaterialUI.TimePicker where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import timePickerClass :: ReactClass TimePickerProps
foreign import data TimePickerOption :: *
newtype TimePickerProps = TimePickerProps Foreign
timePickerProps :: Options TimePickerOption -> TimePickerProps
timePickerProps = TimePickerProps <<< options
timePicker :: Options TimePickerOption -> Array ReactElement -> ReactElement
timePicker opts = createElement timePickerClass (timePickerProps opts)
autoOk :: Option TimePickerOption (Boolean)
autoOk = opt "autoOk"
defaultTime :: Option TimePickerOption (UnknownType)
defaultTime = opt "defaultTime" -- object
format :: Option TimePickerOption (UnknownType)
format = opt "format" -- enum
onChange :: Option TimePickerOption (EventHandlerOpt)
onChange = opt "onChange"
onDismiss :: Option TimePickerOption (EventHandlerOpt)
onDismiss = opt "onDismiss"
onFocus :: Option TimePickerOption (EventHandlerOpt)
onFocus = opt "onFocus"
onShow :: Option TimePickerOption (EventHandlerOpt)
onShow = opt "onShow"
onTouchTap :: Option TimePickerOption (EventHandlerOpt)
onTouchTap = opt "onTouchTap"
pedantic :: Option TimePickerOption (Boolean)
pedantic = opt "pedantic"
style :: Option TimePickerOption (UnknownType)
style = opt "style" -- object
textFieldStyle :: Option TimePickerOption (UnknownType)
textFieldStyle = opt "textFieldStyle" -- object
