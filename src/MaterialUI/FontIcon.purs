module MaterialUI.FontIcon where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import fontIconClass :: ReactClass FontIconProps
foreign import data FontIconOption :: *
newtype FontIconProps = FontIconProps Foreign
fontIconProps :: Options FontIconOption -> FontIconProps
fontIconProps = FontIconProps <<< options
fontIcon :: Options FontIconOption -> Array ReactElement -> ReactElement
fontIcon opts = createElement fontIconClass (fontIconProps opts)
color :: Option FontIconOption (String)
color = opt "color"
hoverColor :: Option FontIconOption (String)
hoverColor = opt "hoverColor"
onMouseEnter :: Option FontIconOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option FontIconOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
style :: Option FontIconOption (UnknownType)
style = opt "style" -- object
