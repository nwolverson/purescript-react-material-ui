module MaterialUI.ToolbarTitle where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import toolbarTitleClass :: ReactClass ToolbarTitleProps
foreign import data ToolbarTitleOption :: *
newtype ToolbarTitleProps = ToolbarTitleProps Foreign
toolbarTitleProps :: Options ToolbarTitleOption -> ToolbarTitleProps
toolbarTitleProps = ToolbarTitleProps <<< options
toolbarTitle :: Options ToolbarTitleOption -> Array ReactElement -> ReactElement
toolbarTitle opts = createElement toolbarTitleClass (toolbarTitleProps opts)
className :: Option ToolbarTitleOption (String)
className = opt "className"
style :: Option ToolbarTitleOption (UnknownType)
style = opt "style" -- object
text :: Option ToolbarTitleOption (String)
text = opt "text"
