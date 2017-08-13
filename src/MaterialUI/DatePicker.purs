module MaterialUI.DatePicker where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import datePickerClass :: ReactClass DatePickerProps
foreign import data DatePickerOption :: Type
newtype DatePickerProps = DatePickerProps Foreign
datePickerProps :: Options DatePickerOption -> DatePickerProps
datePickerProps = DatePickerProps <<< options
datePicker :: Options DatePickerOption -> Array ReactElement -> ReactElement
datePicker opts = createElement datePickerClass (datePickerProps opts)
dateTimeFormat :: Option DatePickerOption (EventHandlerOpt)
dateTimeFormat = opt "DateTimeFormat"
autoOk :: Option DatePickerOption (Boolean)
autoOk = opt "autoOk"
cancelLabel :: Option DatePickerOption (Node)
cancelLabel = opt "cancelLabel"
className :: Option DatePickerOption (String)
className = opt "className"
container :: Option DatePickerOption (UnknownType)
container = opt "container" -- enum
defaultDate :: Option DatePickerOption (UnknownType)
defaultDate = opt "defaultDate" -- object
dialogContainerStyle :: Option DatePickerOption (UnknownType)
dialogContainerStyle = opt "dialogContainerStyle" -- object
disableYearSelection :: Option DatePickerOption (Boolean)
disableYearSelection = opt "disableYearSelection"
disabled :: Option DatePickerOption (Boolean)
disabled = opt "disabled"
firstDayOfWeek :: Option DatePickerOption (Number)
firstDayOfWeek = opt "firstDayOfWeek"
formatDate :: Option DatePickerOption (EventHandlerOpt)
formatDate = opt "formatDate"
hideCalendarDate :: Option DatePickerOption (Boolean)
hideCalendarDate = opt "hideCalendarDate"
locale :: Option DatePickerOption (String)
locale = opt "locale"
maxDate :: Option DatePickerOption (UnknownType)
maxDate = opt "maxDate" -- object
minDate :: Option DatePickerOption (UnknownType)
minDate = opt "minDate" -- object
mode :: Option DatePickerOption (UnknownType)
mode = opt "mode" -- enum
okLabel :: Option DatePickerOption (Node)
okLabel = opt "okLabel"
onChange :: Option DatePickerOption (EventHandlerOpt)
onChange = opt "onChange"
onClick :: Option DatePickerOption (EventHandlerOpt)
onClick = opt "onClick"
onDismiss :: Option DatePickerOption (EventHandlerOpt)
onDismiss = opt "onDismiss"
onFocus :: Option DatePickerOption (EventHandlerOpt)
onFocus = opt "onFocus"
onShow :: Option DatePickerOption (EventHandlerOpt)
onShow = opt "onShow"
openToYearSelection :: Option DatePickerOption (Boolean)
openToYearSelection = opt "openToYearSelection"
shouldDisableDate :: Option DatePickerOption (EventHandlerOpt)
shouldDisableDate = opt "shouldDisableDate"
style :: Option DatePickerOption (UnknownType)
style = opt "style" -- object
textFieldStyle :: Option DatePickerOption (UnknownType)
textFieldStyle = opt "textFieldStyle" -- object
utils :: Option DatePickerOption (UnknownType)
utils = opt "utils" -- object
value :: Option DatePickerOption (UnknownType)
value = opt "value" -- object
