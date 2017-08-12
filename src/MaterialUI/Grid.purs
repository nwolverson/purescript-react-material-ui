module MaterialUI.Grid where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import gridClass :: ReactClass GridProps
foreign import data GridOption :: Type
newtype GridProps = GridProps Foreign
gridProps :: Options GridOption -> GridProps
gridProps = GridProps <<< options
grid :: Options GridOption -> Array ReactElement -> ReactElement
grid opts = createElement gridClass (gridProps opts)
classes :: Option GridOption (UnknownType)
classes = opt "classes" -- Object
children :: Option GridOption (UnknownType)
children = opt "children" -- Element
className :: Option GridOption (String)
className = opt "className"
component :: Option GridOption (UnknownType)
component = opt "component" -- union
container :: Option GridOption (Boolean)
container = opt "container"
item :: Option GridOption (Boolean)
item = opt "item"
align :: Option GridOption (UnknownType)
align = opt "align" -- union
direction :: Option GridOption (UnknownType)
direction = opt "direction" -- union
spacing :: Option GridOption (UnknownType)
spacing = opt "spacing" -- union
hidden :: Option GridOption (UnknownType)
hidden = opt "hidden" -- HiddenProps
justify :: Option GridOption (UnknownType)
justify = opt "justify" -- union
wrap :: Option GridOption (UnknownType)
wrap = opt "wrap" -- union
xs :: Option GridOption (UnknownType)
xs = opt "xs" -- union
sm :: Option GridOption (UnknownType)
sm = opt "sm" -- union
md :: Option GridOption (UnknownType)
md = opt "md" -- union
lg :: Option GridOption (UnknownType)
lg = opt "lg" -- union
xl :: Option GridOption (UnknownType)
xl = opt "xl" -- union
