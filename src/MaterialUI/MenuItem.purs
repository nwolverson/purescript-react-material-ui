module MaterialUI.MenuItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import menuItemClass :: ReactClass MenuItemProps
foreign import data MenuItemOption :: Type
newtype MenuItemProps = MenuItemProps Foreign
menuItemProps :: Options MenuItemOption -> MenuItemProps
menuItemProps = MenuItemProps <<< options
menuItem :: Options MenuItemOption -> Array ReactElement -> ReactElement
menuItem opts = createElement menuItemClass (menuItemProps opts)
classes :: Option MenuItemOption (UnknownType)
classes = opt "classes" -- Object
role :: Option MenuItemOption (String)
role = opt "role"
selected :: Option MenuItemOption (Boolean)
selected = opt "selected"
children :: Option MenuItemOption (UnknownType)
children = opt "children" -- Element
className :: Option MenuItemOption (String)
className = opt "className"
component :: Option MenuItemOption (UnknownType)
component = opt "component" -- union
