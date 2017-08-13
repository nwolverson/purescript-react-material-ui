module MaterialUI.ListItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import listItemClass :: ReactClass ListItemProps
foreign import data ListItemOption :: Type
newtype ListItemProps = ListItemProps Foreign
listItemProps :: Options ListItemOption -> ListItemProps
listItemProps = ListItemProps <<< options
listItem :: Options ListItemOption -> Array ReactElement -> ReactElement
listItem opts = createElement listItemClass (listItemProps opts)
autoGenerateNestedIndicator :: Option ListItemOption (Boolean)
autoGenerateNestedIndicator = opt "autoGenerateNestedIndicator"
children :: Option ListItemOption (Node)
children = opt "children"
containerElement :: Option ListItemOption (UnknownType)
containerElement = opt "containerElement" -- union
disableKeyboardFocus :: Option ListItemOption (Boolean)
disableKeyboardFocus = opt "disableKeyboardFocus"
disabled :: Option ListItemOption (Boolean)
disabled = opt "disabled"
hoverColor :: Option ListItemOption (String)
hoverColor = opt "hoverColor"
initiallyOpen :: Option ListItemOption (Boolean)
initiallyOpen = opt "initiallyOpen"
innerDivStyle :: Option ListItemOption (UnknownType)
innerDivStyle = opt "innerDivStyle" -- object
insetChildren :: Option ListItemOption (Boolean)
insetChildren = opt "insetChildren"
isKeyboardFocused :: Option ListItemOption (Boolean)
isKeyboardFocused = opt "isKeyboardFocused"
leftAvatar :: Option ListItemOption (ReactElement)
leftAvatar = opt "leftAvatar"
leftCheckbox :: Option ListItemOption (ReactElement)
leftCheckbox = opt "leftCheckbox"
leftIcon :: Option ListItemOption (ReactElement)
leftIcon = opt "leftIcon"
nestedItems :: Option ListItemOption (UnknownType)
nestedItems = opt "nestedItems" -- arrayOf
nestedLevel :: Option ListItemOption (Number)
nestedLevel = opt "nestedLevel"
nestedListStyle :: Option ListItemOption (UnknownType)
nestedListStyle = opt "nestedListStyle" -- object
onClick :: Option ListItemOption (EventHandlerOpt)
onClick = opt "onClick"
onKeyboardFocus :: Option ListItemOption (EventHandlerOpt)
onKeyboardFocus = opt "onKeyboardFocus"
onMouseEnter :: Option ListItemOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option ListItemOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onNestedListToggle :: Option ListItemOption (EventHandlerOpt)
onNestedListToggle = opt "onNestedListToggle"
onTouchEnd :: Option ListItemOption (EventHandlerOpt)
onTouchEnd = opt "onTouchEnd"
onTouchStart :: Option ListItemOption (EventHandlerOpt)
onTouchStart = opt "onTouchStart"
open :: Option ListItemOption (Boolean)
open = opt "open"
primaryText :: Option ListItemOption (Node)
primaryText = opt "primaryText"
primaryTogglesNestedList :: Option ListItemOption (Boolean)
primaryTogglesNestedList = opt "primaryTogglesNestedList"
rightAvatar :: Option ListItemOption (ReactElement)
rightAvatar = opt "rightAvatar"
rightIcon :: Option ListItemOption (ReactElement)
rightIcon = opt "rightIcon"
rightIconButton :: Option ListItemOption (ReactElement)
rightIconButton = opt "rightIconButton"
rightToggle :: Option ListItemOption (ReactElement)
rightToggle = opt "rightToggle"
secondaryText :: Option ListItemOption (Node)
secondaryText = opt "secondaryText"
secondaryTextLines :: Option ListItemOption (UnknownType)
secondaryTextLines = opt "secondaryTextLines" -- enum
style :: Option ListItemOption (UnknownType)
style = opt "style" -- object
