module MaterialUI.SnackbarContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import snackbarContentClass :: ReactClass SnackbarContentProps
foreign import data SnackbarContentOption :: Type
newtype SnackbarContentProps = SnackbarContentProps Foreign
snackbarContentProps :: Options SnackbarContentOption -> SnackbarContentProps
snackbarContentProps = SnackbarContentProps <<< options
snackbarContent :: Options SnackbarContentOption -> Array ReactElement -> ReactElement
snackbarContent opts = createElement snackbarContentClass (snackbarContentProps opts)
classes :: Option SnackbarContentOption (UnknownType)
classes = opt "classes" -- Object
action :: Option SnackbarContentOption (UnknownType)
action = opt "action" -- Element
className :: Option SnackbarContentOption (String)
className = opt "className"
message :: Option SnackbarContentOption (UnknownType)
message = opt "message" -- Element
