module MaterialUI.CardMedia where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardMediaClass :: ReactClass CardMediaProps
foreign import data CardMediaOption :: Type
newtype CardMediaProps = CardMediaProps Foreign
cardMediaProps :: Options CardMediaOption -> CardMediaProps
cardMediaProps = CardMediaProps <<< options
cardMedia :: Options CardMediaOption -> Array ReactElement -> ReactElement
cardMedia opts = createElement cardMediaClass (cardMediaProps opts)
classes :: Option CardMediaOption (UnknownType)
classes = opt "classes" -- Object
className :: Option CardMediaOption (String)
className = opt "className"
image :: Option CardMediaOption (String)
image = opt "image"
