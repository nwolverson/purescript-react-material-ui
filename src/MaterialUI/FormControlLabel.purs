module MaterialUI.FormControlLabel where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import formControlLabelClass :: ReactClass FormControlLabelProps
foreign import data FormControlLabelOption :: Type
newtype FormControlLabelProps = FormControlLabelProps Foreign
formControlLabelProps :: Options FormControlLabelOption -> FormControlLabelProps
formControlLabelProps = FormControlLabelProps <<< options
formControlLabel :: Options FormControlLabelOption -> Array ReactElement -> ReactElement
formControlLabel opts = createElement formControlLabelClass (formControlLabelProps opts)
classes :: Option FormControlLabelOption (UnknownType)
classes = opt "classes" -- Object
checked :: Option FormControlLabelOption (UnknownType)
checked = opt "checked" -- union
className :: Option FormControlLabelOption (String)
className = opt "className"
control :: Option FormControlLabelOption (UnknownType)
control = opt "control" -- Element
disabled :: Option FormControlLabelOption (Boolean)
disabled = opt "disabled"
inputRef :: Option FormControlLabelOption (UnknownType)
inputRef = opt "inputRef" -- Function
label :: Option FormControlLabelOption (String)
label = opt "label"
name :: Option FormControlLabelOption (String)
name = opt "name"
onChange :: Option FormControlLabelOption (UnknownType)
onChange = opt "onChange" -- Function
value :: Option FormControlLabelOption (String)
value = opt "value"
