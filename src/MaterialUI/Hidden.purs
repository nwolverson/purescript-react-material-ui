module MaterialUI.Hidden where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import hiddenClass :: ReactClass HiddenProps
foreign import data HiddenOption :: Type
newtype HiddenProps = HiddenProps Foreign
hiddenProps :: Options HiddenOption -> HiddenProps
hiddenProps = HiddenProps <<< options
hidden :: Options HiddenOption -> Array ReactElement -> ReactElement
hidden opts = createElement hiddenClass (hiddenProps opts)
children :: Option HiddenOption (UnknownType)
children = opt "children" -- Element
className :: Option HiddenOption (String)
className = opt "className"
only :: Option HiddenOption (UnknownType)
only = opt "only" -- union
xsUp :: Option HiddenOption (Boolean)
xsUp = opt "xsUp"
smUp :: Option HiddenOption (Boolean)
smUp = opt "smUp"
mdUp :: Option HiddenOption (Boolean)
mdUp = opt "mdUp"
lgUp :: Option HiddenOption (Boolean)
lgUp = opt "lgUp"
xlUp :: Option HiddenOption (Boolean)
xlUp = opt "xlUp"
xsDown :: Option HiddenOption (Boolean)
xsDown = opt "xsDown"
smDown :: Option HiddenOption (Boolean)
smDown = opt "smDown"
mdDown :: Option HiddenOption (Boolean)
mdDown = opt "mdDown"
lgDown :: Option HiddenOption (Boolean)
lgDown = opt "lgDown"
xlDown :: Option HiddenOption (Boolean)
xlDown = opt "xlDown"
implementation :: Option HiddenOption (UnknownType)
implementation = opt "implementation" -- union
