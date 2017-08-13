module MaterialUI.Divider where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import dividerClass :: ReactClass DividerProps
foreign import data DividerOption :: Type
newtype DividerProps = DividerProps Foreign
dividerProps :: Options DividerOption -> DividerProps
dividerProps = DividerProps <<< options
divider :: Options DividerOption -> Array ReactElement -> ReactElement
divider opts = createElement dividerClass (dividerProps opts)
inset :: Option DividerOption (Boolean)
inset = opt "inset"
style :: Option DividerOption (UnknownType)
style = opt "style" -- object
