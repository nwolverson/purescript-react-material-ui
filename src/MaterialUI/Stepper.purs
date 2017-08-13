module MaterialUI.Stepper where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import stepperClass :: ReactClass StepperProps
foreign import data StepperOption :: Type
newtype StepperProps = StepperProps Foreign
stepperProps :: Options StepperOption -> StepperProps
stepperProps = StepperProps <<< options
stepper :: Options StepperOption -> Array ReactElement -> ReactElement
stepper opts = createElement stepperClass (stepperProps opts)
activeStep :: Option StepperOption (Number)
activeStep = opt "activeStep"
children :: Option StepperOption (Node)
children = opt "children"
connector :: Option StepperOption (Node)
connector = opt "connector"
linear :: Option StepperOption (Boolean)
linear = opt "linear"
orientation :: Option StepperOption (UnknownType)
orientation = opt "orientation" -- enum
style :: Option StepperOption (UnknownType)
style = opt "style" -- object
