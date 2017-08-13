module MaterialUI.FlatButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import flatButtonClass :: ReactClass FlatButtonProps
foreign import data FlatButtonOption :: Type
newtype FlatButtonProps = FlatButtonProps Foreign
flatButtonProps :: Options FlatButtonOption -> FlatButtonProps
flatButtonProps = FlatButtonProps <<< options
flatButton :: Options FlatButtonOption -> Array ReactElement -> ReactElement
flatButton opts = createElement flatButtonClass (flatButtonProps opts)
backgroundColor :: Option FlatButtonOption (String)
backgroundColor = opt "backgroundColor"
children :: Option FlatButtonOption (Node)
children = opt "children"
className :: Option FlatButtonOption (String)
className = opt "className"
containerElement :: Option FlatButtonOption (UnknownType)
containerElement = opt "containerElement" -- union
disableTouchRipple :: Option FlatButtonOption (Boolean)
disableTouchRipple = opt "disableTouchRipple"
disabled :: Option FlatButtonOption (Boolean)
disabled = opt "disabled"
fullWidth :: Option FlatButtonOption (Boolean)
fullWidth = opt "fullWidth"
hoverColor :: Option FlatButtonOption (String)
hoverColor = opt "hoverColor"
href :: Option FlatButtonOption (String)
href = opt "href"
icon :: Option FlatButtonOption (Node)
icon = opt "icon"
label :: Option FlatButtonOption (UnknownType)
label = opt "label" -- custom
labelPosition :: Option FlatButtonOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
labelStyle :: Option FlatButtonOption (UnknownType)
labelStyle = opt "labelStyle" -- object
onClick :: Option FlatButtonOption (EventHandlerOpt)
onClick = opt "onClick"
onKeyboardFocus :: Option FlatButtonOption (EventHandlerOpt)
onKeyboardFocus = opt "onKeyboardFocus"
onMouseEnter :: Option FlatButtonOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option FlatButtonOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onTouchStart :: Option FlatButtonOption (EventHandlerOpt)
onTouchStart = opt "onTouchStart"
primary :: Option FlatButtonOption (Boolean)
primary = opt "primary"
rippleColor :: Option FlatButtonOption (String)
rippleColor = opt "rippleColor"
secondary :: Option FlatButtonOption (Boolean)
secondary = opt "secondary"
style :: Option FlatButtonOption (UnknownType)
style = opt "style" -- object
