module MaterialUI.ListDivider where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listDividerClass :: ReactClass ListDividerProps
foreign import data ListDividerOption :: *
newtype ListDividerProps = ListDividerProps Foreign
listDividerProps :: Options ListDividerOption -> ListDividerProps
listDividerProps = ListDividerProps <<< options
listDivider :: Options ListDividerOption -> Array ReactElement -> ReactElement
listDivider opts = createElement listDividerClass (listDividerProps opts)
