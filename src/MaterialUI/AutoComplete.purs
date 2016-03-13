module MaterialUI.AutoComplete where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import autoCompleteClass :: ReactClass AutoCompleteProps
foreign import data AutoCompleteOption :: *
newtype AutoCompleteProps = AutoCompleteProps Foreign
autoCompleteProps :: Options AutoCompleteOption -> AutoCompleteProps
autoCompleteProps = AutoCompleteProps <<< options
autoComplete :: Options AutoCompleteOption -> Array ReactElement -> ReactElement
autoComplete opts = createElement autoCompleteClass (autoCompleteProps opts)
anchorOrigin :: Option AutoCompleteOption (UnknownType)
anchorOrigin = opt "anchorOrigin" -- custom
animated :: Option AutoCompleteOption (Boolean)
animated = opt "animated"
dataSource :: Option AutoCompleteOption (UnknownType)
dataSource = opt "dataSource" -- array
disableFocusRipple :: Option AutoCompleteOption (Boolean)
disableFocusRipple = opt "disableFocusRipple"
errorStyle :: Option AutoCompleteOption (UnknownType)
errorStyle = opt "errorStyle" -- object
errorText :: Option AutoCompleteOption (String)
errorText = opt "errorText"
filter :: Option AutoCompleteOption (EventHandlerOpt)
filter = opt "filter"
floatingLabelText :: Option AutoCompleteOption (String)
floatingLabelText = opt "floatingLabelText"
fullWidth :: Option AutoCompleteOption (Boolean)
fullWidth = opt "fullWidth"
hintText :: Option AutoCompleteOption (String)
hintText = opt "hintText"
listStyle :: Option AutoCompleteOption (UnknownType)
listStyle = opt "listStyle" -- object
menuCloseDelay :: Option AutoCompleteOption (Number)
menuCloseDelay = opt "menuCloseDelay"
menuProps :: Option AutoCompleteOption (UnknownType)
menuProps = opt "menuProps" -- object
menuStyle :: Option AutoCompleteOption (UnknownType)
menuStyle = opt "menuStyle" -- object
onNewRequest :: Option AutoCompleteOption (EventHandlerOpt)
onNewRequest = opt "onNewRequest"
onUpdateInput :: Option AutoCompleteOption (EventHandlerOpt)
onUpdateInput = opt "onUpdateInput"
open :: Option AutoCompleteOption (Boolean)
open = opt "open"
searchText :: Option AutoCompleteOption (String)
searchText = opt "searchText"
showAllItems :: Option AutoCompleteOption (UnknownType)
showAllItems = opt "showAllItems" -- custom
style :: Option AutoCompleteOption (UnknownType)
style = opt "style" -- object
targetOrigin :: Option AutoCompleteOption (UnknownType)
targetOrigin = opt "targetOrigin" -- custom
touchTapCloseDelay :: Option AutoCompleteOption (Number)
touchTapCloseDelay = opt "touchTapCloseDelay"
triggerUpdateOnFocus :: Option AutoCompleteOption (Boolean)
triggerUpdateOnFocus = opt "triggerUpdateOnFocus"
updateWhenFocused :: Option AutoCompleteOption (UnknownType)
updateWhenFocused = opt "updateWhenFocused" -- custom
