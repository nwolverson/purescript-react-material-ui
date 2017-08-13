module MaterialUI.Subheader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import subheaderClass :: ReactClass SubheaderProps
foreign import data SubheaderOption :: Type
newtype SubheaderProps = SubheaderProps Foreign
subheaderProps :: Options SubheaderOption -> SubheaderProps
subheaderProps = SubheaderProps <<< options
subheader :: Options SubheaderOption -> Array ReactElement -> ReactElement
subheader opts = createElement subheaderClass (subheaderProps opts)
children :: Option SubheaderOption (Node)
children = opt "children"
inset :: Option SubheaderOption (Boolean)
inset = opt "inset"
style :: Option SubheaderOption (UnknownType)
style = opt "style" -- object
