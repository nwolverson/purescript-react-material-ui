module MaterialUI.Paper where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import paperClass :: ReactClass PaperProps
foreign import data PaperOption :: *
newtype PaperProps = PaperProps Foreign
paperProps :: Options PaperOption -> PaperProps
paperProps = PaperProps <<< options
paper :: Options PaperOption -> Array ReactElement -> ReactElement
paper opts = createElement paperClass (paperProps opts)
children :: Option PaperOption (Node)
children = opt "children"
circle :: Option PaperOption (Boolean)
circle = opt "circle"
rounded :: Option PaperOption (Boolean)
rounded = opt "rounded"
style :: Option PaperOption (UnknownType)
style = opt "style" -- object
transitionEnabled :: Option PaperOption (Boolean)
transitionEnabled = opt "transitionEnabled"
zDepth :: Option PaperOption (UnknownType)
zDepth = opt "zDepth" -- custom
