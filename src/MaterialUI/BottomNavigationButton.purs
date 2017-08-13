module MaterialUI.BottomNavigationButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import bottomNavigationButtonClass :: ReactClass BottomNavigationButtonProps
foreign import data BottomNavigationButtonOption :: Type
newtype BottomNavigationButtonProps = BottomNavigationButtonProps Foreign
bottomNavigationButtonProps :: Options BottomNavigationButtonOption -> BottomNavigationButtonProps
bottomNavigationButtonProps = BottomNavigationButtonProps <<< options
bottomNavigationButton :: Options BottomNavigationButtonOption -> Array ReactElement -> ReactElement
bottomNavigationButton opts = createElement bottomNavigationButtonClass (bottomNavigationButtonProps opts)
classes :: Option BottomNavigationButtonOption (UnknownType)
classes = opt "classes" -- object
className :: Option BottomNavigationButtonOption (String)
className = opt "className"
icon :: Option BottomNavigationButtonOption (Node)
icon = opt "icon"
label :: Option BottomNavigationButtonOption (Node)
label = opt "label"
onChange :: Option BottomNavigationButtonOption (EventHandlerOpt)
onChange = opt "onChange"
onClick :: Option BottomNavigationButtonOption (EventHandlerOpt)
onClick = opt "onClick"
selected :: Option BottomNavigationButtonOption (Boolean)
selected = opt "selected"
showLabel :: Option BottomNavigationButtonOption (Boolean)
showLabel = opt "showLabel"
value :: Option BottomNavigationButtonOption (UnknownType)
value = opt "value" -- any
