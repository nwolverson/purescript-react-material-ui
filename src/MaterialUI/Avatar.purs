module MaterialUI.Avatar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import avatarClass :: ReactClass AvatarProps
foreign import data AvatarOption :: Type
newtype AvatarProps = AvatarProps Foreign
avatarProps :: Options AvatarOption -> AvatarProps
avatarProps = AvatarProps <<< options
avatar :: Options AvatarOption -> Array ReactElement -> ReactElement
avatar opts = createElement avatarClass (avatarProps opts)
classes :: Option AvatarOption (UnknownType)
classes = opt "classes" -- Object
component :: Option AvatarOption (UnknownType)
component = opt "component" -- union
alt :: Option AvatarOption (String)
alt = opt "alt"
children :: Option AvatarOption (UnknownType)
children = opt "children" -- Element
childrenClassName :: Option AvatarOption (String)
childrenClassName = opt "childrenClassName"
className :: Option AvatarOption (String)
className = opt "className"
imgProps :: Option AvatarOption (UnknownType)
imgProps = opt "imgProps" -- Object
sizes :: Option AvatarOption (String)
sizes = opt "sizes"
src :: Option AvatarOption (String)
src = opt "src"
srcSet :: Option AvatarOption (String)
srcSet = opt "srcSet"
