module MaterialUI.NestedList where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import nestedListClass :: ReactClass NestedListProps
foreign import data NestedListOption :: *
newtype NestedListProps = NestedListProps Foreign
nestedListProps :: Options NestedListOption -> NestedListProps
nestedListProps = NestedListProps <<< options
nestedList :: Options NestedListOption -> Array ReactElement -> ReactElement
nestedList opts = createElement nestedListClass (nestedListProps opts)
children :: Option NestedListOption (Node)
children = opt "children"
nestedLevel :: Option NestedListOption (Number)
nestedLevel = opt "nestedLevel"
open :: Option NestedListOption (Boolean)
open = opt "open"
style :: Option NestedListOption (UnknownType)
style = opt "style" -- object
