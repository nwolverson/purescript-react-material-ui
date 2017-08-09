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
children :: Option ListOption (Node)
children = opt "children"
insetSubheader :: Option ListOption (Boolean)
insetSubheader = opt "insetSubheader"
style :: Option ListOption (UnknownType)
style = opt "style" -- object
subheader :: Option ListOption (Node)
subheader = opt "subheader"
subheaderStyle :: Option ListOption (UnknownType)
subheaderStyle = opt "subheaderStyle" -- object
zDepth :: Option ListOption (UnknownType)
zDepth = opt "zDepth" -- custom
