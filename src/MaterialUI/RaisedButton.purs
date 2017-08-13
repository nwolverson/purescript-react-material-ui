module MaterialUI.RaisedButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import raisedButtonClass :: ReactClass RaisedButtonProps
foreign import data RaisedButtonOption :: Type
newtype RaisedButtonProps = RaisedButtonProps Foreign
raisedButtonProps :: Options RaisedButtonOption -> RaisedButtonProps
raisedButtonProps = RaisedButtonProps <<< options
raisedButton :: Options RaisedButtonOption -> Array ReactElement -> ReactElement
raisedButton opts = createElement raisedButtonClass (raisedButtonProps opts)
backgroundColor :: Option RaisedButtonOption (String)
backgroundColor = opt "backgroundColor"
buttonStyle :: Option RaisedButtonOption (UnknownType)
buttonStyle = opt "buttonStyle" -- object
children :: Option RaisedButtonOption (Node)
children = opt "children"
className :: Option RaisedButtonOption (String)
className = opt "className"
containerElement :: Option RaisedButtonOption (UnknownType)
containerElement = opt "containerElement" -- union
disableTouchRipple :: Option RaisedButtonOption (Boolean)
disableTouchRipple = opt "disableTouchRipple"
disabled :: Option RaisedButtonOption (Boolean)
disabled = opt "disabled"
disabledBackgroundColor :: Option RaisedButtonOption (String)
disabledBackgroundColor = opt "disabledBackgroundColor"
disabledLabelColor :: Option RaisedButtonOption (String)
disabledLabelColor = opt "disabledLabelColor"
fullWidth :: Option RaisedButtonOption (Boolean)
fullWidth = opt "fullWidth"
href :: Option RaisedButtonOption (String)
href = opt "href"
icon :: Option RaisedButtonOption (Node)
icon = opt "icon"
label :: Option RaisedButtonOption (UnknownType)
label = opt "label" -- custom
labelColor :: Option RaisedButtonOption (String)
labelColor = opt "labelColor"
labelPosition :: Option RaisedButtonOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
labelStyle :: Option RaisedButtonOption (UnknownType)
labelStyle = opt "labelStyle" -- object
onClick :: Option RaisedButtonOption (EventHandlerOpt)
onClick = opt "onClick"
onMouseDown :: Option RaisedButtonOption (EventHandlerOpt)
onMouseDown = opt "onMouseDown"
onMouseEnter :: Option RaisedButtonOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option RaisedButtonOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onMouseUp :: Option RaisedButtonOption (EventHandlerOpt)
onMouseUp = opt "onMouseUp"
onTouchEnd :: Option RaisedButtonOption (EventHandlerOpt)
onTouchEnd = opt "onTouchEnd"
onTouchStart :: Option RaisedButtonOption (EventHandlerOpt)
onTouchStart = opt "onTouchStart"
overlayStyle :: Option RaisedButtonOption (UnknownType)
overlayStyle = opt "overlayStyle" -- object
primary :: Option RaisedButtonOption (Boolean)
primary = opt "primary"
rippleStyle :: Option RaisedButtonOption (UnknownType)
rippleStyle = opt "rippleStyle" -- object
secondary :: Option RaisedButtonOption (Boolean)
secondary = opt "secondary"
style :: Option RaisedButtonOption (UnknownType)
style = opt "style" -- object
