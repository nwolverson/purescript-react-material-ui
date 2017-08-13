module MaterialUI.DialogActions where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dialogActionsClass :: ReactClass DialogActionsProps
foreign import data DialogActionsOption :: Type
newtype DialogActionsProps = DialogActionsProps Foreign
dialogActionsProps :: Options DialogActionsOption -> DialogActionsProps
dialogActionsProps = DialogActionsProps <<< options
dialogActions :: Options DialogActionsOption -> Array ReactElement -> ReactElement
dialogActions opts = createElement dialogActionsClass (dialogActionsProps opts)
children :: Option DialogActionsOption (Node)
children = opt "children"
classes :: Option DialogActionsOption (UnknownType)
classes = opt "classes" -- object
className :: Option DialogActionsOption (String)
className = opt "className"
