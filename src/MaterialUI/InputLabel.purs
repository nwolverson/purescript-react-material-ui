module MaterialUI.InputLabel where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import inputLabelClass :: ReactClass InputLabelProps
foreign import data InputLabelOption :: Type
newtype InputLabelProps = InputLabelProps Foreign
inputLabelProps :: Options InputLabelOption -> InputLabelProps
inputLabelProps = InputLabelProps <<< options
inputLabel :: Options InputLabelOption -> Array ReactElement -> ReactElement
inputLabel opts = createElement inputLabelClass (inputLabelProps opts)
classes :: Option InputLabelOption (UnknownType)
classes = opt "classes" -- Object
disabled :: Option InputLabelOption (Boolean)
disabled = opt "disabled"
disableAnimation :: Option InputLabelOption (Boolean)
disableAnimation = opt "disableAnimation"
children :: Option InputLabelOption (UnknownType)
children = opt "children" -- Element
className :: Option InputLabelOption (String)
className = opt "className"
error :: Option InputLabelOption (Boolean)
error = opt "error"
focused :: Option InputLabelOption (Boolean)
focused = opt "focused"
required :: Option InputLabelOption (Boolean)
required = opt "required"
shrink :: Option InputLabelOption (Boolean)
shrink = opt "shrink"
