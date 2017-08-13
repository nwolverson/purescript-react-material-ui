module MaterialUI.CardHeader where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import cardHeaderClass :: ReactClass CardHeaderProps
foreign import data CardHeaderOption :: Type
newtype CardHeaderProps = CardHeaderProps Foreign
cardHeaderProps :: Options CardHeaderOption -> CardHeaderProps
cardHeaderProps = CardHeaderProps <<< options
cardHeader :: Options CardHeaderOption -> Array ReactElement -> ReactElement
cardHeader opts = createElement cardHeaderClass (cardHeaderProps opts)
classes :: Option CardHeaderOption (UnknownType)
classes = opt "classes" -- Object
avatar :: Option CardHeaderOption (UnknownType)
avatar = opt "avatar" -- Element
className :: Option CardHeaderOption (String)
className = opt "className"
subheader :: Option CardHeaderOption (UnknownType)
subheader = opt "subheader" -- Element
title :: Option CardHeaderOption (UnknownType)
title = opt "title" -- Element
