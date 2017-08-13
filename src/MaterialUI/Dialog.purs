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
actions :: Option DialogOption (Node)
actions = opt "actions"
actionsContainerClassName :: Option DialogOption (String)
actionsContainerClassName = opt "actionsContainerClassName"
actionsContainerStyle :: Option DialogOption (UnknownType)
actionsContainerStyle = opt "actionsContainerStyle" -- object
autoDetectWindowHeight :: Option DialogOption (Boolean)
autoDetectWindowHeight = opt "autoDetectWindowHeight"
autoScrollBodyContent :: Option DialogOption (Boolean)
autoScrollBodyContent = opt "autoScrollBodyContent"
bodyClassName :: Option DialogOption (String)
bodyClassName = opt "bodyClassName"
bodyStyle :: Option DialogOption (UnknownType)
bodyStyle = opt "bodyStyle" -- object
children :: Option DialogOption (Node)
children = opt "children"
className :: Option DialogOption (String)
className = opt "className"
contentClassName :: Option DialogOption (String)
contentClassName = opt "contentClassName"
contentStyle :: Option DialogOption (UnknownType)
contentStyle = opt "contentStyle" -- object
modal :: Option DialogOption (Boolean)
modal = opt "modal"
onRequestClose :: Option DialogOption (EventHandlerOpt)
onRequestClose = opt "onRequestClose"
open :: Option DialogOption (Boolean)
open = opt "open"
overlayClassName :: Option DialogOption (String)
overlayClassName = opt "overlayClassName"
overlayStyle :: Option DialogOption (UnknownType)
overlayStyle = opt "overlayStyle" -- object
paperClassName :: Option DialogOption (String)
paperClassName = opt "paperClassName"
paperProps :: Option DialogOption (UnknownType)
paperProps = opt "paperProps" -- object
repositionOnUpdate :: Option DialogOption (Boolean)
repositionOnUpdate = opt "repositionOnUpdate"
style :: Option DialogOption (UnknownType)
style = opt "style" -- object
title :: Option DialogOption (Node)
title = opt "title"
titleClassName :: Option DialogOption (String)
titleClassName = opt "titleClassName"
titleStyle :: Option DialogOption (UnknownType)
titleStyle = opt "titleStyle" -- object
