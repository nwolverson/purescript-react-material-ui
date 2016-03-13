module MaterialUI.GridTile where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import gridTileClass :: ReactClass GridTileProps
foreign import data GridTileOption :: *
newtype GridTileProps = GridTileProps Foreign
gridTileProps :: Options GridTileOption -> GridTileProps
gridTileProps = GridTileProps <<< options
gridTile :: Options GridTileOption -> Array ReactElement -> ReactElement
gridTile opts = createElement gridTileClass (gridTileProps opts)
actionIcon :: Option GridTileOption (ReactElement)
actionIcon = opt "actionIcon"
actionPosition :: Option GridTileOption (UnknownType)
actionPosition = opt "actionPosition" -- enum
children :: Option GridTileOption (Node)
children = opt "children"
cols :: Option GridTileOption (Number)
cols = opt "cols"
rootClass :: Option GridTileOption (UnknownType)
rootClass = opt "rootClass" -- union
rows :: Option GridTileOption (Number)
rows = opt "rows"
style :: Option GridTileOption (UnknownType)
style = opt "style" -- object
subtitle :: Option GridTileOption (Node)
subtitle = opt "subtitle"
title :: Option GridTileOption (Node)
title = opt "title"
titleBackground :: Option GridTileOption (String)
titleBackground = opt "titleBackground"
titlePosition :: Option GridTileOption (UnknownType)
titlePosition = opt "titlePosition" -- enum
