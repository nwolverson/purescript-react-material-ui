module MaterialUI.AppCanvas where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import appCanvasClass :: ReactClass AppCanvasProps
foreign import data AppCanvasOption :: Type
newtype AppCanvasProps = AppCanvasProps Foreign
appCanvasProps :: Options AppCanvasOption -> AppCanvasProps
appCanvasProps = AppCanvasProps <<< options
appCanvas :: Options AppCanvasOption -> Array ReactElement -> ReactElement
appCanvas opts = createElement appCanvasClass (appCanvasProps opts)
children :: Option AppCanvasOption (Node)
children = opt "children"
