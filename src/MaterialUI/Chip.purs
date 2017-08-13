module MaterialUI.Chip where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import chipClass :: ReactClass ChipProps
foreign import data ChipOption :: Type
newtype ChipProps = ChipProps Foreign
chipProps :: Options ChipOption -> ChipProps
chipProps = ChipProps <<< options
chip :: Options ChipOption -> Array ReactElement -> ReactElement
chip opts = createElement chipClass (chipProps opts)
backgroundColor :: Option ChipOption (String)
backgroundColor = opt "backgroundColor"
children :: Option ChipOption (Node)
children = opt "children"
className :: Option ChipOption (Node)
className = opt "className"
containerElement :: Option ChipOption (UnknownType)
containerElement = opt "containerElement" -- union
deleteIconStyle :: Option ChipOption (UnknownType)
deleteIconStyle = opt "deleteIconStyle" -- object
labelColor :: Option ChipOption (String)
labelColor = opt "labelColor"
labelStyle :: Option ChipOption (UnknownType)
labelStyle = opt "labelStyle" -- object
onBlur :: Option ChipOption (EventHandlerOpt)
onBlur = opt "onBlur"
onClick :: Option ChipOption (EventHandlerOpt)
onClick = opt "onClick"
onFocus :: Option ChipOption (EventHandlerOpt)
onFocus = opt "onFocus"
onKeyDown :: Option ChipOption (EventHandlerOpt)
onKeyDown = opt "onKeyDown"
onKeyboardFocus :: Option ChipOption (EventHandlerOpt)
onKeyboardFocus = opt "onKeyboardFocus"
onMouseDown :: Option ChipOption (EventHandlerOpt)
onMouseDown = opt "onMouseDown"
onMouseEnter :: Option ChipOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option ChipOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onMouseUp :: Option ChipOption (EventHandlerOpt)
onMouseUp = opt "onMouseUp"
onRequestDelete :: Option ChipOption (EventHandlerOpt)
onRequestDelete = opt "onRequestDelete"
onTouchEnd :: Option ChipOption (EventHandlerOpt)
onTouchEnd = opt "onTouchEnd"
onTouchStart :: Option ChipOption (EventHandlerOpt)
onTouchStart = opt "onTouchStart"
style :: Option ChipOption (UnknownType)
style = opt "style" -- object
