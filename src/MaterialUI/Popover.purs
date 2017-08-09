module MaterialUI.Popover where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import popoverClass :: ReactClass PopoverProps
foreign import data PopoverOption :: Type
newtype PopoverProps = PopoverProps Foreign
popoverProps :: Options PopoverOption -> PopoverProps
popoverProps = PopoverProps <<< options
popover :: Options PopoverOption -> Array ReactElement -> ReactElement
popover opts = createElement popoverClass (popoverProps opts)
anchorEl :: Option PopoverOption (UnknownType)
anchorEl = opt "anchorEl" -- object
anchorOrigin :: Option PopoverOption (UnknownType)
anchorOrigin = opt "anchorOrigin" -- custom
animated :: Option PopoverOption (Boolean)
animated = opt "animated"
animation :: Option PopoverOption (EventHandlerOpt)
animation = opt "animation"
autoCloseWhenOffScreen :: Option PopoverOption (Boolean)
autoCloseWhenOffScreen = opt "autoCloseWhenOffScreen"
canAutoPosition :: Option PopoverOption (Boolean)
canAutoPosition = opt "canAutoPosition"
children :: Option PopoverOption (Node)
children = opt "children"
className :: Option PopoverOption (String)
className = opt "className"
onRequestClose :: Option PopoverOption (EventHandlerOpt)
onRequestClose = opt "onRequestClose"
open :: Option PopoverOption (Boolean)
open = opt "open"
style :: Option PopoverOption (UnknownType)
style = opt "style" -- object
targetOrigin :: Option PopoverOption (UnknownType)
targetOrigin = opt "targetOrigin" -- custom
useLayerForClickAway :: Option PopoverOption (Boolean)
useLayerForClickAway = opt "useLayerForClickAway"
zDepth :: Option PopoverOption (UnknownType)
zDepth = opt "zDepth" -- custom
