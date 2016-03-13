module MaterialUI.ThemeWrapper where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import themeWrapperClass :: ReactClass ThemeWrapperProps
foreign import data ThemeWrapperOption :: *
newtype ThemeWrapperProps = ThemeWrapperProps Foreign
themeWrapperProps :: Options ThemeWrapperOption -> ThemeWrapperProps
themeWrapperProps = ThemeWrapperProps <<< options
themeWrapper :: Options ThemeWrapperOption -> Array ReactElement -> ReactElement
themeWrapper opts = createElement themeWrapperClass (themeWrapperProps opts)
children :: Option ThemeWrapperOption (Node)
children = opt "children"
theme :: Option ThemeWrapperOption (UnknownType)
theme = opt "theme" -- object
