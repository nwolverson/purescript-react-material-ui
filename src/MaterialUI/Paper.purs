module MaterialUI.Paper where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import paperClass :: ReactClass PaperProps
foreign import data PaperOption :: Type
newtype PaperProps = PaperProps Foreign
paperProps :: Options PaperOption -> PaperProps
paperProps = PaperProps <<< options
paper :: Options PaperOption -> Array ReactElement -> ReactElement
paper opts = createElement paperClass (paperProps opts)
classes :: Option PaperOption (UnknownType)
classes = opt "classes" -- Object
component :: Option PaperOption (UnknownType)
component = opt "component" -- union
elevation :: Option PaperOption (Number)
elevation = opt "elevation"
square :: Option PaperOption (Boolean)
square = opt "square"
className :: Option PaperOption (String)
className = opt "className"
