module MaterialUI.AppBar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import appBarClass :: ReactClass AppBarProps
foreign import data AppBarOption :: Type
newtype AppBarProps = AppBarProps Foreign
appBarProps :: Options AppBarOption -> AppBarProps
appBarProps = AppBarProps <<< options
appBar :: Options AppBarOption -> Array ReactElement -> ReactElement
appBar opts = createElement appBarClass (appBarProps opts)
classes :: Option AppBarOption (UnknownType)
classes = opt "classes" -- Object
color :: Option AppBarOption (UnknownType)
color = opt "color" -- union
position :: Option AppBarOption (UnknownType)
position = opt "position" -- union
children :: Option AppBarOption (UnknownType)
children = opt "children" -- Element
className :: Option AppBarOption (String)
className = opt "className"
