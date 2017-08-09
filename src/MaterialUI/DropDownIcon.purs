module MaterialUI.DropDownIcon where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dropDownIconClass :: ReactClass DropDownIconProps
foreign import data DropDownIconOption :: Type
newtype DropDownIconProps = DropDownIconProps Foreign
dropDownIconProps :: Options DropDownIconOption -> DropDownIconProps
dropDownIconProps = DropDownIconProps <<< options
dropDownIcon :: Options DropDownIconOption -> Array ReactElement -> ReactElement
dropDownIcon opts = createElement dropDownIconClass (dropDownIconProps opts)
children :: Option DropDownIconOption (Node)
children = opt "children"
closeOnMenuItemTouchTap :: Option DropDownIconOption (Boolean)
closeOnMenuItemTouchTap = opt "closeOnMenuItemTouchTap"
iconClassName :: Option DropDownIconOption (String)
iconClassName = opt "iconClassName"
iconLigature :: Option DropDownIconOption (String)
iconLigature = opt "iconLigature"
iconStyle :: Option DropDownIconOption (UnknownType)
iconStyle = opt "iconStyle" -- object
menuItems :: Option DropDownIconOption (UnknownType)
menuItems = opt "menuItems" -- array
onChange :: Option DropDownIconOption (EventHandlerOpt)
onChange = opt "onChange"
style :: Option DropDownIconOption (UnknownType)
style = opt "style" -- object
