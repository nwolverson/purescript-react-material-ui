module MaterialUI.ListItemText where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listItemTextClass :: ReactClass ListItemTextProps
foreign import data ListItemTextOption :: Type
newtype ListItemTextProps = ListItemTextProps Foreign
listItemTextProps :: Options ListItemTextOption -> ListItemTextProps
listItemTextProps = ListItemTextProps <<< options
listItemText :: Options ListItemTextOption -> Array ReactElement -> ReactElement
listItemText opts = createElement listItemTextClass (listItemTextProps opts)
classes :: Option ListItemTextOption (UnknownType)
classes = opt "classes" -- object
className :: Option ListItemTextOption (String)
className = opt "className"
disableTypography :: Option ListItemTextOption (Boolean)
disableTypography = opt "disableTypography"
inset :: Option ListItemTextOption (Boolean)
inset = opt "inset"
primary :: Option ListItemTextOption (Node)
primary = opt "primary"
secondary :: Option ListItemTextOption (Node)
secondary = opt "secondary"
