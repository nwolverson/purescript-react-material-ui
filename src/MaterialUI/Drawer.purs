module MaterialUI.Drawer where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import drawerClass :: ReactClass DrawerProps
foreign import data DrawerOption :: Type
newtype DrawerProps = DrawerProps Foreign
drawerProps :: Options DrawerOption -> DrawerProps
drawerProps = DrawerProps <<< options
drawer :: Options DrawerOption -> Array ReactElement -> ReactElement
drawer opts = createElement drawerClass (drawerProps opts)
children :: Option DrawerOption (Node)
children = opt "children"
className :: Option DrawerOption (String)
className = opt "className"
containerClassName :: Option DrawerOption (String)
containerClassName = opt "containerClassName"
containerStyle :: Option DrawerOption (UnknownType)
containerStyle = opt "containerStyle" -- object
disableSwipeToOpen :: Option DrawerOption (Boolean)
disableSwipeToOpen = opt "disableSwipeToOpen"
docked :: Option DrawerOption (Boolean)
docked = opt "docked"
onRequestChange :: Option DrawerOption (EventHandlerOpt)
onRequestChange = opt "onRequestChange"
open :: Option DrawerOption (Boolean)
open = opt "open"
openSecondary :: Option DrawerOption (Boolean)
openSecondary = opt "openSecondary"
overlayClassName :: Option DrawerOption (String)
overlayClassName = opt "overlayClassName"
overlayStyle :: Option DrawerOption (UnknownType)
overlayStyle = opt "overlayStyle" -- object
style :: Option DrawerOption (UnknownType)
style = opt "style" -- object
swipeAreaWidth :: Option DrawerOption (Number)
swipeAreaWidth = opt "swipeAreaWidth"
width :: Option DrawerOption (UnknownType)
width = opt "width" -- union
zDepth :: Option DrawerOption (UnknownType)
zDepth = opt "zDepth" -- custom
