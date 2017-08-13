module MaterialUI.DialogContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dialogContentClass :: ReactClass DialogContentProps
foreign import data DialogContentOption :: Type
newtype DialogContentProps = DialogContentProps Foreign
dialogContentProps :: Options DialogContentOption -> DialogContentProps
dialogContentProps = DialogContentProps <<< options
dialogContent :: Options DialogContentOption -> Array ReactElement -> ReactElement
dialogContent opts = createElement dialogContentClass (dialogContentProps opts)
children :: Option DialogContentOption (Node)
children = opt "children"
classes :: Option DialogContentOption (UnknownType)
classes = opt "classes" -- object
className :: Option DialogContentOption (String)
className = opt "className"
