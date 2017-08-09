module MaterialUI.TableHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableHeaderClass :: ReactClass TableHeaderProps
foreign import data TableHeaderOption :: Type
newtype TableHeaderProps = TableHeaderProps Foreign
tableHeaderProps :: Options TableHeaderOption -> TableHeaderProps
tableHeaderProps = TableHeaderProps <<< options
tableHeader :: Options TableHeaderOption -> Array ReactElement -> ReactElement
tableHeader opts = createElement tableHeaderClass (tableHeaderProps opts)
adjustForCheckbox :: Option TableHeaderOption (Boolean)
adjustForCheckbox = opt "adjustForCheckbox"
children :: Option TableHeaderOption (Node)
children = opt "children"
className :: Option TableHeaderOption (String)
className = opt "className"
displaySelectAll :: Option TableHeaderOption (Boolean)
displaySelectAll = opt "displaySelectAll"
enableSelectAll :: Option TableHeaderOption (Boolean)
enableSelectAll = opt "enableSelectAll"
onSelectAll :: Option TableHeaderOption (EventHandlerOpt)
onSelectAll = opt "onSelectAll"
selectAllSelected :: Option TableHeaderOption (Boolean)
selectAllSelected = opt "selectAllSelected"
style :: Option TableHeaderOption (UnknownType)
style = opt "style" -- object
