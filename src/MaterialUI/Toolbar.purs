module MaterialUI.Toolbar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import toolbarClass :: ReactClass ToolbarProps
foreign import data ToolbarOption :: Type
newtype ToolbarProps = ToolbarProps Foreign
toolbarProps :: Options ToolbarOption -> ToolbarProps
toolbarProps = ToolbarProps <<< options
toolbar :: Options ToolbarOption -> Array ReactElement -> ReactElement
toolbar opts = createElement toolbarClass (toolbarProps opts)
children :: Option ToolbarOption (Node)
children = opt "children"
className :: Option ToolbarOption (String)
className = opt "className"
noGutter :: Option ToolbarOption (Boolean)
noGutter = opt "noGutter"
style :: Option ToolbarOption (UnknownType)
style = opt "style" -- object
