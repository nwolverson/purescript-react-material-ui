module MaterialUI.GridList where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import gridListClass :: ReactClass GridListProps
foreign import data GridListOption :: *
newtype GridListProps = GridListProps Foreign
gridListProps :: Options GridListOption -> GridListProps
gridListProps = GridListProps <<< options
gridList :: Options GridListOption -> Array ReactElement -> ReactElement
gridList opts = createElement gridListClass (gridListProps opts)
cellHeight :: Option GridListOption (Number)
cellHeight = opt "cellHeight"
children :: Option GridListOption (Node)
children = opt "children"
cols :: Option GridListOption (Number)
cols = opt "cols"
padding :: Option GridListOption (Number)
padding = opt "padding"
style :: Option GridListOption (UnknownType)
style = opt "style" -- object
