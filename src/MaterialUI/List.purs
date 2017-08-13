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
style :: Option ListOption (UnknownType)
style = opt "style" -- object
