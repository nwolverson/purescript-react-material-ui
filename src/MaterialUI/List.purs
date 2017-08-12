module MaterialUI.List where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listClass :: ReactClass ListProps
foreign import data ListOption :: Type
newtype ListProps = ListProps Foreign
listProps :: Options ListOption -> ListProps
listProps = ListProps <<< options
list :: Options ListOption -> Array ReactElement -> ReactElement
list opts = createElement listClass (listProps opts)
component :: Option ListOption (UnknownType)
component = opt "component" -- union
classes :: Option ListOption (UnknownType)
classes = opt "classes" -- Object
dense :: Option ListOption (Boolean)
dense = opt "dense"
disablePadding :: Option ListOption (Boolean)
disablePadding = opt "disablePadding"
children :: Option ListOption (UnknownType)
children = opt "children" -- Element
className :: Option ListOption (String)
className = opt "className"
rootRef :: Option ListOption (UnknownType)
rootRef = opt "rootRef" -- Function
subheader :: Option ListOption (UnknownType)
subheader = opt "subheader" -- Element
