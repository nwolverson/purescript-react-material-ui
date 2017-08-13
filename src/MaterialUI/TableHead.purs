module MaterialUI.TableHead where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableHeadClass :: ReactClass TableHeadProps
foreign import data TableHeadOption :: Type
newtype TableHeadProps = TableHeadProps Foreign
tableHeadProps :: Options TableHeadOption -> TableHeadProps
tableHeadProps = TableHeadProps <<< options
tableHead :: Options TableHeadOption -> Array ReactElement -> ReactElement
tableHead opts = createElement tableHeadClass (tableHeadProps opts)
children :: Option TableHeadOption (Node)
children = opt "children"
classes :: Option TableHeadOption (UnknownType)
classes = opt "classes" -- object
className :: Option TableHeadOption (String)
className = opt "className"
