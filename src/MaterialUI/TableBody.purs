module MaterialUI.TableBody where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableBodyClass :: ReactClass TableBodyProps
foreign import data TableBodyOption :: Type
newtype TableBodyProps = TableBodyProps Foreign
tableBodyProps :: Options TableBodyOption -> TableBodyProps
tableBodyProps = TableBodyProps <<< options
tableBody :: Options TableBodyOption -> Array ReactElement -> ReactElement
tableBody opts = createElement tableBodyClass (tableBodyProps opts)
allRowsSelected :: Option TableBodyOption (Boolean)
allRowsSelected = opt "allRowsSelected"
children :: Option TableBodyOption (Node)
children = opt "children"
className :: Option TableBodyOption (String)
className = opt "className"
deselectOnClickaway :: Option TableBodyOption (Boolean)
deselectOnClickaway = opt "deselectOnClickaway"
displayRowCheckbox :: Option TableBodyOption (Boolean)
displayRowCheckbox = opt "displayRowCheckbox"
multiSelectable :: Option TableBodyOption (Boolean)
multiSelectable = opt "multiSelectable"
onCellClick :: Option TableBodyOption (EventHandlerOpt)
onCellClick = opt "onCellClick"
onCellHover :: Option TableBodyOption (EventHandlerOpt)
onCellHover = opt "onCellHover"
onCellHoverExit :: Option TableBodyOption (EventHandlerOpt)
onCellHoverExit = opt "onCellHoverExit"
onRowHover :: Option TableBodyOption (EventHandlerOpt)
onRowHover = opt "onRowHover"
onRowHoverExit :: Option TableBodyOption (EventHandlerOpt)
onRowHoverExit = opt "onRowHoverExit"
onRowSelection :: Option TableBodyOption (EventHandlerOpt)
onRowSelection = opt "onRowSelection"
preScanRows :: Option TableBodyOption (Boolean)
preScanRows = opt "preScanRows"
selectable :: Option TableBodyOption (Boolean)
selectable = opt "selectable"
showRowHover :: Option TableBodyOption (Boolean)
showRowHover = opt "showRowHover"
stripedRows :: Option TableBodyOption (Boolean)
stripedRows = opt "stripedRows"
style :: Option TableBodyOption (UnknownType)
style = opt "style" -- object
