module MaterialUI.IconMenu where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import iconMenuClass :: ReactClass IconMenuProps
foreign import data IconMenuOption :: Type
newtype IconMenuProps = IconMenuProps Foreign
iconMenuProps :: Options IconMenuOption -> IconMenuProps
iconMenuProps = IconMenuProps <<< options
iconMenu :: Options IconMenuOption -> Array ReactElement -> ReactElement
iconMenu opts = createElement iconMenuClass (iconMenuProps opts)
anchorOrigin :: Option IconMenuOption (UnknownType)
anchorOrigin = opt "anchorOrigin" -- custom
animated :: Option IconMenuOption (Boolean)
animated = opt "animated"
animation :: Option IconMenuOption (EventHandlerOpt)
animation = opt "animation"
children :: Option IconMenuOption (Node)
children = opt "children"
className :: Option IconMenuOption (String)
className = opt "className"
iconButtonElement :: Option IconMenuOption (ReactElement)
iconButtonElement = opt "iconButtonElement"
iconStyle :: Option IconMenuOption (UnknownType)
iconStyle = opt "iconStyle" -- object
listStyle :: Option IconMenuOption (UnknownType)
listStyle = opt "listStyle" -- object
menuStyle :: Option IconMenuOption (UnknownType)
menuStyle = opt "menuStyle" -- object
multiple :: Option IconMenuOption (Boolean)
multiple = opt "multiple"
onClick :: Option IconMenuOption (EventHandlerOpt)
onClick = opt "onClick"
onItemTouchTap :: Option IconMenuOption (EventHandlerOpt)
onItemTouchTap = opt "onItemTouchTap"
onKeyboardFocus :: Option IconMenuOption (EventHandlerOpt)
onKeyboardFocus = opt "onKeyboardFocus"
onMouseDown :: Option IconMenuOption (EventHandlerOpt)
onMouseDown = opt "onMouseDown"
onMouseEnter :: Option IconMenuOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option IconMenuOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onMouseUp :: Option IconMenuOption (EventHandlerOpt)
onMouseUp = opt "onMouseUp"
onRequestChange :: Option IconMenuOption (EventHandlerOpt)
onRequestChange = opt "onRequestChange"
open :: Option IconMenuOption (Boolean)
open = opt "open"
style :: Option IconMenuOption (UnknownType)
style = opt "style" -- object
targetOrigin :: Option IconMenuOption (UnknownType)
targetOrigin = opt "targetOrigin" -- custom
touchTapCloseDelay :: Option IconMenuOption (Number)
touchTapCloseDelay = opt "touchTapCloseDelay"
useLayerForClickAway :: Option IconMenuOption (Boolean)
useLayerForClickAway = opt "useLayerForClickAway"
