module MaterialUI.IconButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import iconButtonClass :: ReactClass IconButtonProps
foreign import data IconButtonOption :: Type
newtype IconButtonProps = IconButtonProps Foreign
iconButtonProps :: Options IconButtonOption -> IconButtonProps
iconButtonProps = IconButtonProps <<< options
iconButton :: Options IconButtonOption -> Array ReactElement -> ReactElement
iconButton opts = createElement iconButtonClass (iconButtonProps opts)
children :: Option IconButtonOption (Node)
children = opt "children"
classes :: Option IconButtonOption (UnknownType)
classes = opt "classes" -- object
className :: Option IconButtonOption (String)
className = opt "className"
color :: Option IconButtonOption (UnknownType)
color = opt "color" -- enum
disabled :: Option IconButtonOption (Boolean)
disabled = opt "disabled"
disableRipple :: Option IconButtonOption (Boolean)
disableRipple = opt "disableRipple"
rootRef :: Option IconButtonOption (EventHandlerOpt)
rootRef = opt "rootRef"
