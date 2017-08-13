module MaterialUI.AutoComplete where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import autoCompleteClass :: ReactClass AutoCompleteProps
foreign import data AutoCompleteOption :: Type
newtype AutoCompleteProps = AutoCompleteProps Foreign
autoCompleteProps :: Options AutoCompleteOption -> AutoCompleteProps
autoCompleteProps = AutoCompleteProps <<< options
autoComplete :: Options AutoCompleteOption -> Array ReactElement -> ReactElement
autoComplete opts = createElement autoCompleteClass (autoCompleteProps opts)
anchorOrigin :: Option AutoCompleteOption (UnknownType)
anchorOrigin = opt "anchorOrigin" -- custom
animated :: Option AutoCompleteOption (Boolean)
animated = opt "animated"
animation :: Option AutoCompleteOption (EventHandlerOpt)
animation = opt "animation"
dataSource :: Option AutoCompleteOption (UnknownType)
dataSource = opt "dataSource" -- array
dataSourceConfig :: Option AutoCompleteOption (UnknownType)
dataSourceConfig = opt "dataSourceConfig" -- object
disableFocusRipple :: Option AutoCompleteOption (Boolean)
disableFocusRipple = opt "disableFocusRipple"
errorStyle :: Option AutoCompleteOption (UnknownType)
errorStyle = opt "errorStyle" -- object
errorText :: Option AutoCompleteOption (Node)
errorText = opt "errorText"
filter :: Option AutoCompleteOption (EventHandlerOpt)
filter = opt "filter"
floatingLabelText :: Option AutoCompleteOption (Node)
floatingLabelText = opt "floatingLabelText"
fullWidth :: Option AutoCompleteOption (Boolean)
fullWidth = opt "fullWidth"
hintText :: Option AutoCompleteOption (Node)
hintText = opt "hintText"
listStyle :: Option AutoCompleteOption (UnknownType)
listStyle = opt "listStyle" -- object
maxSearchResults :: Option AutoCompleteOption (Number)
maxSearchResults = opt "maxSearchResults"
menuCloseDelay :: Option AutoCompleteOption (Number)
menuCloseDelay = opt "menuCloseDelay"
menuProps :: Option AutoCompleteOption (UnknownType)
menuProps = opt "menuProps" -- object
menuStyle :: Option AutoCompleteOption (UnknownType)
menuStyle = opt "menuStyle" -- object
onBlur :: Option AutoCompleteOption (EventHandlerOpt)
onBlur = opt "onBlur"
onClose :: Option AutoCompleteOption (EventHandlerOpt)
onClose = opt "onClose"
onFocus :: Option AutoCompleteOption (EventHandlerOpt)
onFocus = opt "onFocus"
onKeyDown :: Option AutoCompleteOption (EventHandlerOpt)
onKeyDown = opt "onKeyDown"
onNewRequest :: Option AutoCompleteOption (EventHandlerOpt)
onNewRequest = opt "onNewRequest"
onUpdateInput :: Option AutoCompleteOption (EventHandlerOpt)
onUpdateInput = opt "onUpdateInput"
open :: Option AutoCompleteOption (Boolean)
open = opt "open"
openOnFocus :: Option AutoCompleteOption (Boolean)
openOnFocus = opt "openOnFocus"
popoverProps :: Option AutoCompleteOption (UnknownType)
popoverProps = opt "popoverProps" -- object
searchText :: Option AutoCompleteOption (String)
searchText = opt "searchText"
style :: Option AutoCompleteOption (UnknownType)
style = opt "style" -- object
targetOrigin :: Option AutoCompleteOption (UnknownType)
targetOrigin = opt "targetOrigin" -- custom
textFieldStyle :: Option AutoCompleteOption (UnknownType)
textFieldStyle = opt "textFieldStyle" -- object
