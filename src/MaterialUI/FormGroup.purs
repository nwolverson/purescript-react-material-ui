module MaterialUI.FormGroup where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import formGroupClass :: ReactClass FormGroupProps
foreign import data FormGroupOption :: Type
newtype FormGroupProps = FormGroupProps Foreign
formGroupProps :: Options FormGroupOption -> FormGroupProps
formGroupProps = FormGroupProps <<< options
formGroup :: Options FormGroupOption -> Array ReactElement -> ReactElement
formGroup opts = createElement formGroupClass (formGroupProps opts)
classes :: Option FormGroupOption (UnknownType)
classes = opt "classes" -- Object
children :: Option FormGroupOption (UnknownType)
children = opt "children" -- Element
className :: Option FormGroupOption (String)
className = opt "className"
row :: Option FormGroupOption (Boolean)
row = opt "row"
