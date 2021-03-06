module MaterialUI.CircularProgress where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import circularProgressClass :: ReactClass CircularProgressProps
foreign import data CircularProgressOption :: Type
newtype CircularProgressProps = CircularProgressProps Foreign
circularProgressProps :: Options CircularProgressOption -> CircularProgressProps
circularProgressProps = CircularProgressProps <<< options
circularProgress :: Options CircularProgressOption -> Array ReactElement -> ReactElement
circularProgress opts = createElement circularProgressClass (circularProgressProps opts)
classes :: Option CircularProgressOption (UnknownType)
classes = opt "classes" -- object
className :: Option CircularProgressOption (String)
className = opt "className"
color :: Option CircularProgressOption (UnknownType)
color = opt "color" -- enum
max :: Option CircularProgressOption (Number)
max = opt "max"
min :: Option CircularProgressOption (Number)
min = opt "min"
mode :: Option CircularProgressOption (UnknownType)
mode = opt "mode" -- enum
size :: Option CircularProgressOption (Number)
size = opt "size"
value :: Option CircularProgressOption (Number)
value = opt "value"
