module MaterialUI.Badge where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import badgeClass :: ReactClass BadgeProps
foreign import data BadgeOption :: Type
newtype BadgeProps = BadgeProps Foreign
badgeProps :: Options BadgeOption -> BadgeProps
badgeProps = BadgeProps <<< options
badge :: Options BadgeOption -> Array ReactElement -> ReactElement
badge opts = createElement badgeClass (badgeProps opts)
badgeContent :: Option BadgeOption (Node)
badgeContent = opt "badgeContent"
children :: Option BadgeOption (Node)
children = opt "children"
classes :: Option BadgeOption (UnknownType)
classes = opt "classes" -- object
className :: Option BadgeOption (String)
className = opt "className"
color :: Option BadgeOption (UnknownType)
color = opt "color" -- enum
