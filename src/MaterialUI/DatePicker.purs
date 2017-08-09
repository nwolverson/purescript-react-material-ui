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
container :: Option DatePickerOption (UnknownType)
container = opt "container" -- enum
defaultDate :: Option DatePickerOption (UnknownType)
defaultDate = opt "defaultDate" -- object
disableYearSelection :: Option DatePickerOption (Boolean)
disableYearSelection = opt "disableYearSelection"
disabled :: Option DatePickerOption (Boolean)
disabled = opt "disabled"
firstDayOfWeek :: Option DatePickerOption (Number)
firstDayOfWeek = opt "firstDayOfWeek"
formatDate :: Option DatePickerOption (EventHandlerOpt)
formatDate = opt "formatDate"
locale :: Option DatePickerOption (String)
locale = opt "locale"
maxDate :: Option DatePickerOption (UnknownType)
maxDate = opt "maxDate" -- object
minDate :: Option DatePickerOption (UnknownType)
minDate = opt "minDate" -- object
mode :: Option DatePickerOption (UnknownType)
mode = opt "mode" -- enum
onChange :: Option DatePickerOption (EventHandlerOpt)
onChange = opt "onChange"
onDismiss :: Option DatePickerOption (EventHandlerOpt)
onDismiss = opt "onDismiss"
onFocus :: Option DatePickerOption (EventHandlerOpt)
onFocus = opt "onFocus"
onShow :: Option DatePickerOption (EventHandlerOpt)
onShow = opt "onShow"
onTouchTap :: Option DatePickerOption (EventHandlerOpt)
onTouchTap = opt "onTouchTap"
shouldDisableDate :: Option DatePickerOption (EventHandlerOpt)
shouldDisableDate = opt "shouldDisableDate"
showYearSelector :: Option DatePickerOption (UnknownType)
showYearSelector = opt "showYearSelector" -- custom
style :: Option DatePickerOption (UnknownType)
style = opt "style" -- object
textFieldStyle :: Option DatePickerOption (UnknownType)
textFieldStyle = opt "textFieldStyle" -- object
value :: Option DatePickerOption (UnknownType)
value = opt "value" -- any
valueLink :: Option DatePickerOption (UnknownType)
valueLink = opt "valueLink" -- object
wordings :: Option DatePickerOption (UnknownType)
wordings = opt "wordings" -- object
