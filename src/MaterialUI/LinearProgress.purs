module MaterialUI.LinearProgress where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import linearProgressClass :: ReactClass LinearProgressProps
foreign import data LinearProgressOption :: Type
newtype LinearProgressProps = LinearProgressProps Foreign
linearProgressProps :: Options LinearProgressOption -> LinearProgressProps
linearProgressProps = LinearProgressProps <<< options
linearProgress :: Options LinearProgressOption -> Array ReactElement -> ReactElement
linearProgress opts = createElement linearProgressClass (linearProgressProps opts)
classes :: Option LinearProgressOption (UnknownType)
classes = opt "classes" -- object
className :: Option LinearProgressOption (String)
className = opt "className"
color :: Option LinearProgressOption (UnknownType)
color = opt "color" -- enum
mode :: Option LinearProgressOption (UnknownType)
mode = opt "mode" -- enum
value :: Option LinearProgressOption (Number)
value = opt "value"
valueBuffer :: Option LinearProgressOption (Number)
valueBuffer = opt "valueBuffer"
