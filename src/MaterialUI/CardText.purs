module MaterialUI.CardText where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardTextClass :: ReactClass CardTextProps
foreign import data CardTextOption :: Type
newtype CardTextProps = CardTextProps Foreign
cardTextProps :: Options CardTextOption -> CardTextProps
cardTextProps = CardTextProps <<< options
cardText :: Options CardTextOption -> Array ReactElement -> ReactElement
cardText opts = createElement cardTextClass (cardTextProps opts)
actAsExpander :: Option CardTextOption (Boolean)
actAsExpander = opt "actAsExpander"
children :: Option CardTextOption (Node)
children = opt "children"
color :: Option CardTextOption (String)
color = opt "color"
expandable :: Option CardTextOption (Boolean)
expandable = opt "expandable"
style :: Option CardTextOption (UnknownType)
style = opt "style" -- object
