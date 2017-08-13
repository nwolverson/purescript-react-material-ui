module MaterialUI.StepLabel where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import stepLabelClass :: ReactClass StepLabelProps
foreign import data StepLabelOption :: Type
newtype StepLabelProps = StepLabelProps Foreign
stepLabelProps :: Options StepLabelOption -> StepLabelProps
stepLabelProps = StepLabelProps <<< options
stepLabel :: Options StepLabelOption -> Array ReactElement -> ReactElement
stepLabel opts = createElement stepLabelClass (stepLabelProps opts)
active :: Option StepLabelOption (Boolean)
active = opt "active"
children :: Option StepLabelOption (Node)
children = opt "children"
completed :: Option StepLabelOption (Boolean)
completed = opt "completed"
disabled :: Option StepLabelOption (Boolean)
disabled = opt "disabled"
icon :: Option StepLabelOption (UnknownType)
icon = opt "icon" -- union
iconContainerStyle :: Option StepLabelOption (UnknownType)
iconContainerStyle = opt "iconContainerStyle" -- object
last :: Option StepLabelOption (Boolean)
last = opt "last"
style :: Option StepLabelOption (UnknownType)
style = opt "style" -- object
