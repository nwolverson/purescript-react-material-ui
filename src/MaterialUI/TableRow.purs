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
classes :: Option TableRowOption (UnknownType)
classes = opt "classes" -- object
className :: Option TableRowOption (String)
className = opt "className"
hover :: Option TableRowOption (Boolean)
hover = opt "hover"
selected :: Option TableRowOption (Boolean)
selected = opt "selected"
