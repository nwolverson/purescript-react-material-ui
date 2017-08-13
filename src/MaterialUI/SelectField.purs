module MaterialUI.SelectField where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import selectFieldClass :: ReactClass SelectFieldProps
foreign import data SelectFieldOption :: Type
newtype SelectFieldProps = SelectFieldProps Foreign
selectFieldProps :: Options SelectFieldOption -> SelectFieldProps
selectFieldProps = SelectFieldProps <<< options
selectField :: Options SelectFieldOption -> Array ReactElement -> ReactElement
selectField opts = createElement selectFieldClass (selectFieldProps opts)
autoWidth :: Option SelectFieldOption (Boolean)
autoWidth = opt "autoWidth"
children :: Option SelectFieldOption (Node)
children = opt "children"
disabled :: Option SelectFieldOption (Boolean)
disabled = opt "disabled"
dropDownMenuProps :: Option SelectFieldOption (UnknownType)
dropDownMenuProps = opt "dropDownMenuProps" -- object
errorStyle :: Option SelectFieldOption (UnknownType)
errorStyle = opt "errorStyle" -- object
errorText :: Option SelectFieldOption (Node)
errorText = opt "errorText"
floatingLabelFixed :: Option SelectFieldOption (Boolean)
floatingLabelFixed = opt "floatingLabelFixed"
floatingLabelStyle :: Option SelectFieldOption (UnknownType)
floatingLabelStyle = opt "floatingLabelStyle" -- object
floatingLabelText :: Option SelectFieldOption (Node)
floatingLabelText = opt "floatingLabelText"
fullWidth :: Option SelectFieldOption (Boolean)
fullWidth = opt "fullWidth"
hintStyle :: Option SelectFieldOption (UnknownType)
hintStyle = opt "hintStyle" -- object
hintText :: Option SelectFieldOption (Node)
hintText = opt "hintText"
iconStyle :: Option SelectFieldOption (UnknownType)
iconStyle = opt "iconStyle" -- object
id :: Option SelectFieldOption (String)
id = opt "id"
labelStyle :: Option SelectFieldOption (UnknownType)
labelStyle = opt "labelStyle" -- object
listStyle :: Option SelectFieldOption (UnknownType)
listStyle = opt "listStyle" -- object
maxHeight :: Option SelectFieldOption (Number)
maxHeight = opt "maxHeight"
menuItemStyle :: Option SelectFieldOption (UnknownType)
menuItemStyle = opt "menuItemStyle" -- object
menuStyle :: Option SelectFieldOption (UnknownType)
menuStyle = opt "menuStyle" -- object
multiple :: Option SelectFieldOption (Boolean)
multiple = opt "multiple"
onBlur :: Option SelectFieldOption (EventHandlerOpt)
onBlur = opt "onBlur"
onChange :: Option SelectFieldOption (EventHandlerOpt)
onChange = opt "onChange"
onFocus :: Option SelectFieldOption (EventHandlerOpt)
onFocus = opt "onFocus"
selectedMenuItemStyle :: Option SelectFieldOption (UnknownType)
selectedMenuItemStyle = opt "selectedMenuItemStyle" -- object
selectionRenderer :: Option SelectFieldOption (EventHandlerOpt)
selectionRenderer = opt "selectionRenderer"
style :: Option SelectFieldOption (UnknownType)
style = opt "style" -- object
underlineDisabledStyle :: Option SelectFieldOption (UnknownType)
underlineDisabledStyle = opt "underlineDisabledStyle" -- object
underlineFocusStyle :: Option SelectFieldOption (UnknownType)
underlineFocusStyle = opt "underlineFocusStyle" -- object
underlineStyle :: Option SelectFieldOption (UnknownType)
underlineStyle = opt "underlineStyle" -- object
value :: Option SelectFieldOption (UnknownType)
value = opt "value" -- any
