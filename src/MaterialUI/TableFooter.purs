module MaterialUI.TableFooter where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tableFooterClass :: ReactClass TableFooterProps
foreign import data TableFooterOption :: Type
newtype TableFooterProps = TableFooterProps Foreign
tableFooterProps :: Options TableFooterOption -> TableFooterProps
tableFooterProps = TableFooterProps <<< options
tableFooter :: Options TableFooterOption -> Array ReactElement -> ReactElement
tableFooter opts = createElement tableFooterClass (tableFooterProps opts)
adjustForCheckbox :: Option TableFooterOption (Boolean)
adjustForCheckbox = opt "adjustForCheckbox"
children :: Option TableFooterOption (Node)
children = opt "children"
className :: Option TableFooterOption (String)
className = opt "className"
style :: Option TableFooterOption (UnknownType)
style = opt "style" -- object
