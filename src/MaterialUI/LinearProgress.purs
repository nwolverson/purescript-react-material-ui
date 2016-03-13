module MaterialUI.LinearProgress where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import linearProgressClass :: ReactClass LinearProgressProps
foreign import data LinearProgressOption :: *
newtype LinearProgressProps = LinearProgressProps Foreign
linearProgressProps :: Options LinearProgressOption -> LinearProgressProps
linearProgressProps = LinearProgressProps <<< options
linearProgress :: Options LinearProgressOption -> Array ReactElement -> ReactElement
linearProgress opts = createElement linearProgressClass (linearProgressProps opts)
color :: Option LinearProgressOption (String)
color = opt "color"
max :: Option LinearProgressOption (Number)
max = opt "max"
min :: Option LinearProgressOption (Number)
min = opt "min"
mode :: Option LinearProgressOption (UnknownType)
mode = opt "mode" -- enum
style :: Option LinearProgressOption (UnknownType)
style = opt "style" -- object
value :: Option LinearProgressOption (Number)
value = opt "value"
