module MaterialUI.CardActions where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardActionsClass :: ReactClass CardActionsProps
foreign import data CardActionsOption :: Type
newtype CardActionsProps = CardActionsProps Foreign
cardActionsProps :: Options CardActionsOption -> CardActionsProps
cardActionsProps = CardActionsProps <<< options
cardActions :: Options CardActionsOption -> Array ReactElement -> ReactElement
cardActions opts = createElement cardActionsClass (cardActionsProps opts)
actAsExpander :: Option CardActionsOption (Boolean)
actAsExpander = opt "actAsExpander"
children :: Option CardActionsOption (Node)
children = opt "children"
expandable :: Option CardActionsOption (Boolean)
expandable = opt "expandable"
showExpandableButton :: Option CardActionsOption (Boolean)
showExpandableButton = opt "showExpandableButton"
style :: Option CardActionsOption (UnknownType)
style = opt "style" -- object
