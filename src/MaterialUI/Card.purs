module MaterialUI.Card where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardClass :: ReactClass CardProps
foreign import data CardOption :: Type
newtype CardProps = CardProps Foreign
cardProps :: Options CardOption -> CardProps
cardProps = CardProps <<< options
card :: Options CardOption -> Array ReactElement -> ReactElement
card opts = createElement cardClass (cardProps opts)
raised :: Option CardOption (Boolean)
raised = opt "raised"
className :: Option CardOption (String)
className = opt "className"
