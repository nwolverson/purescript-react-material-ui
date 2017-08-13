module MaterialUI.ListItemAvatar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listItemAvatarClass :: ReactClass ListItemAvatarProps
foreign import data ListItemAvatarOption :: Type
newtype ListItemAvatarProps = ListItemAvatarProps Foreign
listItemAvatarProps :: Options ListItemAvatarOption -> ListItemAvatarProps
listItemAvatarProps = ListItemAvatarProps <<< options
listItemAvatar :: Options ListItemAvatarOption -> Array ReactElement -> ReactElement
listItemAvatar opts = createElement listItemAvatarClass (listItemAvatarProps opts)
classes :: Option ListItemAvatarOption (UnknownType)
classes = opt "classes" -- Object
children :: Option ListItemAvatarOption (UnknownType)
children = opt "children" -- Element
className :: Option ListItemAvatarOption (String)
className = opt "className"
