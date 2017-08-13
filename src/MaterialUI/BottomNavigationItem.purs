module MaterialUI.BottomNavigationItem where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import bottomNavigationItemClass :: ReactClass BottomNavigationItemProps
foreign import data BottomNavigationItemOption :: Type
newtype BottomNavigationItemProps = BottomNavigationItemProps Foreign
bottomNavigationItemProps :: Options BottomNavigationItemOption -> BottomNavigationItemProps
bottomNavigationItemProps = BottomNavigationItemProps <<< options
bottomNavigationItem :: Options BottomNavigationItemOption -> Array ReactElement -> ReactElement
bottomNavigationItem opts = createElement bottomNavigationItemClass (bottomNavigationItemProps opts)
icon :: Option BottomNavigationItemOption (Node)
icon = opt "icon"
label :: Option BottomNavigationItemOption (Node)
label = opt "label"
style :: Option BottomNavigationItemOption (UnknownType)
style = opt "style" -- object
