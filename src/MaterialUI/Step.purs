module MaterialUI.Step where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import stepClass :: ReactClass StepProps
foreign import data StepOption :: Type
newtype StepProps = StepProps Foreign
stepProps :: Options StepOption -> StepProps
stepProps = StepProps <<< options
step :: Options StepOption -> Array ReactElement -> ReactElement
step opts = createElement stepClass (stepProps opts)
active :: Option StepOption (Boolean)
active = opt "active"
children :: Option StepOption (Node)
children = opt "children"
completed :: Option StepOption (Boolean)
completed = opt "completed"
disabled :: Option StepOption (Boolean)
disabled = opt "disabled"
index :: Option StepOption (Number)
index = opt "index"
last :: Option StepOption (Boolean)
last = opt "last"
style :: Option StepOption (UnknownType)
style = opt "style" -- object
