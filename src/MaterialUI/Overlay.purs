module MaterialUI.Overlay where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import overlayClass :: ReactClass OverlayProps
foreign import data OverlayOption :: Type
newtype OverlayProps = OverlayProps Foreign
overlayProps :: Options OverlayOption -> OverlayProps
overlayProps = OverlayProps <<< options
overlay :: Options OverlayOption -> Array ReactElement -> ReactElement
overlay opts = createElement overlayClass (overlayProps opts)
autoLockScrolling :: Option OverlayOption (Boolean)
autoLockScrolling = opt "autoLockScrolling"
show :: Option OverlayOption (Boolean)
show = opt "show"
style :: Option OverlayOption (UnknownType)
style = opt "style" -- object
transitionEnabled :: Option OverlayOption (Boolean)
transitionEnabled = opt "transitionEnabled"
