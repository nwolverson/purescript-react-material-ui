module MaterialUI.TableHeaderColumn where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableHeaderColumnClass :: ReactClass TableHeaderColumnProps
foreign import data TableHeaderColumnOption :: Type
newtype TableHeaderColumnProps = TableHeaderColumnProps Foreign
tableHeaderColumnProps :: Options TableHeaderColumnOption -> TableHeaderColumnProps
tableHeaderColumnProps = TableHeaderColumnProps <<< options
tableHeaderColumn :: Options TableHeaderColumnOption -> Array ReactElement -> ReactElement
tableHeaderColumn opts = createElement tableHeaderColumnClass (tableHeaderColumnProps opts)
children :: Option TableHeaderColumnOption (Node)
children = opt "children"
className :: Option TableHeaderColumnOption (String)
className = opt "className"
columnNumber :: Option TableHeaderColumnOption (Number)
columnNumber = opt "columnNumber"
hoverable :: Option TableHeaderColumnOption (Boolean)
hoverable = opt "hoverable"
onClick :: Option TableHeaderColumnOption (EventHandlerOpt)
onClick = opt "onClick"
onHover :: Option TableHeaderColumnOption (EventHandlerOpt)
onHover = opt "onHover"
onHoverExit :: Option TableHeaderColumnOption (EventHandlerOpt)
onHoverExit = opt "onHoverExit"
style :: Option TableHeaderColumnOption (UnknownType)
style = opt "style" -- object
tooltip :: Option TableHeaderColumnOption (String)
tooltip = opt "tooltip"
tooltipStyle :: Option TableHeaderColumnOption (UnknownType)
tooltipStyle = opt "tooltipStyle" -- object
