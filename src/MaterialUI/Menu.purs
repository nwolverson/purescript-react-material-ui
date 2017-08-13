module MaterialUI.Menu where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import menuClass :: ReactClass MenuProps
foreign import data MenuOption :: Type
newtype MenuProps = MenuProps Foreign
menuProps :: Options MenuOption -> MenuProps
menuProps = MenuProps <<< options
menu :: Options MenuOption -> Array ReactElement -> ReactElement
menu opts = createElement menuClass (menuProps opts)
classes :: Option MenuOption (UnknownType)
classes = opt "classes" -- Object
open :: Option MenuOption (Boolean)
open = opt "open"
transitionDuration :: Option MenuOption (UnknownType)
transitionDuration = opt "transitionDuration" -- union
anchorEl :: Option MenuOption (UnknownType)
anchorEl = opt "anchorEl" -- Object
children :: Option MenuOption (UnknownType)
children = opt "children" -- Element
className :: Option MenuOption (String)
className = opt "className"
menuListProps :: Option MenuOption (UnknownType)
menuListProps = opt "MenuListProps" -- Object
onEnter :: Option MenuOption (UnknownType)
onEnter = opt "onEnter" -- TransitionCallback
onEntering :: Option MenuOption (UnknownType)
onEntering = opt "onEntering" -- TransitionCallback
onEntered :: Option MenuOption (UnknownType)
onEntered = opt "onEntered" -- TransitionCallback
onExit :: Option MenuOption (UnknownType)
onExit = opt "onExit" -- TransitionCallback
onExiting :: Option MenuOption (UnknownType)
onExiting = opt "onExiting" -- TransitionCallback
onExited :: Option MenuOption (UnknownType)
onExited = opt "onExited" -- TransitionCallback
onRequestClose :: Option MenuOption (UnknownType)
onRequestClose = opt "onRequestClose" -- Function
