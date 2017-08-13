module MaterialUI.TableSortLabel where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableSortLabelClass :: ReactClass TableSortLabelProps
foreign import data TableSortLabelOption :: Type
newtype TableSortLabelProps = TableSortLabelProps Foreign
tableSortLabelProps :: Options TableSortLabelOption -> TableSortLabelProps
tableSortLabelProps = TableSortLabelProps <<< options
tableSortLabel :: Options TableSortLabelOption -> Array ReactElement -> ReactElement
tableSortLabel opts = createElement tableSortLabelClass (tableSortLabelProps opts)
active :: Option TableSortLabelOption (Boolean)
active = opt "active"
children :: Option TableSortLabelOption (Node)
children = opt "children"
classes :: Option TableSortLabelOption (UnknownType)
classes = opt "classes" -- object
className :: Option TableSortLabelOption (String)
className = opt "className"
direction :: Option TableSortLabelOption (UnknownType)
direction = opt "direction" -- enum
