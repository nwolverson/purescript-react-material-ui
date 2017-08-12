module MaterialUI.Chip where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import chipClass :: ReactClass ChipProps
foreign import data ChipOption :: Type
newtype ChipProps = ChipProps Foreign
chipProps :: Options ChipOption -> ChipProps
chipProps = ChipProps <<< options
chip :: Options ChipOption -> Array ReactElement -> ReactElement
chip opts = createElement chipClass (chipProps opts)
avatar :: Option ChipOption (Node)
avatar = opt "avatar"
classes :: Option ChipOption (UnknownType)
classes = opt "classes" -- object
className :: Option ChipOption (String)
className = opt "className"
label :: Option ChipOption (Node)
label = opt "label"
onClick :: Option ChipOption (EventHandlerOpt)
onClick = opt "onClick"
onKeyDown :: Option ChipOption (EventHandlerOpt)
onKeyDown = opt "onKeyDown"
onRequestDelete :: Option ChipOption (EventHandlerOpt)
onRequestDelete = opt "onRequestDelete"
tabIndex :: Option ChipOption (Number)
tabIndex = opt "tabIndex"
