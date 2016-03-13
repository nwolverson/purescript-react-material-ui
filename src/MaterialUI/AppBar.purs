module MaterialUI.AppBar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import appBarClass :: ReactClass AppBarProps
foreign import data AppBarOption :: *
newtype AppBarProps = AppBarProps Foreign
appBarProps :: Options AppBarOption -> AppBarProps
appBarProps = AppBarProps <<< options
appBar :: Options AppBarOption -> Array ReactElement -> ReactElement
appBar opts = createElement appBarClass (appBarProps opts)
children :: Option AppBarOption (Node)
children = opt "children"
className :: Option AppBarOption (String)
className = opt "className"
iconClassNameLeft :: Option AppBarOption (String)
iconClassNameLeft = opt "iconClassNameLeft"
iconClassNameRight :: Option AppBarOption (String)
iconClassNameRight = opt "iconClassNameRight"
iconElementLeft :: Option AppBarOption (ReactElement)
iconElementLeft = opt "iconElementLeft"
iconElementRight :: Option AppBarOption (ReactElement)
iconElementRight = opt "iconElementRight"
iconStyleRight :: Option AppBarOption (UnknownType)
iconStyleRight = opt "iconStyleRight" -- object
onLeftIconButtonTouchTap :: Option AppBarOption (EventHandlerOpt)
onLeftIconButtonTouchTap = opt "onLeftIconButtonTouchTap"
onRightIconButtonTouchTap :: Option AppBarOption (EventHandlerOpt)
onRightIconButtonTouchTap = opt "onRightIconButtonTouchTap"
onTitleTouchTap :: Option AppBarOption (EventHandlerOpt)
onTitleTouchTap = opt "onTitleTouchTap"
showMenuIconButton :: Option AppBarOption (Boolean)
showMenuIconButton = opt "showMenuIconButton"
style :: Option AppBarOption (UnknownType)
style = opt "style" -- object
title :: Option AppBarOption (Node)
title = opt "title"
titleStyle :: Option AppBarOption (UnknownType)
titleStyle = opt "titleStyle" -- object
zDepth :: Option AppBarOption (UnknownType)
zDepth = opt "zDepth" -- custom
