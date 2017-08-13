module MaterialUI.TableRow where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableRowClass :: ReactClass TableRowProps
foreign import data TableRowOption :: Type
newtype TableRowProps = TableRowProps Foreign
tableRowProps :: Options TableRowOption -> TableRowProps
tableRowProps = TableRowProps <<< options
tableRow :: Options TableRowOption -> Array ReactElement -> ReactElement
tableRow opts = createElement tableRowClass (tableRowProps opts)
children :: Option TableRowOption (Node)
children = opt "children"
className :: Option TableRowOption (String)
className = opt "className"
displayBorder :: Option TableRowOption (Boolean)
displayBorder = opt "displayBorder"
hoverable :: Option TableRowOption (Boolean)
hoverable = opt "hoverable"
hovered :: Option TableRowOption (Boolean)
hovered = opt "hovered"
onCellClick :: Option TableRowOption (EventHandlerOpt)
onCellClick = opt "onCellClick"
onCellHover :: Option TableRowOption (EventHandlerOpt)
onCellHover = opt "onCellHover"
onCellHoverExit :: Option TableRowOption (EventHandlerOpt)
onCellHoverExit = opt "onCellHoverExit"
onRowClick :: Option TableRowOption (EventHandlerOpt)
onRowClick = opt "onRowClick"
onRowHover :: Option TableRowOption (EventHandlerOpt)
onRowHover = opt "onRowHover"
onRowHoverExit :: Option TableRowOption (EventHandlerOpt)
onRowHoverExit = opt "onRowHoverExit"
rowNumber :: Option TableRowOption (Number)
rowNumber = opt "rowNumber"
selectable :: Option TableRowOption (Boolean)
selectable = opt "selectable"
selected :: Option TableRowOption (Boolean)
selected = opt "selected"
striped :: Option TableRowOption (Boolean)
striped = opt "striped"
style :: Option TableRowOption (UnknownType)
style = opt "style" -- object
