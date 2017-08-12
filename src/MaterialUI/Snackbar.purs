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
anchorOrigin :: Option SnackbarOption (UnknownType)
anchorOrigin = opt "anchorOrigin" -- signature
autoHideDuration :: Option SnackbarOption (Number)
autoHideDuration = opt "autoHideDuration"
classes :: Option SnackbarOption (UnknownType)
classes = opt "classes" -- Object
enterTransitionDuration :: Option SnackbarOption (Number)
enterTransitionDuration = opt "enterTransitionDuration"
leaveTransitionDuration :: Option SnackbarOption (Number)
leaveTransitionDuration = opt "leaveTransitionDuration"
action :: Option SnackbarOption (UnknownType)
action = opt "action" -- Element
children :: Option SnackbarOption (UnknownType)
children = opt "children" -- Element
className :: Option SnackbarOption (String)
className = opt "className"
key :: Option SnackbarOption (UnknownType)
key = opt "key" -- any
message :: Option SnackbarOption (UnknownType)
message = opt "message" -- Element
onEnter :: Option SnackbarOption (UnknownType)
onEnter = opt "onEnter" -- TransitionCallback
onEntering :: Option SnackbarOption (UnknownType)
onEntering = opt "onEntering" -- TransitionCallback
onEntered :: Option SnackbarOption (UnknownType)
onEntered = opt "onEntered" -- TransitionCallback
onExit :: Option SnackbarOption (UnknownType)
onExit = opt "onExit" -- TransitionCallback
onExiting :: Option SnackbarOption (UnknownType)
onExiting = opt "onExiting" -- TransitionCallback
onExited :: Option SnackbarOption (UnknownType)
onExited = opt "onExited" -- TransitionCallback
onMouseEnter :: Option SnackbarOption (UnknownType)
onMouseEnter = opt "onMouseEnter" -- Function
onMouseLeave :: Option SnackbarOption (UnknownType)
onMouseLeave = opt "onMouseLeave" -- Function
onRequestClose :: Option SnackbarOption (UnknownType)
onRequestClose = opt "onRequestClose" -- signature
open :: Option SnackbarOption (Boolean)
open = opt "open"
snackbarContentProps :: Option SnackbarOption (UnknownType)
snackbarContentProps = opt "SnackbarContentProps" -- Object
transition :: Option SnackbarOption (UnknownType)
transition = opt "transition" -- union
