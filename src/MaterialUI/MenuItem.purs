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
anchorOrigin :: Option MenuItemOption (UnknownType)
anchorOrigin = opt "anchorOrigin" -- custom
animation :: Option MenuItemOption (EventHandlerOpt)
animation = opt "animation"
checked :: Option MenuItemOption (Boolean)
checked = opt "checked"
children :: Option MenuItemOption (Node)
children = opt "children"
desktop :: Option MenuItemOption (Boolean)
desktop = opt "desktop"
disabled :: Option MenuItemOption (Boolean)
disabled = opt "disabled"
focusState :: Option MenuItemOption (UnknownType)
focusState = opt "focusState" -- enum
innerDivStyle :: Option MenuItemOption (UnknownType)
innerDivStyle = opt "innerDivStyle" -- object
insetChildren :: Option MenuItemOption (Boolean)
insetChildren = opt "insetChildren"
leftIcon :: Option MenuItemOption (ReactElement)
leftIcon = opt "leftIcon"
menuItems :: Option MenuItemOption (Node)
menuItems = opt "menuItems"
onClick :: Option MenuItemOption (EventHandlerOpt)
onClick = opt "onClick"
primaryText :: Option MenuItemOption (Node)
primaryText = opt "primaryText"
rightIcon :: Option MenuItemOption (ReactElement)
rightIcon = opt "rightIcon"
secondaryText :: Option MenuItemOption (Node)
secondaryText = opt "secondaryText"
style :: Option MenuItemOption (UnknownType)
style = opt "style" -- object
targetOrigin :: Option MenuItemOption (UnknownType)
targetOrigin = opt "targetOrigin" -- custom
value :: Option MenuItemOption (UnknownType)
value = opt "value" -- any
