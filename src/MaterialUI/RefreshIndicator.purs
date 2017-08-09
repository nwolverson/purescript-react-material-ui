module MaterialUI.RefreshIndicator where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import refreshIndicatorClass :: ReactClass RefreshIndicatorProps
foreign import data RefreshIndicatorOption :: Type
newtype RefreshIndicatorProps = RefreshIndicatorProps Foreign
refreshIndicatorProps :: Options RefreshIndicatorOption -> RefreshIndicatorProps
refreshIndicatorProps = RefreshIndicatorProps <<< options
refreshIndicator :: Options RefreshIndicatorOption -> Array ReactElement -> ReactElement
refreshIndicator opts = createElement refreshIndicatorClass (refreshIndicatorProps opts)
color :: Option RefreshIndicatorOption (String)
color = opt "color"
left :: Option RefreshIndicatorOption (Number)
left = opt "left"
loadingColor :: Option RefreshIndicatorOption (String)
loadingColor = opt "loadingColor"
percentage :: Option RefreshIndicatorOption (Number)
percentage = opt "percentage"
size :: Option RefreshIndicatorOption (Number)
size = opt "size"
status :: Option RefreshIndicatorOption (UnknownType)
status = opt "status" -- enum
style :: Option RefreshIndicatorOption (UnknownType)
style = opt "style" -- object
top :: Option RefreshIndicatorOption (Number)
top = opt "top"
