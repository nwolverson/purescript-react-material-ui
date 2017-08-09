module MaterialUI.ToolbarSeparator where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import toolbarSeparatorClass :: ReactClass ToolbarSeparatorProps
foreign import data ToolbarSeparatorOption :: Type
newtype ToolbarSeparatorProps = ToolbarSeparatorProps Foreign
toolbarSeparatorProps :: Options ToolbarSeparatorOption -> ToolbarSeparatorProps
toolbarSeparatorProps = ToolbarSeparatorProps <<< options
toolbarSeparator :: Options ToolbarSeparatorOption -> Array ReactElement -> ReactElement
toolbarSeparator opts = createElement toolbarSeparatorClass (toolbarSeparatorProps opts)
className :: Option ToolbarSeparatorOption (String)
className = opt "className"
style :: Option ToolbarSeparatorOption (UnknownType)
style = opt "style" -- object
