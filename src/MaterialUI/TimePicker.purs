module MaterialUI.TimePicker where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import timePickerClass :: ReactClass TimePickerProps
foreign import data TimePickerOption :: Type
newtype TimePickerProps = TimePickerProps Foreign
timePickerProps :: Options TimePickerOption -> TimePickerProps
timePickerProps = TimePickerProps <<< options
timePicker :: Options TimePickerOption -> Array ReactElement -> ReactElement
timePicker opts = createElement timePickerClass (timePickerProps opts)
autoOk :: Option TimePickerOption (Boolean)
autoOk = opt "autoOk"
cancelLabel :: Option TimePickerOption (Node)
cancelLabel = opt "cancelLabel"
defaultTime :: Option TimePickerOption (UnknownType)
defaultTime = opt "defaultTime" -- object
dialogBodyStyle :: Option TimePickerOption (UnknownType)
dialogBodyStyle = opt "dialogBodyStyle" -- object
dialogStyle :: Option TimePickerOption (UnknownType)
dialogStyle = opt "dialogStyle" -- object
disabled :: Option TimePickerOption (Boolean)
disabled = opt "disabled"
format :: Option TimePickerOption (UnknownType)
format = opt "format" -- enum
minutesStep :: Option TimePickerOption (Number)
minutesStep = opt "minutesStep"
okLabel :: Option TimePickerOption (Node)
okLabel = opt "okLabel"
onChange :: Option TimePickerOption (EventHandlerOpt)
onChange = opt "onChange"
onClick :: Option TimePickerOption (EventHandlerOpt)
onClick = opt "onClick"
onDismiss :: Option TimePickerOption (EventHandlerOpt)
onDismiss = opt "onDismiss"
onFocus :: Option TimePickerOption (EventHandlerOpt)
onFocus = opt "onFocus"
onShow :: Option TimePickerOption (EventHandlerOpt)
onShow = opt "onShow"
pedantic :: Option TimePickerOption (Boolean)
pedantic = opt "pedantic"
style :: Option TimePickerOption (UnknownType)
style = opt "style" -- object
textFieldStyle :: Option TimePickerOption (UnknownType)
textFieldStyle = opt "textFieldStyle" -- object
value :: Option TimePickerOption (UnknownType)
value = opt "value" -- object
