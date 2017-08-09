module MaterialUI.MenuDivider where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import menuDividerClass :: ReactClass MenuDividerProps
foreign import data MenuDividerOption :: Type
newtype MenuDividerProps = MenuDividerProps Foreign
menuDividerProps :: Options MenuDividerOption -> MenuDividerProps
menuDividerProps = MenuDividerProps <<< options
menuDivider :: Options MenuDividerOption -> Array ReactElement -> ReactElement
menuDivider opts = createElement menuDividerClass (menuDividerProps opts)
style :: Option MenuDividerOption (UnknownType)
style = opt "style" -- object
