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
anchor :: Option DrawerOption (UnknownType)
anchor = opt "anchor" -- union
docked :: Option DrawerOption (Boolean)
docked = opt "docked"
classes :: Option DrawerOption (UnknownType)
classes = opt "classes" -- Object
enterTransitionDuration :: Option DrawerOption (Number)
enterTransitionDuration = opt "enterTransitionDuration"
leaveTransitionDuration :: Option DrawerOption (Number)
leaveTransitionDuration = opt "leaveTransitionDuration"
open :: Option DrawerOption (Boolean)
open = opt "open"
elevation :: Option DrawerOption (Number)
elevation = opt "elevation"
children :: Option DrawerOption (UnknownType)
children = opt "children" -- Element
className :: Option DrawerOption (String)
className = opt "className"
onRequestClose :: Option DrawerOption (UnknownType)
onRequestClose = opt "onRequestClose" -- Function
slideProps :: Option DrawerOption (UnknownType)
slideProps = opt "SlideProps" -- Object
theme :: Option DrawerOption (UnknownType)
theme = opt "theme" -- Object
