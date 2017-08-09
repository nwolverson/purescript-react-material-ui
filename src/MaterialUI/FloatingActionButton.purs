module MaterialUI.FloatingActionButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import floatingActionButtonClass :: ReactClass FloatingActionButtonProps
foreign import data FloatingActionButtonOption :: Type
newtype FloatingActionButtonProps = FloatingActionButtonProps Foreign
floatingActionButtonProps :: Options FloatingActionButtonOption -> FloatingActionButtonProps
floatingActionButtonProps = FloatingActionButtonProps <<< options
floatingActionButton :: Options FloatingActionButtonOption -> Array ReactElement -> ReactElement
floatingActionButton opts = createElement floatingActionButtonClass (floatingActionButtonProps opts)
backgroundColor :: Option FloatingActionButtonOption (String)
backgroundColor = opt "backgroundColor"
children :: Option FloatingActionButtonOption (Node)
children = opt "children"
disabled :: Option FloatingActionButtonOption (Boolean)
disabled = opt "disabled"
disabledColor :: Option FloatingActionButtonOption (String)
disabledColor = opt "disabledColor"
href :: Option FloatingActionButtonOption (String)
href = opt "href"
iconClassName :: Option FloatingActionButtonOption (String)
iconClassName = opt "iconClassName"
iconStyle :: Option FloatingActionButtonOption (UnknownType)
iconStyle = opt "iconStyle" -- object
linkButton :: Option FloatingActionButtonOption (Boolean)
linkButton = opt "linkButton"
mini :: Option FloatingActionButtonOption (Boolean)
mini = opt "mini"
onMouseDown :: Option FloatingActionButtonOption (EventHandlerOpt)
onMouseDown = opt "onMouseDown"
onMouseEnter :: Option FloatingActionButtonOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option FloatingActionButtonOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onMouseUp :: Option FloatingActionButtonOption (EventHandlerOpt)
onMouseUp = opt "onMouseUp"
onTouchEnd :: Option FloatingActionButtonOption (EventHandlerOpt)
onTouchEnd = opt "onTouchEnd"
onTouchStart :: Option FloatingActionButtonOption (EventHandlerOpt)
onTouchStart = opt "onTouchStart"
secondary :: Option FloatingActionButtonOption (Boolean)
secondary = opt "secondary"
style :: Option FloatingActionButtonOption (UnknownType)
style = opt "style" -- object
