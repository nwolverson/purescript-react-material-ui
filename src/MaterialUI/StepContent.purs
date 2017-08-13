module MaterialUI.StepContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import stepContentClass :: ReactClass StepContentProps
foreign import data StepContentOption :: Type
newtype StepContentProps = StepContentProps Foreign
stepContentProps :: Options StepContentOption -> StepContentProps
stepContentProps = StepContentProps <<< options
stepContent :: Options StepContentOption -> Array ReactElement -> ReactElement
stepContent opts = createElement stepContentClass (stepContentProps opts)
active :: Option StepContentOption (Boolean)
active = opt "active"
children :: Option StepContentOption (Node)
children = opt "children"
completed :: Option StepContentOption (Boolean)
completed = opt "completed"
last :: Option StepContentOption (Boolean)
last = opt "last"
style :: Option StepContentOption (UnknownType)
style = opt "style" -- object
transition :: Option StepContentOption (EventHandlerOpt)
transition = opt "transition"
transitionDuration :: Option StepContentOption (Number)
transitionDuration = opt "transitionDuration"
