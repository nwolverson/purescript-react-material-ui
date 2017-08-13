module MaterialUI.Tab where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tabClass :: ReactClass TabProps
foreign import data TabOption :: Type
newtype TabProps = TabProps Foreign
tabProps :: Options TabOption -> TabProps
tabProps = TabProps <<< options
tab :: Options TabOption -> Array ReactElement -> ReactElement
tab opts = createElement tabClass (tabProps opts)
classes :: Option TabOption (UnknownType)
classes = opt "classes" -- object
className :: Option TabOption (String)
className = opt "className"
disabled :: Option TabOption (Boolean)
disabled = opt "disabled"
fullWidth :: Option TabOption (Boolean)
fullWidth = opt "fullWidth"
icon :: Option TabOption (Node)
icon = opt "icon"
label :: Option TabOption (Node)
label = opt "label"
onChange :: Option TabOption (EventHandlerOpt)
onChange = opt "onChange"
onClick :: Option TabOption (EventHandlerOpt)
onClick = opt "onClick"
selected :: Option TabOption (Boolean)
selected = opt "selected"
style :: Option TabOption (UnknownType)
style = opt "style" -- object
textColor :: Option TabOption (UnknownType)
textColor = opt "textColor" -- union
value :: Option TabOption (UnknownType)
value = opt "value" -- any
