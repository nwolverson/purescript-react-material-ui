module MaterialUI.ListSubheader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listSubheaderClass :: ReactClass ListSubheaderProps
foreign import data ListSubheaderOption :: Type
newtype ListSubheaderProps = ListSubheaderProps Foreign
listSubheaderProps :: Options ListSubheaderOption -> ListSubheaderProps
listSubheaderProps = ListSubheaderProps <<< options
listSubheader :: Options ListSubheaderOption -> Array ReactElement -> ReactElement
listSubheader opts = createElement listSubheaderClass (listSubheaderProps opts)
children :: Option ListSubheaderOption (Node)
children = opt "children"
classes :: Option ListSubheaderOption (UnknownType)
classes = opt "classes" -- object
className :: Option ListSubheaderOption (String)
className = opt "className"
color :: Option ListSubheaderOption (UnknownType)
color = opt "color" -- enum
inset :: Option ListSubheaderOption (Boolean)
inset = opt "inset"
