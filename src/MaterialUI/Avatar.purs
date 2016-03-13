module MaterialUI.Avatar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import avatarClass :: ReactClass AvatarProps
foreign import data AvatarOption :: *
newtype AvatarProps = AvatarProps Foreign
avatarProps :: Options AvatarOption -> AvatarProps
avatarProps = AvatarProps <<< options
avatar :: Options AvatarOption -> Array ReactElement -> ReactElement
avatar opts = createElement avatarClass (avatarProps opts)
backgroundColor :: Option AvatarOption (String)
backgroundColor = opt "backgroundColor"
children :: Option AvatarOption (Node)
children = opt "children"
className :: Option AvatarOption (String)
className = opt "className"
color :: Option AvatarOption (String)
color = opt "color"
icon :: Option AvatarOption (ReactElement)
icon = opt "icon"
size :: Option AvatarOption (Number)
size = opt "size"
src :: Option AvatarOption (String)
src = opt "src"
style :: Option AvatarOption (UnknownType)
style = opt "style" -- object
