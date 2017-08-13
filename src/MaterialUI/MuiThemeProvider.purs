module MaterialUI.MuiThemeProvider where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import muiThemeProviderClass :: ReactClass MuiThemeProviderProps
foreign import data MuiThemeProviderOption :: Type
newtype MuiThemeProviderProps = MuiThemeProviderProps Foreign
muiThemeProviderProps :: Options MuiThemeProviderOption -> MuiThemeProviderProps
muiThemeProviderProps = MuiThemeProviderProps <<< options
muiThemeProvider :: Options MuiThemeProviderOption -> Array ReactElement -> ReactElement
muiThemeProvider opts = createElement muiThemeProviderClass (muiThemeProviderProps opts)
children :: Option MuiThemeProviderOption (ReactElement)
children = opt "children"
muiTheme :: Option MuiThemeProviderOption (UnknownType)
muiTheme = opt "muiTheme" -- object
