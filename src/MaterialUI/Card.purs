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
actAsExpander :: Option CardOption (Boolean)
actAsExpander = opt "actAsExpander"
children :: Option CardOption (Node)
children = opt "children"
expandable :: Option CardOption (Boolean)
expandable = opt "expandable"
initiallyExpanded :: Option CardOption (Boolean)
initiallyExpanded = opt "initiallyExpanded"
onExpandChange :: Option CardOption (EventHandlerOpt)
onExpandChange = opt "onExpandChange"
showExpandableButton :: Option CardOption (Boolean)
showExpandableButton = opt "showExpandableButton"
style :: Option CardOption (UnknownType)
style = opt "style" -- object
