module MaterialUI.LeftNav where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import leftNavClass :: ReactClass LeftNavProps
foreign import data LeftNavOption :: *
newtype LeftNavProps = LeftNavProps Foreign
leftNavProps :: Options LeftNavOption -> LeftNavProps
leftNavProps = LeftNavProps <<< options
leftNav :: Options LeftNavOption -> Array ReactElement -> ReactElement
leftNav opts = createElement leftNavClass (leftNavProps opts)
children :: Option LeftNavOption (Node)
children = opt "children"
className :: Option LeftNavOption (String)
className = opt "className"
disableSwipeToOpen :: Option LeftNavOption (Boolean)
disableSwipeToOpen = opt "disableSwipeToOpen"
docked :: Option LeftNavOption (Boolean)
docked = opt "docked"
header :: Option LeftNavOption (UnknownType)
header = opt "header" -- custom
menuItemClassName :: Option LeftNavOption (UnknownType)
menuItemClassName = opt "menuItemClassName" -- custom
menuItemClassNameLink :: Option LeftNavOption (UnknownType)
menuItemClassNameLink = opt "menuItemClassNameLink" -- custom
menuItemClassNameSubheader :: Option LeftNavOption (UnknownType)
menuItemClassNameSubheader = opt "menuItemClassNameSubheader" -- custom
menuItems :: Option LeftNavOption (UnknownType)
menuItems = opt "menuItems" -- custom
onChange :: Option LeftNavOption (UnknownType)
onChange = opt "onChange" -- custom
onNavClose :: Option LeftNavOption (UnknownType)
onNavClose = opt "onNavClose" -- custom
onNavOpen :: Option LeftNavOption (UnknownType)
onNavOpen = opt "onNavOpen" -- custom
onRequestChange :: Option LeftNavOption (EventHandlerOpt)
onRequestChange = opt "onRequestChange"
open :: Option LeftNavOption (Boolean)
open = opt "open"
openRight :: Option LeftNavOption (Boolean)
openRight = opt "openRight"
overlayClassName :: Option LeftNavOption (String)
overlayClassName = opt "overlayClassName"
overlayStyle :: Option LeftNavOption (UnknownType)
overlayStyle = opt "overlayStyle" -- object
selectedIndex :: Option LeftNavOption (UnknownType)
selectedIndex = opt "selectedIndex" -- custom
style :: Option LeftNavOption (UnknownType)
style = opt "style" -- object
swipeAreaWidth :: Option LeftNavOption (Number)
swipeAreaWidth = opt "swipeAreaWidth"
width :: Option LeftNavOption (Number)
width = opt "width"
