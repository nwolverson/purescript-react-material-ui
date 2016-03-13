module MaterialUI.FlatButtonLabel where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import flatButtonLabelClass :: ReactClass FlatButtonLabelProps
foreign import data FlatButtonLabelOption :: *
newtype FlatButtonLabelProps = FlatButtonLabelProps Foreign
flatButtonLabelProps :: Options FlatButtonLabelOption -> FlatButtonLabelProps
flatButtonLabelProps = FlatButtonLabelProps <<< options
flatButtonLabel :: Options FlatButtonLabelOption -> Array ReactElement -> ReactElement
flatButtonLabel opts = createElement flatButtonLabelClass (flatButtonLabelProps opts)
label :: Option FlatButtonLabelOption (Node)
label = opt "label"
style :: Option FlatButtonLabelOption (UnknownType)
style = opt "style" -- object
