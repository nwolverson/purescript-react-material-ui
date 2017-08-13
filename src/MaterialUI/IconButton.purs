module MaterialUI.IconButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import iconButtonClass :: ReactClass IconButtonProps
foreign import data IconButtonOption :: Type
newtype IconButtonProps = IconButtonProps Foreign
iconButtonProps :: Options IconButtonOption -> IconButtonProps
iconButtonProps = IconButtonProps <<< options
iconButton :: Options IconButtonOption -> Array ReactElement -> ReactElement
iconButton opts = createElement iconButtonClass (iconButtonProps opts)
children :: Option IconButtonOption (Node)
children = opt "children"
className :: Option IconButtonOption (String)
className = opt "className"
disableTouchRipple :: Option IconButtonOption (Boolean)
disableTouchRipple = opt "disableTouchRipple"
disabled :: Option IconButtonOption (Boolean)
disabled = opt "disabled"
hoveredStyle :: Option IconButtonOption (UnknownType)
hoveredStyle = opt "hoveredStyle" -- object
href :: Option IconButtonOption (String)
href = opt "href"
iconClassName :: Option IconButtonOption (String)
iconClassName = opt "iconClassName"
iconStyle :: Option IconButtonOption (UnknownType)
iconStyle = opt "iconStyle" -- object
onBlur :: Option IconButtonOption (EventHandlerOpt)
onBlur = opt "onBlur"
onClick :: Option IconButtonOption (EventHandlerOpt)
onClick = opt "onClick"
onFocus :: Option IconButtonOption (EventHandlerOpt)
onFocus = opt "onFocus"
onKeyboardFocus :: Option IconButtonOption (EventHandlerOpt)
onKeyboardFocus = opt "onKeyboardFocus"
onMouseEnter :: Option IconButtonOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option IconButtonOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onMouseOut :: Option IconButtonOption (EventHandlerOpt)
onMouseOut = opt "onMouseOut"
onTouchStart :: Option IconButtonOption (EventHandlerOpt)
onTouchStart = opt "onTouchStart"
style :: Option IconButtonOption (UnknownType)
style = opt "style" -- object
tooltip :: Option IconButtonOption (Node)
tooltip = opt "tooltip"
tooltipPosition :: Option IconButtonOption (UnknownType)
tooltipPosition = opt "tooltipPosition" -- custom
tooltipStyles :: Option IconButtonOption (UnknownType)
tooltipStyles = opt "tooltipStyles" -- object
touch :: Option IconButtonOption (Boolean)
touch = opt "touch"
