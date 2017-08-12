module MaterialUI.GridList where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import gridListClass :: ReactClass GridListProps
foreign import data GridListOption :: Type
newtype GridListProps = GridListProps Foreign
gridListProps :: Options GridListOption -> GridListProps
gridListProps = GridListProps <<< options
gridList :: Options GridListOption -> Array ReactElement -> ReactElement
gridList opts = createElement gridListClass (gridListProps opts)
cellHeight :: Option GridListOption (UnknownType)
cellHeight = opt "cellHeight" -- union
children :: Option GridListOption (Node)
children = opt "children"
classes :: Option GridListOption (UnknownType)
classes = opt "classes" -- object
className :: Option GridListOption (String)
className = opt "className"
cols :: Option GridListOption (Number)
cols = opt "cols"
component :: Option GridListOption (UnknownType)
component = opt "component" -- union
spacing :: Option GridListOption (Number)
spacing = opt "spacing"
style :: Option GridListOption (UnknownType)
style = opt "style" -- object
