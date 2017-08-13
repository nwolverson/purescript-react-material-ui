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
allRowsSelected :: Option TableOption (Boolean)
allRowsSelected = opt "allRowsSelected"
bodyStyle :: Option TableOption (UnknownType)
bodyStyle = opt "bodyStyle" -- object
children :: Option TableOption (Node)
children = opt "children"
className :: Option TableOption (String)
className = opt "className"
fixedFooter :: Option TableOption (Boolean)
fixedFooter = opt "fixedFooter"
fixedHeader :: Option TableOption (Boolean)
fixedHeader = opt "fixedHeader"
footerStyle :: Option TableOption (UnknownType)
footerStyle = opt "footerStyle" -- object
headerStyle :: Option TableOption (UnknownType)
headerStyle = opt "headerStyle" -- object
height :: Option TableOption (String)
height = opt "height"
multiSelectable :: Option TableOption (Boolean)
multiSelectable = opt "multiSelectable"
onCellClick :: Option TableOption (EventHandlerOpt)
onCellClick = opt "onCellClick"
onCellHover :: Option TableOption (EventHandlerOpt)
onCellHover = opt "onCellHover"
onCellHoverExit :: Option TableOption (EventHandlerOpt)
onCellHoverExit = opt "onCellHoverExit"
onRowHover :: Option TableOption (EventHandlerOpt)
onRowHover = opt "onRowHover"
onRowHoverExit :: Option TableOption (EventHandlerOpt)
onRowHoverExit = opt "onRowHoverExit"
onRowSelection :: Option TableOption (EventHandlerOpt)
onRowSelection = opt "onRowSelection"
selectable :: Option TableOption (Boolean)
selectable = opt "selectable"
style :: Option TableOption (UnknownType)
style = opt "style" -- object
wrapperStyle :: Option TableOption (UnknownType)
wrapperStyle = opt "wrapperStyle" -- object
