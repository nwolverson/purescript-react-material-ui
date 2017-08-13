module MaterialUI.StepButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import stepButtonClass :: ReactClass StepButtonProps
foreign import data StepButtonOption :: Type
newtype StepButtonProps = StepButtonProps Foreign
stepButtonProps :: Options StepButtonOption -> StepButtonProps
stepButtonProps = StepButtonProps <<< options
stepButton :: Options StepButtonOption -> Array ReactElement -> ReactElement
stepButton opts = createElement stepButtonClass (stepButtonProps opts)
active :: Option StepButtonOption (Boolean)
active = opt "active"
children :: Option StepButtonOption (Node)
children = opt "children"
completed :: Option StepButtonOption (Boolean)
completed = opt "completed"
disabled :: Option StepButtonOption (Boolean)
disabled = opt "disabled"
icon :: Option StepButtonOption (UnknownType)
icon = opt "icon" -- union
iconContainerStyle :: Option StepButtonOption (UnknownType)
iconContainerStyle = opt "iconContainerStyle" -- object
last :: Option StepButtonOption (Boolean)
last = opt "last"
onMouseEnter :: Option StepButtonOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option StepButtonOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onTouchStart :: Option StepButtonOption (EventHandlerOpt)
onTouchStart = opt "onTouchStart"
style :: Option StepButtonOption (UnknownType)
style = opt "style" -- object
