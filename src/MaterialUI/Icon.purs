module MaterialUI.Icon where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import iconClass :: ReactClass IconProps
foreign import data IconOption :: Type
newtype IconProps = IconProps Foreign
iconProps :: Options IconOption -> IconProps
iconProps = IconProps <<< options
icon :: Options IconOption -> Array ReactElement -> ReactElement
icon opts = createElement iconClass (iconProps opts)
classes :: Option IconOption (UnknownType)
classes = opt "classes" -- Object
color :: Option IconOption (UnknownType)
color = opt "color" -- union
children :: Option IconOption (UnknownType)
children = opt "children" -- Element
className :: Option IconOption (String)
className = opt "className"
