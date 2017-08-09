module MaterialUI.Toggle where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import toggleClass :: ReactClass ToggleProps
foreign import data ToggleOption :: Type
newtype ToggleProps = ToggleProps Foreign
toggleProps :: Options ToggleOption -> ToggleProps
toggleProps = ToggleProps <<< options
toggle :: Options ToggleOption -> Array ReactElement -> ReactElement
toggle opts = createElement toggleClass (toggleProps opts)
defaultToggled :: Option ToggleOption (Boolean)
defaultToggled = opt "defaultToggled"
disabled :: Option ToggleOption (Boolean)
disabled = opt "disabled"
elementStyle :: Option ToggleOption (UnknownType)
elementStyle = opt "elementStyle" -- object
iconStyle :: Option ToggleOption (UnknownType)
iconStyle = opt "iconStyle" -- object
labelPosition :: Option ToggleOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
labelStyle :: Option ToggleOption (UnknownType)
labelStyle = opt "labelStyle" -- object
onToggle :: Option ToggleOption (EventHandlerOpt)
onToggle = opt "onToggle"
rippleStyle :: Option ToggleOption (UnknownType)
rippleStyle = opt "rippleStyle" -- object
style :: Option ToggleOption (UnknownType)
style = opt "style" -- object
thumbStyle :: Option ToggleOption (UnknownType)
thumbStyle = opt "thumbStyle" -- object
toggled :: Option ToggleOption (Boolean)
toggled = opt "toggled"
trackStyle :: Option ToggleOption (UnknownType)
trackStyle = opt "trackStyle" -- object
valueLink :: Option ToggleOption (UnknownType)
valueLink = opt "valueLink" -- object
