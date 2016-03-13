module MaterialUI.DropDownMenu where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dropDownMenuClass :: ReactClass DropDownMenuProps
foreign import data DropDownMenuOption :: *
newtype DropDownMenuProps = DropDownMenuProps Foreign
dropDownMenuProps :: Options DropDownMenuOption -> DropDownMenuProps
dropDownMenuProps = DropDownMenuProps <<< options
dropDownMenu :: Options DropDownMenuOption -> Array ReactElement -> ReactElement
dropDownMenu opts = createElement dropDownMenuClass (dropDownMenuProps opts)
autoWidth :: Option DropDownMenuOption (Boolean)
autoWidth = opt "autoWidth"
children :: Option DropDownMenuOption (Node)
children = opt "children"
className :: Option DropDownMenuOption (String)
className = opt "className"
disabled :: Option DropDownMenuOption (Boolean)
disabled = opt "disabled"
displayMember :: Option DropDownMenuOption (UnknownType)
displayMember = opt "displayMember" -- custom
iconStyle :: Option DropDownMenuOption (UnknownType)
iconStyle = opt "iconStyle" -- object
labelMember :: Option DropDownMenuOption (UnknownType)
labelMember = opt "labelMember" -- custom
labelStyle :: Option DropDownMenuOption (UnknownType)
labelStyle = opt "labelStyle" -- object
maxHeight :: Option DropDownMenuOption (Number)
maxHeight = opt "maxHeight"
menuItems :: Option DropDownMenuOption (UnknownType)
menuItems = opt "menuItems" -- custom
menuStyle :: Option DropDownMenuOption (UnknownType)
menuStyle = opt "menuStyle" -- object
onChange :: Option DropDownMenuOption (EventHandlerOpt)
onChange = opt "onChange"
openImmediately :: Option DropDownMenuOption (Boolean)
openImmediately = opt "openImmediately"
selectedIndex :: Option DropDownMenuOption (UnknownType)
selectedIndex = opt "selectedIndex" -- custom
style :: Option DropDownMenuOption (UnknownType)
style = opt "style" -- object
underlineStyle :: Option DropDownMenuOption (UnknownType)
underlineStyle = opt "underlineStyle" -- object
value :: Option DropDownMenuOption (UnknownType)
value = opt "value" -- any
valueLink :: Option DropDownMenuOption (UnknownType)
valueLink = opt "valueLink" -- custom
valueMember :: Option DropDownMenuOption (UnknownType)
valueMember = opt "valueMember" -- custom
