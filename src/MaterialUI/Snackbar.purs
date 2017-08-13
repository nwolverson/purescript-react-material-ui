module MaterialUI.Snackbar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import snackbarClass :: ReactClass SnackbarProps
foreign import data SnackbarOption :: Type
newtype SnackbarProps = SnackbarProps Foreign
snackbarProps :: Options SnackbarOption -> SnackbarProps
snackbarProps = SnackbarProps <<< options
snackbar :: Options SnackbarOption -> Array ReactElement -> ReactElement
snackbar opts = createElement snackbarClass (snackbarProps opts)
action :: Option SnackbarOption (Node)
action = opt "action"
autoHideDuration :: Option SnackbarOption (Number)
autoHideDuration = opt "autoHideDuration"
bodyStyle :: Option SnackbarOption (UnknownType)
bodyStyle = opt "bodyStyle" -- object
className :: Option SnackbarOption (String)
className = opt "className"
contentStyle :: Option SnackbarOption (UnknownType)
contentStyle = opt "contentStyle" -- object
message :: Option SnackbarOption (Node)
message = opt "message"
onActionTouchTap :: Option SnackbarOption (EventHandlerOpt)
onActionTouchTap = opt "onActionTouchTap"
onRequestClose :: Option SnackbarOption (EventHandlerOpt)
onRequestClose = opt "onRequestClose"
open :: Option SnackbarOption (Boolean)
open = opt "open"
style :: Option SnackbarOption (UnknownType)
style = opt "style" -- object
