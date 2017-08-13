module MaterialUI.TableCell where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableCellClass :: ReactClass TableCellProps
foreign import data TableCellOption :: Type
newtype TableCellProps = TableCellProps Foreign
tableCellProps :: Options TableCellOption -> TableCellProps
tableCellProps = TableCellProps <<< options
tableCell :: Options TableCellOption -> Array ReactElement -> ReactElement
tableCell opts = createElement tableCellClass (tableCellProps opts)
checkbox :: Option TableCellOption (Boolean)
checkbox = opt "checkbox"
children :: Option TableCellOption (Node)
children = opt "children"
classes :: Option TableCellOption (UnknownType)
classes = opt "classes" -- object
className :: Option TableCellOption (String)
className = opt "className"
compact :: Option TableCellOption (Boolean)
compact = opt "compact"
disablePadding :: Option TableCellOption (Boolean)
disablePadding = opt "disablePadding"
numeric :: Option TableCellOption (Boolean)
numeric = opt "numeric"
