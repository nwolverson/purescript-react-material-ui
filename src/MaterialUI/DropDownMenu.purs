module MaterialUI.DropDownMenu where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dropDownMenuClass :: ReactClass DropDownMenuProps
foreign import data DropDownMenuOption :: Type
newtype DropDownMenuProps = DropDownMenuProps Foreign
dropDownMenuProps :: Options DropDownMenuOption -> DropDownMenuProps
dropDownMenuProps = DropDownMenuProps <<< options
dropDownMenu :: Options DropDownMenuOption -> Array ReactElement -> ReactElement
dropDownMenu opts = createElement dropDownMenuClass (dropDownMenuProps opts)
anchorOrigin :: Option DropDownMenuOption (UnknownType)
anchorOrigin = opt "anchorOrigin" -- custom
animated :: Option DropDownMenuOption (Boolean)
animated = opt "animated"
animation :: Option DropDownMenuOption (EventHandlerOpt)
animation = opt "animation"
autoWidth :: Option DropDownMenuOption (Boolean)
autoWidth = opt "autoWidth"
children :: Option DropDownMenuOption (Node)
children = opt "children"
className :: Option DropDownMenuOption (String)
className = opt "className"
disabled :: Option DropDownMenuOption (Boolean)
disabled = opt "disabled"
iconButton :: Option DropDownMenuOption (Node)
iconButton = opt "iconButton"
iconStyle :: Option DropDownMenuOption (UnknownType)
iconStyle = opt "iconStyle" -- object
labelStyle :: Option DropDownMenuOption (UnknownType)
labelStyle = opt "labelStyle" -- object
listStyle :: Option DropDownMenuOption (UnknownType)
listStyle = opt "listStyle" -- object
maxHeight :: Option DropDownMenuOption (Number)
maxHeight = opt "maxHeight"
menuItemStyle :: Option DropDownMenuOption (UnknownType)
menuItemStyle = opt "menuItemStyle" -- object
menuStyle :: Option DropDownMenuOption (UnknownType)
menuStyle = opt "menuStyle" -- object
multiple :: Option DropDownMenuOption (Boolean)
multiple = opt "multiple"
onChange :: Option DropDownMenuOption (EventHandlerOpt)
onChange = opt "onChange"
onClose :: Option DropDownMenuOption (EventHandlerOpt)
onClose = opt "onClose"
openImmediately :: Option DropDownMenuOption (Boolean)
openImmediately = opt "openImmediately"
selectedMenuItemStyle :: Option DropDownMenuOption (UnknownType)
selectedMenuItemStyle = opt "selectedMenuItemStyle" -- object
selectionRenderer :: Option DropDownMenuOption (EventHandlerOpt)
selectionRenderer = opt "selectionRenderer"
style :: Option DropDownMenuOption (UnknownType)
style = opt "style" -- object
targetOrigin :: Option DropDownMenuOption (UnknownType)
targetOrigin = opt "targetOrigin" -- custom
underlineStyle :: Option DropDownMenuOption (UnknownType)
underlineStyle = opt "underlineStyle" -- object
value :: Option DropDownMenuOption (UnknownType)
value = opt "value" -- any
