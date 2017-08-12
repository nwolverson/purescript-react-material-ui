module MaterialUI.Tabs where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tabsClass :: ReactClass TabsProps
foreign import data TabsOption :: Type
newtype TabsProps = TabsProps Foreign
tabsProps :: Options TabsOption -> TabsProps
tabsProps = TabsProps <<< options
tabs :: Options TabsOption -> Array ReactElement -> ReactElement
tabs opts = createElement tabsClass (tabsProps opts)
buttonClassName :: Option TabsOption (String)
buttonClassName = opt "buttonClassName"
centered :: Option TabsOption (Boolean)
centered = opt "centered"
children :: Option TabsOption (Node)
children = opt "children"
classes :: Option TabsOption (UnknownType)
classes = opt "classes" -- object
className :: Option TabsOption (String)
className = opt "className"
fullWidth :: Option TabsOption (Boolean)
fullWidth = opt "fullWidth"
indicatorClassName :: Option TabsOption (String)
indicatorClassName = opt "indicatorClassName"
indicatorColor :: Option TabsOption (UnknownType)
indicatorColor = opt "indicatorColor" -- union
onChange :: Option TabsOption (EventHandlerOpt)
onChange = opt "onChange"
scrollable :: Option TabsOption (Boolean)
scrollable = opt "scrollable"
scrollButtons :: Option TabsOption (UnknownType)
scrollButtons = opt "scrollButtons" -- enum
textColor :: Option TabsOption (UnknownType)
textColor = opt "textColor" -- union
value :: Option TabsOption (UnknownType)
value = opt "value" -- any
width :: Option TabsOption (String)
width = opt "width"
