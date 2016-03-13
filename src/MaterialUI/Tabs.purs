module MaterialUI.Tabs where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tabsClass :: ReactClass TabsProps
foreign import data TabsOption :: *
newtype TabsProps = TabsProps Foreign
tabsProps :: Options TabsOption -> TabsProps
tabsProps = TabsProps <<< options
tabs :: Options TabsOption -> Array ReactElement -> ReactElement
tabs opts = createElement tabsClass (tabsProps opts)
children :: Option TabsOption (Node)
children = opt "children"
className :: Option TabsOption (String)
className = opt "className"
contentContainerClassName :: Option TabsOption (String)
contentContainerClassName = opt "contentContainerClassName"
contentContainerStyle :: Option TabsOption (UnknownType)
contentContainerStyle = opt "contentContainerStyle" -- object
initialSelectedIndex :: Option TabsOption (Number)
initialSelectedIndex = opt "initialSelectedIndex"
inkBarStyle :: Option TabsOption (UnknownType)
inkBarStyle = opt "inkBarStyle" -- object
onChange :: Option TabsOption (EventHandlerOpt)
onChange = opt "onChange"
style :: Option TabsOption (UnknownType)
style = opt "style" -- object
tabItemContainerStyle :: Option TabsOption (UnknownType)
tabItemContainerStyle = opt "tabItemContainerStyle" -- object
tabTemplate :: Option TabsOption (EventHandlerOpt)
tabTemplate = opt "tabTemplate"
value :: Option TabsOption (UnknownType)
value = opt "value" -- any
