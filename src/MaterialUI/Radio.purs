module MaterialUI.Radio where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import radioClass :: ReactClass RadioProps
foreign import data RadioOption :: Type
newtype RadioProps = RadioProps Foreign
radioProps :: Options RadioOption -> RadioProps
radioProps = RadioProps <<< options
radio :: Options RadioOption -> Array ReactElement -> ReactElement
radio opts = createElement radioClass (radioProps opts)
checked :: Option RadioOption (UnknownType)
checked = opt "checked" -- union
checkedClassName :: Option RadioOption (String)
checkedClassName = opt "checkedClassName"
checkedIcon :: Option RadioOption (UnknownType)
checkedIcon = opt "checkedIcon" -- Element
classes :: Option RadioOption (UnknownType)
classes = opt "classes" -- Object
className :: Option RadioOption (String)
className = opt "className"
defaultChecked :: Option RadioOption (Boolean)
defaultChecked = opt "defaultChecked"
disabled :: Option RadioOption (Boolean)
disabled = opt "disabled"
disabledClassName :: Option RadioOption (String)
disabledClassName = opt "disabledClassName"
disableRipple :: Option RadioOption (Boolean)
disableRipple = opt "disableRipple"
icon :: Option RadioOption (UnknownType)
icon = opt "icon" -- Element
inputProps' :: Option RadioOption (UnknownType)
inputProps' = opt "inputProps" -- Object
inputRef :: Option RadioOption (UnknownType)
inputRef = opt "inputRef" -- Function
name :: Option RadioOption (String)
name = opt "name"
onChange :: Option RadioOption (UnknownType)
onChange = opt "onChange" -- Function
tabIndex :: Option RadioOption (String)
tabIndex = opt "tabIndex"
value :: Option RadioOption (String)
value = opt "value"
