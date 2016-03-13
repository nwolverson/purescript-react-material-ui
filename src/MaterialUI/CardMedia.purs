module MaterialUI.CardMedia where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardMediaClass :: ReactClass CardMediaProps
foreign import data CardMediaOption :: *
newtype CardMediaProps = CardMediaProps Foreign
cardMediaProps :: Options CardMediaOption -> CardMediaProps
cardMediaProps = CardMediaProps <<< options
cardMedia :: Options CardMediaOption -> Array ReactElement -> ReactElement
cardMedia opts = createElement cardMediaClass (cardMediaProps opts)
actAsExpander :: Option CardMediaOption (Boolean)
actAsExpander = opt "actAsExpander"
children :: Option CardMediaOption (Node)
children = opt "children"
expandable :: Option CardMediaOption (Boolean)
expandable = opt "expandable"
mediaStyle :: Option CardMediaOption (UnknownType)
mediaStyle = opt "mediaStyle" -- object
overlay :: Option CardMediaOption (Node)
overlay = opt "overlay"
overlayContainerStyle :: Option CardMediaOption (UnknownType)
overlayContainerStyle = opt "overlayContainerStyle" -- object
overlayContentStyle :: Option CardMediaOption (UnknownType)
overlayContentStyle = opt "overlayContentStyle" -- object
overlayStyle :: Option CardMediaOption (UnknownType)
overlayStyle = opt "overlayStyle" -- object
style :: Option CardMediaOption (UnknownType)
style = opt "style" -- object
