module MaterialUI.ButtonBase where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import buttonBaseClass :: ReactClass ButtonBaseProps
foreign import data ButtonBaseOption :: Type
newtype ButtonBaseProps = ButtonBaseProps Foreign
buttonBaseProps :: Options ButtonBaseOption -> ButtonBaseProps
buttonBaseProps = ButtonBaseProps <<< options
buttonBase :: Options ButtonBaseOption -> Array ReactElement -> ReactElement
buttonBase opts = createElement buttonBaseClass (buttonBaseProps opts)
centerRipple :: Option ButtonBaseOption (Boolean)
centerRipple = opt "centerRipple"
classes :: Option ButtonBaseOption (UnknownType)
classes = opt "classes" -- Object
focusRipple :: Option ButtonBaseOption (Boolean)
focusRipple = opt "focusRipple"
disableRipple :: Option ButtonBaseOption (Boolean)
disableRipple = opt "disableRipple"
tabIndex :: Option ButtonBaseOption (String)
tabIndex = opt "tabIndex"
type' :: Option ButtonBaseOption (String)
type' = opt "type"
children :: Option ButtonBaseOption (UnknownType)
children = opt "children" -- Element
className :: Option ButtonBaseOption (String)
className = opt "className"
component :: Option ButtonBaseOption (UnknownType)
component = opt "component" -- union
disabled :: Option ButtonBaseOption (Boolean)
disabled = opt "disabled"
keyboardFocusedClassName :: Option ButtonBaseOption (String)
keyboardFocusedClassName = opt "keyboardFocusedClassName"
onBlur :: Option ButtonBaseOption (UnknownType)
onBlur = opt "onBlur" -- Function
onClick :: Option ButtonBaseOption (UnknownType)
onClick = opt "onClick" -- Function
onFocus :: Option ButtonBaseOption (UnknownType)
onFocus = opt "onFocus" -- Function
onKeyboardFocus :: Option ButtonBaseOption (UnknownType)
onKeyboardFocus = opt "onKeyboardFocus" -- Function
onKeyDown :: Option ButtonBaseOption (UnknownType)
onKeyDown = opt "onKeyDown" -- Function
onKeyUp :: Option ButtonBaseOption (UnknownType)
onKeyUp = opt "onKeyUp" -- Function
onMouseDown :: Option ButtonBaseOption (UnknownType)
onMouseDown = opt "onMouseDown" -- Function
onMouseLeave :: Option ButtonBaseOption (UnknownType)
onMouseLeave = opt "onMouseLeave" -- Function
onMouseUp :: Option ButtonBaseOption (UnknownType)
onMouseUp = opt "onMouseUp" -- Function
onTouchEnd :: Option ButtonBaseOption (UnknownType)
onTouchEnd = opt "onTouchEnd" -- Function
onTouchStart :: Option ButtonBaseOption (UnknownType)
onTouchStart = opt "onTouchStart" -- Function
role :: Option ButtonBaseOption (String)
role = opt "role"
