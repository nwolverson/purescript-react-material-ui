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
badgeStyle :: Option BadgeOption (UnknownType)
badgeStyle = opt "badgeStyle" -- object
children :: Option BadgeOption (Node)
children = opt "children"
className :: Option BadgeOption (String)
className = opt "className"
primary :: Option BadgeOption (Boolean)
primary = opt "primary"
secondary :: Option BadgeOption (Boolean)
secondary = opt "secondary"
style :: Option BadgeOption (UnknownType)
style = opt "style" -- object
