module MaterialUI.InkBar where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import inkBarClass :: ReactClass InkBarProps
foreign import data InkBarOption :: *
newtype InkBarProps = InkBarProps Foreign
inkBarProps :: Options InkBarOption -> InkBarProps
inkBarProps = InkBarProps <<< options
inkBar :: Options InkBarOption -> Array ReactElement -> ReactElement
inkBar opts = createElement inkBarClass (inkBarProps opts)
color :: Option InkBarOption (String)
color = opt "color"
left :: Option InkBarOption (String)
left = opt "left"
style :: Option InkBarOption (UnknownType)
style = opt "style" -- object
width :: Option InkBarOption (String)
width = opt "width"
