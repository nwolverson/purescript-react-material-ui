module MaterialUI.Menu where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import menuClass :: ReactClass MenuProps
foreign import data MenuOption :: *
newtype MenuProps = MenuProps Foreign
menuProps :: Options MenuOption -> MenuProps
menuProps = MenuProps <<< options
menu :: Options MenuOption -> Array ReactElement -> ReactElement
menu opts = createElement menuClass (menuProps opts)
animated :: Option MenuOption (Boolean)
animated = opt "animated"
autoWidth :: Option MenuOption (Boolean)
autoWidth = opt "autoWidth"
children :: Option MenuOption (Node)
children = opt "children"
desktop :: Option MenuOption (Boolean)
desktop = opt "desktop"
initiallyKeyboardFocused :: Option MenuOption (Boolean)
initiallyKeyboardFocused = opt "initiallyKeyboardFocused"
listStyle :: Option MenuOption (UnknownType)
listStyle = opt "listStyle" -- object
maxHeight :: Option MenuOption (Number)
maxHeight = opt "maxHeight"
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
openDirection :: Option MenuOption (UnknownType)
openDirection = opt "openDirection" -- custom
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
zDepth :: Option MenuOption (UnknownType)
zDepth = opt "zDepth" -- custom
