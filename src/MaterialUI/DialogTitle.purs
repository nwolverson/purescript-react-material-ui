module MaterialUI.DialogTitle where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dialogTitleClass :: ReactClass DialogTitleProps
foreign import data DialogTitleOption :: Type
newtype DialogTitleProps = DialogTitleProps Foreign
dialogTitleProps :: Options DialogTitleOption -> DialogTitleProps
dialogTitleProps = DialogTitleProps <<< options
dialogTitle :: Options DialogTitleOption -> Array ReactElement -> ReactElement
dialogTitle opts = createElement dialogTitleClass (dialogTitleProps opts)
children :: Option DialogTitleOption (Node)
children = opt "children"
classes :: Option DialogTitleOption (UnknownType)
classes = opt "classes" -- object
className :: Option DialogTitleOption (String)
className = opt "className"
disableTypography :: Option DialogTitleOption (Boolean)
disableTypography = opt "disableTypography"
