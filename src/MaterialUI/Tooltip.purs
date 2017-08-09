module MaterialUI.Tooltip where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tooltipClass :: ReactClass TooltipProps
foreign import data TooltipOption :: Type
newtype TooltipProps = TooltipProps Foreign
tooltipProps :: Options TooltipOption -> TooltipProps
tooltipProps = TooltipProps <<< options
tooltip :: Options TooltipOption -> Array ReactElement -> ReactElement
tooltip opts = createElement tooltipClass (tooltipProps opts)
className :: Option TooltipOption (String)
className = opt "className"
horizontalPosition :: Option TooltipOption (UnknownType)
horizontalPosition = opt "horizontalPosition" -- enum
label :: Option TooltipOption (Node)
label = opt "label"
show :: Option TooltipOption (Boolean)
show = opt "show"
style :: Option TooltipOption (UnknownType)
style = opt "style" -- object
touch :: Option TooltipOption (Boolean)
touch = opt "touch"
verticalPosition :: Option TooltipOption (UnknownType)
verticalPosition = opt "verticalPosition" -- enum
