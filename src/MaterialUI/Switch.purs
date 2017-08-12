module MaterialUI.Switch where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import switchClass :: ReactClass SwitchProps
foreign import data SwitchOption :: Type
newtype SwitchProps = SwitchProps Foreign
switchProps :: Options SwitchOption -> SwitchProps
switchProps = SwitchProps <<< options
switch :: Options SwitchOption -> Array ReactElement -> ReactElement
switch opts = createElement switchClass (switchProps opts)
classes :: Option SwitchOption (UnknownType)
classes = opt "classes" -- Object
checked :: Option SwitchOption (UnknownType)
checked = opt "checked" -- union
checkedClassName :: Option SwitchOption (String)
checkedClassName = opt "checkedClassName"
checkedIcon :: Option SwitchOption (UnknownType)
checkedIcon = opt "checkedIcon" -- Element
className :: Option SwitchOption (String)
className = opt "className"
defaultChecked :: Option SwitchOption (Boolean)
defaultChecked = opt "defaultChecked"
disabled :: Option SwitchOption (Boolean)
disabled = opt "disabled"
disabledClassName :: Option SwitchOption (String)
disabledClassName = opt "disabledClassName"
disableRipple :: Option SwitchOption (Boolean)
disableRipple = opt "disableRipple"
icon :: Option SwitchOption (UnknownType)
icon = opt "icon" -- Element
inputProps :: Option SwitchOption (UnknownType)
inputProps = opt "inputProps" -- Object
inputRef :: Option SwitchOption (UnknownType)
inputRef = opt "inputRef" -- Function
name :: Option SwitchOption (String)
name = opt "name"
onChange :: Option SwitchOption (UnknownType)
onChange = opt "onChange" -- Function
tabIndex :: Option SwitchOption (String)
tabIndex = opt "tabIndex"
value :: Option SwitchOption (String)
value = opt "value"
