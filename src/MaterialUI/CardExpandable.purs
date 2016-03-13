module MaterialUI.CardExpandable where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardExpandableClass :: ReactClass CardExpandableProps
foreign import data CardExpandableOption :: *
newtype CardExpandableProps = CardExpandableProps Foreign
cardExpandableProps :: Options CardExpandableOption -> CardExpandableProps
cardExpandableProps = CardExpandableProps <<< options
cardExpandable :: Options CardExpandableOption -> Array ReactElement -> ReactElement
cardExpandable opts = createElement cardExpandableClass (cardExpandableProps opts)
expanded :: Option CardExpandableOption (Boolean)
expanded = opt "expanded"
onExpanding :: Option CardExpandableOption (EventHandlerOpt)
onExpanding = opt "onExpanding"
style :: Option CardExpandableOption (UnknownType)
style = opt "style" -- object
