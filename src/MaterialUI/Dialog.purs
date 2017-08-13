module MaterialUI.Dialog where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dialogClass :: ReactClass DialogProps
foreign import data DialogOption :: Type
newtype DialogProps = DialogProps Foreign
dialogProps :: Options DialogOption -> DialogProps
dialogProps = DialogProps <<< options
dialog :: Options DialogOption -> Array ReactElement -> ReactElement
dialog opts = createElement dialogClass (dialogProps opts)
classes :: Option DialogOption (UnknownType)
classes = opt "classes" -- Object
children :: Option DialogOption (UnknownType)
children = opt "children" -- Element
className :: Option DialogOption (String)
className = opt "className"
fullScreen :: Option DialogOption (Boolean)
fullScreen = opt "fullScreen"
ignoreBackdropClick :: Option DialogOption (Boolean)
ignoreBackdropClick = opt "ignoreBackdropClick"
ignoreEscapeKeyUp :: Option DialogOption (Boolean)
ignoreEscapeKeyUp = opt "ignoreEscapeKeyUp"
enterTransitionDuration :: Option DialogOption (Number)
enterTransitionDuration = opt "enterTransitionDuration"
leaveTransitionDuration :: Option DialogOption (Number)
leaveTransitionDuration = opt "leaveTransitionDuration"
maxWidth :: Option DialogOption (UnknownType)
maxWidth = opt "maxWidth" -- union
onBackdropClick :: Option DialogOption (UnknownType)
onBackdropClick = opt "onBackdropClick" -- Function
onEnter :: Option DialogOption (UnknownType)
onEnter = opt "onEnter" -- TransitionCallback
onEntering :: Option DialogOption (UnknownType)
onEntering = opt "onEntering" -- TransitionCallback
onEntered :: Option DialogOption (UnknownType)
onEntered = opt "onEntered" -- TransitionCallback
onEscapeKeyUp :: Option DialogOption (UnknownType)
onEscapeKeyUp = opt "onEscapeKeyUp" -- Function
onExit :: Option DialogOption (UnknownType)
onExit = opt "onExit" -- TransitionCallback
onExiting :: Option DialogOption (UnknownType)
onExiting = opt "onExiting" -- TransitionCallback
onExited :: Option DialogOption (UnknownType)
onExited = opt "onExited" -- TransitionCallback
onRequestClose :: Option DialogOption (UnknownType)
onRequestClose = opt "onRequestClose" -- Function
open :: Option DialogOption (Boolean)
open = opt "open"
transition :: Option DialogOption (UnknownType)
transition = opt "transition" -- union
