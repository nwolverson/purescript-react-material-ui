module MaterialUI.MenuList where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import menuListClass :: ReactClass MenuListProps
foreign import data MenuListOption :: Type
newtype MenuListProps = MenuListProps Foreign
menuListProps :: Options MenuListOption -> MenuListProps
menuListProps = MenuListProps <<< options
menuList :: Options MenuListOption -> Array ReactElement -> ReactElement
menuList opts = createElement menuListClass (menuListProps opts)
children :: Option MenuListOption (UnknownType)
children = opt "children" -- Element
className :: Option MenuListOption (String)
className = opt "className"
onBlur :: Option MenuListOption (UnknownType)
onBlur = opt "onBlur" -- Function
onKeyDown :: Option MenuListOption (UnknownType)
onKeyDown = opt "onKeyDown" -- signature
