module MaterialUI.BeforeAfterWrapper where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import beforeAfterWrapperClass :: ReactClass BeforeAfterWrapperProps
foreign import data BeforeAfterWrapperOption :: *
newtype BeforeAfterWrapperProps = BeforeAfterWrapperProps Foreign
beforeAfterWrapperProps :: Options BeforeAfterWrapperOption -> BeforeAfterWrapperProps
beforeAfterWrapperProps = BeforeAfterWrapperProps <<< options
beforeAfterWrapper :: Options BeforeAfterWrapperOption -> Array ReactElement -> ReactElement
beforeAfterWrapper opts = createElement beforeAfterWrapperClass (beforeAfterWrapperProps opts)
afterElementType :: Option BeforeAfterWrapperOption (String)
afterElementType = opt "afterElementType"
afterStyle :: Option BeforeAfterWrapperOption (UnknownType)
afterStyle = opt "afterStyle" -- object
beforeElementType :: Option BeforeAfterWrapperOption (String)
beforeElementType = opt "beforeElementType"
beforeStyle :: Option BeforeAfterWrapperOption (UnknownType)
beforeStyle = opt "beforeStyle" -- object
children :: Option BeforeAfterWrapperOption (Node)
children = opt "children"
elementType :: Option BeforeAfterWrapperOption (String)
elementType = opt "elementType"
style :: Option BeforeAfterWrapperOption (UnknownType)
style = opt "style" -- object
