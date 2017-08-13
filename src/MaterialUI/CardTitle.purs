module MaterialUI.CardTitle where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardTitleClass :: ReactClass CardTitleProps
foreign import data CardTitleOption :: Type
newtype CardTitleProps = CardTitleProps Foreign
cardTitleProps :: Options CardTitleOption -> CardTitleProps
cardTitleProps = CardTitleProps <<< options
cardTitle :: Options CardTitleOption -> Array ReactElement -> ReactElement
cardTitle opts = createElement cardTitleClass (cardTitleProps opts)
actAsExpander :: Option CardTitleOption (Boolean)
actAsExpander = opt "actAsExpander"
children :: Option CardTitleOption (Node)
children = opt "children"
closeIcon :: Option CardTitleOption (Node)
closeIcon = opt "closeIcon"
expandable :: Option CardTitleOption (Boolean)
expandable = opt "expandable"
showExpandableButton :: Option CardTitleOption (Boolean)
showExpandableButton = opt "showExpandableButton"
style :: Option CardTitleOption (UnknownType)
style = opt "style" -- object
subtitle :: Option CardTitleOption (Node)
subtitle = opt "subtitle"
subtitleColor :: Option CardTitleOption (String)
subtitleColor = opt "subtitleColor"
subtitleStyle :: Option CardTitleOption (UnknownType)
subtitleStyle = opt "subtitleStyle" -- object
title :: Option CardTitleOption (Node)
title = opt "title"
titleColor :: Option CardTitleOption (String)
titleColor = opt "titleColor"
titleStyle :: Option CardTitleOption (UnknownType)
titleStyle = opt "titleStyle" -- object
