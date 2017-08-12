module MaterialUI.Typography where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import typographyClass :: ReactClass TypographyProps
foreign import data TypographyOption :: Type
newtype TypographyProps = TypographyProps Foreign
typographyProps :: Options TypographyOption -> TypographyProps
typographyProps = TypographyProps <<< options
typography :: Options TypographyOption -> Array ReactElement -> ReactElement
typography opts = createElement typographyClass (typographyProps opts)
classes :: Option TypographyOption (UnknownType)
classes = opt "classes" -- Object
headlineMapping :: Option TypographyOption (UnknownType)
headlineMapping = opt "headlineMapping" -- signature
align :: Option TypographyOption (UnknownType)
align = opt "align" -- union
children :: Option TypographyOption (UnknownType)
children = opt "children" -- Element
className :: Option TypographyOption (String)
className = opt "className"
component :: Option TypographyOption (UnknownType)
component = opt "component" -- union
color :: Option TypographyOption (UnknownType)
color = opt "color" -- union
gutterBottom :: Option TypographyOption (Boolean)
gutterBottom = opt "gutterBottom"
noWrap :: Option TypographyOption (Boolean)
noWrap = opt "noWrap"
paragraph :: Option TypographyOption (Boolean)
paragraph = opt "paragraph"
type' :: Option TypographyOption (UnknownType)
type' = opt "type" -- union
