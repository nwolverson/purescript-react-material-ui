module MaterialUI.TableRowColumn where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableRowColumnClass :: ReactClass TableRowColumnProps
foreign import data TableRowColumnOption :: *
newtype TableRowColumnProps = TableRowColumnProps Foreign
tableRowColumnProps :: Options TableRowColumnOption -> TableRowColumnProps
tableRowColumnProps = TableRowColumnProps <<< options
tableRowColumn :: Options TableRowColumnOption -> Array ReactElement -> ReactElement
tableRowColumn opts = createElement tableRowColumnClass (tableRowColumnProps opts)
children :: Option TableRowColumnOption (Node)
children = opt "children"
className :: Option TableRowColumnOption (String)
className = opt "className"
columnNumber :: Option TableRowColumnOption (Number)
columnNumber = opt "columnNumber"
hoverable :: Option TableRowColumnOption (Boolean)
hoverable = opt "hoverable"
key :: Option TableRowColumnOption (String)
key = opt "key"
onClick :: Option TableRowColumnOption (EventHandlerOpt)
onClick = opt "onClick"
onHover :: Option TableRowColumnOption (EventHandlerOpt)
onHover = opt "onHover"
onHoverExit :: Option TableRowColumnOption (EventHandlerOpt)
onHoverExit = opt "onHoverExit"
style :: Option TableRowColumnOption (UnknownType)
style = opt "style" -- object
