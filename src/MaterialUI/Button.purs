module MaterialUI.Button where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import buttonClass :: ReactClass ButtonProps
foreign import data ButtonOption :: Type
newtype ButtonProps = ButtonProps Foreign
buttonProps :: Options ButtonOption -> ButtonProps
buttonProps = ButtonProps <<< options
button :: Options ButtonOption -> Array ReactElement -> ReactElement
button opts = createElement buttonClass (buttonProps opts)
classes :: Option ButtonOption (UnknownType)
classes = opt "classes" -- Object
color :: Option ButtonOption (UnknownType)
color = opt "color" -- union
dense :: Option ButtonOption (Boolean)
dense = opt "dense"
disabled :: Option ButtonOption (Boolean)
disabled = opt "disabled"
fab :: Option ButtonOption (Boolean)
fab = opt "fab"
disableFocusRipple :: Option ButtonOption (Boolean)
disableFocusRipple = opt "disableFocusRipple"
raised :: Option ButtonOption (Boolean)
raised = opt "raised"
disableRipple :: Option ButtonOption (Boolean)
disableRipple = opt "disableRipple"
type' :: Option ButtonOption (String)
type' = opt "type"
children :: Option ButtonOption (UnknownType)
children = opt "children" -- Element
className :: Option ButtonOption (String)
className = opt "className"
component :: Option ButtonOption (UnknownType)
component = opt "component" -- union
href :: Option ButtonOption (String)
href = opt "href"
