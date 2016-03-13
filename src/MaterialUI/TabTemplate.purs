module MaterialUI.TabTemplate where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import tabTemplateClass :: ReactClass TabTemplateProps
foreign import data TabTemplateOption :: *
newtype TabTemplateProps = TabTemplateProps Foreign
tabTemplateProps :: Options TabTemplateOption -> TabTemplateProps
tabTemplateProps = TabTemplateProps <<< options
tabTemplate :: Options TabTemplateOption -> Array ReactElement -> ReactElement
tabTemplate opts = createElement tabTemplateClass (tabTemplateProps opts)
children :: Option TabTemplateOption (Node)
children = opt "children"
selected :: Option TabTemplateOption (Boolean)
selected = opt "selected"
