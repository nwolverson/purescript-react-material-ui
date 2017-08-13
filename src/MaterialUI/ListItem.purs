module MaterialUI.ListItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listItemClass :: ReactClass ListItemProps
foreign import data ListItemOption :: Type
newtype ListItemProps = ListItemProps Foreign
listItemProps :: Options ListItemOption -> ListItemProps
listItemProps = ListItemProps <<< options
listItem :: Options ListItemOption -> Array ReactElement -> ReactElement
listItem opts = createElement listItemClass (listItemProps opts)
button :: Option ListItemOption (Boolean)
button = opt "button"
classes :: Option ListItemOption (UnknownType)
classes = opt "classes" -- Object
component :: Option ListItemOption (UnknownType)
component = opt "component" -- union
dense :: Option ListItemOption (Boolean)
dense = opt "dense"
disabled :: Option ListItemOption (Boolean)
disabled = opt "disabled"
disableGutters :: Option ListItemOption (Boolean)
disableGutters = opt "disableGutters"
divider :: Option ListItemOption (Boolean)
divider = opt "divider"
children :: Option ListItemOption (UnknownType)
children = opt "children" -- Element
className :: Option ListItemOption (String)
className = opt "className"
