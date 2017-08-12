module MaterialUI.BottomNavigation where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import bottomNavigationClass :: ReactClass BottomNavigationProps
foreign import data BottomNavigationOption :: Type
newtype BottomNavigationProps = BottomNavigationProps Foreign
bottomNavigationProps :: Options BottomNavigationOption -> BottomNavigationProps
bottomNavigationProps = BottomNavigationProps <<< options
bottomNavigation :: Options BottomNavigationOption -> Array ReactElement -> ReactElement
bottomNavigation opts = createElement bottomNavigationClass (bottomNavigationProps opts)
children :: Option BottomNavigationOption (Node)
children = opt "children"
classes :: Option BottomNavigationOption (UnknownType)
classes = opt "classes" -- object
className :: Option BottomNavigationOption (String)
className = opt "className"
onChange :: Option BottomNavigationOption (EventHandlerOpt)
onChange = opt "onChange"
showLabels :: Option BottomNavigationOption (Boolean)
showLabels = opt "showLabels"
value :: Option BottomNavigationOption (UnknownType)
value = opt "value" -- any
