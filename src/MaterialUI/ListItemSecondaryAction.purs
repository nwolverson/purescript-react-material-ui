module MaterialUI.ListItemSecondaryAction where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listItemSecondaryActionClass :: ReactClass ListItemSecondaryActionProps
foreign import data ListItemSecondaryActionOption :: Type
newtype ListItemSecondaryActionProps = ListItemSecondaryActionProps Foreign
listItemSecondaryActionProps :: Options ListItemSecondaryActionOption -> ListItemSecondaryActionProps
listItemSecondaryActionProps = ListItemSecondaryActionProps <<< options
listItemSecondaryAction :: Options ListItemSecondaryActionOption -> Array ReactElement -> ReactElement
listItemSecondaryAction opts = createElement listItemSecondaryActionClass (listItemSecondaryActionProps opts)
classes :: Option ListItemSecondaryActionOption (UnknownType)
classes = opt "classes" -- Object
children :: Option ListItemSecondaryActionOption (UnknownType)
children = opt "children" -- Element
className :: Option ListItemSecondaryActionOption (String)
className = opt "className"
