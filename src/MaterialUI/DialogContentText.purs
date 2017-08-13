module MaterialUI.DialogContentText where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dialogContentTextClass :: ReactClass DialogContentTextProps
foreign import data DialogContentTextOption :: Type
newtype DialogContentTextProps = DialogContentTextProps Foreign
dialogContentTextProps :: Options DialogContentTextOption -> DialogContentTextProps
dialogContentTextProps = DialogContentTextProps <<< options
dialogContentText :: Options DialogContentTextOption -> Array ReactElement -> ReactElement
dialogContentText opts = createElement dialogContentTextClass (dialogContentTextProps opts)
children :: Option DialogContentTextOption (Node)
children = opt "children"
classes :: Option DialogContentTextOption (UnknownType)
classes = opt "classes" -- object
className :: Option DialogContentTextOption (String)
className = opt "className"
