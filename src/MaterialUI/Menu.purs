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
autoWidth :: Option MenuOption (Boolean)
autoWidth = opt "autoWidth"
children :: Option MenuOption (Node)
children = opt "children"
desktop :: Option MenuOption (Boolean)
desktop = opt "desktop"
disableAutoFocus :: Option MenuOption (Boolean)
disableAutoFocus = opt "disableAutoFocus"
initiallyKeyboardFocused :: Option MenuOption (Boolean)
initiallyKeyboardFocused = opt "initiallyKeyboardFocused"
listStyle :: Option MenuOption (UnknownType)
listStyle = opt "listStyle" -- object
maxHeight :: Option MenuOption (Number)
maxHeight = opt "maxHeight"
menuItemStyle :: Option MenuOption (UnknownType)
menuItemStyle = opt "menuItemStyle" -- object
multiple :: Option MenuOption (Boolean)
multiple = opt "multiple"
onChange :: Option MenuOption (EventHandlerOpt)
onChange = opt "onChange"
onEscKeyDown :: Option MenuOption (EventHandlerOpt)
onEscKeyDown = opt "onEscKeyDown"
onItemTouchTap :: Option MenuOption (EventHandlerOpt)
onItemTouchTap = opt "onItemTouchTap"
onKeyDown :: Option MenuOption (EventHandlerOpt)
onKeyDown = opt "onKeyDown"
onMenuItemFocusChange :: Option MenuOption (EventHandlerOpt)
onMenuItemFocusChange = opt "onMenuItemFocusChange"
selectedMenuItemStyle :: Option MenuOption (UnknownType)
selectedMenuItemStyle = opt "selectedMenuItemStyle" -- object
style :: Option MenuOption (UnknownType)
style = opt "style" -- object
value :: Option MenuOption (UnknownType)
value = opt "value" -- any
valueLink :: Option MenuOption (UnknownType)
valueLink = opt "valueLink" -- object
width :: Option MenuOption (UnknownType)
width = opt "width" -- custom
