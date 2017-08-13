module MaterialUI.CardContent where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardContentClass :: ReactClass CardContentProps
foreign import data CardContentOption :: Type
newtype CardContentProps = CardContentProps Foreign
cardContentProps :: Options CardContentOption -> CardContentProps
cardContentProps = CardContentProps <<< options
cardContent :: Options CardContentOption -> Array ReactElement -> ReactElement
cardContent opts = createElement cardContentClass (cardContentProps opts)
classes :: Option CardContentOption (UnknownType)
classes = opt "classes" -- Object
className :: Option CardContentOption (String)
className = opt "className"
