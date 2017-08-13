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
classes :: Option CardActionsOption (UnknownType)
classes = opt "classes" -- Object
disableActionSpacing :: Option CardActionsOption (Boolean)
disableActionSpacing = opt "disableActionSpacing"
children :: Option CardActionsOption (UnknownType)
children = opt "children" -- Element
className :: Option CardActionsOption (String)
className = opt "className"
