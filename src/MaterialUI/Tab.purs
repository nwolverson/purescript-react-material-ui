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
buttonStyle :: Option TabOption (UnknownType)
buttonStyle = opt "buttonStyle" -- object
className :: Option TabOption (String)
className = opt "className"
icon :: Option TabOption (Node)
icon = opt "icon"
index :: Option TabOption (UnknownType)
index = opt "index" -- any
label :: Option TabOption (Node)
label = opt "label"
onActive :: Option TabOption (EventHandlerOpt)
onActive = opt "onActive"
onClick :: Option TabOption (EventHandlerOpt)
onClick = opt "onClick"
selected :: Option TabOption (Boolean)
selected = opt "selected"
style :: Option TabOption (UnknownType)
style = opt "style" -- object
value :: Option TabOption (UnknownType)
value = opt "value" -- any
width :: Option TabOption (String)
width = opt "width"
