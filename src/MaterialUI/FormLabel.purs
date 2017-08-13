module MaterialUI.FormLabel where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import formLabelClass :: ReactClass FormLabelProps
foreign import data FormLabelOption :: Type
newtype FormLabelProps = FormLabelProps Foreign
formLabelProps :: Options FormLabelOption -> FormLabelProps
formLabelProps = FormLabelProps <<< options
formLabel :: Options FormLabelOption -> Array ReactElement -> ReactElement
formLabel opts = createElement formLabelClass (formLabelProps opts)
classes :: Option FormLabelOption (UnknownType)
classes = opt "classes" -- Object
component :: Option FormLabelOption (UnknownType)
component = opt "component" -- union
children :: Option FormLabelOption (UnknownType)
children = opt "children" -- Element
className :: Option FormLabelOption (String)
className = opt "className"
disabled :: Option FormLabelOption (Boolean)
disabled = opt "disabled"
error :: Option FormLabelOption (Boolean)
error = opt "error"
focused :: Option FormLabelOption (Boolean)
focused = opt "focused"
required :: Option FormLabelOption (Boolean)
required = opt "required"
