module MaterialUI.Table where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableClass :: ReactClass TableProps
foreign import data TableOption :: Type
newtype TableProps = TableProps Foreign
tableProps :: Options TableOption -> TableProps
tableProps = TableProps <<< options
table :: Options TableOption -> Array ReactElement -> ReactElement
table opts = createElement tableClass (tableProps opts)
children :: Option TableOption (Node)
children = opt "children"
classes :: Option TableOption (UnknownType)
classes = opt "classes" -- object
className :: Option TableOption (String)
className = opt "className"
