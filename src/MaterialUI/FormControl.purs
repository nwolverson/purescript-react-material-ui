module MaterialUI.FormControl where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import formControlClass :: ReactClass FormControlProps
foreign import data FormControlOption :: Type
newtype FormControlProps = FormControlProps Foreign
formControlProps :: Options FormControlOption -> FormControlProps
formControlProps = FormControlProps <<< options
formControl :: Options FormControlOption -> Array ReactElement -> ReactElement
formControl opts = createElement formControlClass (formControlProps opts)
disabled :: Option FormControlOption (Boolean)
disabled = opt "disabled"
classes :: Option FormControlOption (UnknownType)
classes = opt "classes" -- Object
component :: Option FormControlOption (UnknownType)
component = opt "component" -- union
error :: Option FormControlOption (Boolean)
error = opt "error"
fullWidth :: Option FormControlOption (Boolean)
fullWidth = opt "fullWidth"
margin :: Option FormControlOption (UnknownType)
margin = opt "margin" -- union
required :: Option FormControlOption (Boolean)
required = opt "required"
children :: Option FormControlOption (UnknownType)
children = opt "children" -- Element
className :: Option FormControlOption (String)
className = opt "className"
onBlur :: Option FormControlOption (UnknownType)
onBlur = opt "onBlur" -- Function
onFocus :: Option FormControlOption (UnknownType)
onFocus = opt "onFocus" -- Function
