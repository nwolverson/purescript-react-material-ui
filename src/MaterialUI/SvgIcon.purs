module MaterialUI.SvgIcon where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import svgIconClass :: ReactClass SvgIconProps
foreign import data SvgIconOption :: Type
newtype SvgIconProps = SvgIconProps Foreign
svgIconProps :: Options SvgIconOption -> SvgIconProps
svgIconProps = SvgIconProps <<< options
svgIcon :: Options SvgIconOption -> Array ReactElement -> ReactElement
svgIcon opts = createElement svgIconClass (svgIconProps opts)
children :: Option SvgIconOption (Node)
children = opt "children"
color :: Option SvgIconOption (String)
color = opt "color"
hoverColor :: Option SvgIconOption (String)
hoverColor = opt "hoverColor"
onMouseEnter :: Option SvgIconOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option SvgIconOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
style :: Option SvgIconOption (UnknownType)
style = opt "style" -- object
viewBox :: Option SvgIconOption (String)
viewBox = opt "viewBox"
