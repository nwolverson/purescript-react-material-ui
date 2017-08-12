module MaterialUI.MobileStepper where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import mobileStepperClass :: ReactClass MobileStepperProps
foreign import data MobileStepperOption :: Type
newtype MobileStepperProps = MobileStepperProps Foreign
mobileStepperProps :: Options MobileStepperOption -> MobileStepperProps
mobileStepperProps = MobileStepperProps <<< options
mobileStepper :: Options MobileStepperOption -> Array ReactElement -> ReactElement
mobileStepper opts = createElement mobileStepperClass (mobileStepperProps opts)
activeStep :: Option MobileStepperOption (Number)
activeStep = opt "activeStep"
backButtonText :: Option MobileStepperOption (Node)
backButtonText = opt "backButtonText"
classes :: Option MobileStepperOption (UnknownType)
classes = opt "classes" -- object
className :: Option MobileStepperOption (String)
className = opt "className"
disableBack :: Option MobileStepperOption (Boolean)
disableBack = opt "disableBack"
disableNext :: Option MobileStepperOption (Boolean)
disableNext = opt "disableNext"
nextButtonText :: Option MobileStepperOption (Node)
nextButtonText = opt "nextButtonText"
onBack :: Option MobileStepperOption (EventHandlerOpt)
onBack = opt "onBack"
onNext :: Option MobileStepperOption (EventHandlerOpt)
onNext = opt "onNext"
position :: Option MobileStepperOption (UnknownType)
position = opt "position" -- enum
steps :: Option MobileStepperOption (Number)
steps = opt "steps"
type' :: Option MobileStepperOption (UnknownType)
type' = opt "type" -- enum
