module MaterialUI.FormHelperText where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import formHelperTextClass :: ReactClass FormHelperTextProps
foreign import data FormHelperTextOption :: Type
newtype FormHelperTextProps = FormHelperTextProps Foreign
formHelperTextProps :: Options FormHelperTextOption -> FormHelperTextProps
formHelperTextProps = FormHelperTextProps <<< options
formHelperText :: Options FormHelperTextOption -> Array ReactElement -> ReactElement
formHelperText opts = createElement formHelperTextClass (formHelperTextProps opts)
classes :: Option FormHelperTextOption (UnknownType)
classes = opt "classes" -- Object
children :: Option FormHelperTextOption (UnknownType)
children = opt "children" -- Element
className :: Option FormHelperTextOption (String)
className = opt "className"
disabled :: Option FormHelperTextOption (Boolean)
disabled = opt "disabled"
error :: Option FormHelperTextOption (Boolean)
error = opt "error"
margin :: Option FormHelperTextOption (UnknownType)
margin = opt "margin" -- literal
