module MaterialUI.CardHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardHeaderClass :: ReactClass CardHeaderProps
foreign import data CardHeaderOption :: *
newtype CardHeaderProps = CardHeaderProps Foreign
cardHeaderProps :: Options CardHeaderOption -> CardHeaderProps
cardHeaderProps = CardHeaderProps <<< options
cardHeader :: Options CardHeaderOption -> Array ReactElement -> ReactElement
cardHeader opts = createElement cardHeaderClass (cardHeaderProps opts)
actAsExpander :: Option CardHeaderOption (Boolean)
actAsExpander = opt "actAsExpander"
avatar :: Option CardHeaderOption (Node)
avatar = opt "avatar"
children :: Option CardHeaderOption (Node)
children = opt "children"
expandable :: Option CardHeaderOption (Boolean)
expandable = opt "expandable"
showExpandableButton :: Option CardHeaderOption (Boolean)
showExpandableButton = opt "showExpandableButton"
style :: Option CardHeaderOption (UnknownType)
style = opt "style" -- object
subtitle :: Option CardHeaderOption (Node)
subtitle = opt "subtitle"
subtitleColor :: Option CardHeaderOption (String)
subtitleColor = opt "subtitleColor"
subtitleStyle :: Option CardHeaderOption (UnknownType)
subtitleStyle = opt "subtitleStyle" -- object
textStyle :: Option CardHeaderOption (UnknownType)
textStyle = opt "textStyle" -- object
title :: Option CardHeaderOption (Node)
title = opt "title"
titleColor :: Option CardHeaderOption (String)
titleColor = opt "titleColor"
titleStyle :: Option CardHeaderOption (UnknownType)
titleStyle = opt "titleStyle" -- object
