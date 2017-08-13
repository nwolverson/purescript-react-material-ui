module MaterialUI.ListItemIcon where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listItemIconClass :: ReactClass ListItemIconProps
foreign import data ListItemIconOption :: Type
newtype ListItemIconProps = ListItemIconProps Foreign
listItemIconProps :: Options ListItemIconOption -> ListItemIconProps
listItemIconProps = ListItemIconProps <<< options
listItemIcon :: Options ListItemIconOption -> Array ReactElement -> ReactElement
listItemIcon opts = createElement listItemIconClass (listItemIconProps opts)
classes :: Option ListItemIconOption (UnknownType)
classes = opt "classes" -- Object
children :: Option ListItemIconOption (UnknownType)
children = opt "children" -- Element
className :: Option ListItemIconOption (String)
className = opt "className"
