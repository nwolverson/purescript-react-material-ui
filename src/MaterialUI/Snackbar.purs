module MaterialUI.Snackbar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import snackbarClass :: ReactClass SnackbarProps
foreign import data SnackbarOption :: *
newtype SnackbarProps = SnackbarProps Foreign
snackbarProps :: Options SnackbarOption -> SnackbarProps
snackbarProps = SnackbarProps <<< options
snackbar :: Options SnackbarOption -> Array ReactElement -> ReactElement
snackbar opts = createElement snackbarClass (snackbarProps opts)
action :: Option SnackbarOption (String)
action = opt "action"
autoHideDuration :: Option SnackbarOption (Number)
autoHideDuration = opt "autoHideDuration"
bodyStyle :: Option SnackbarOption (UnknownType)
bodyStyle = opt "bodyStyle" -- object
className :: Option SnackbarOption (String)
className = opt "className"
message :: Option SnackbarOption (Node)
message = opt "message"
onActionTouchTap :: Option SnackbarOption (EventHandlerOpt)
onActionTouchTap = opt "onActionTouchTap"
onDismiss :: Option SnackbarOption (UnknownType)
onDismiss = opt "onDismiss" -- custom
onRequestClose :: Option SnackbarOption (EventHandlerOpt)
onRequestClose = opt "onRequestClose"
onShow :: Option SnackbarOption (UnknownType)
onShow = opt "onShow" -- custom
open :: Option SnackbarOption (Boolean)
open = opt "open"
openOnMount :: Option SnackbarOption (UnknownType)
openOnMount = opt "openOnMount" -- custom
style :: Option SnackbarOption (UnknownType)
style = opt "style" -- object
