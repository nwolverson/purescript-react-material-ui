module MaterialUI.Input where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import inputClass :: ReactClass InputProps
foreign import data InputOption :: Type
newtype InputProps = InputProps Foreign
inputProps :: Options InputOption -> InputProps
inputProps = InputProps <<< options
input :: Options InputOption -> Array ReactElement -> ReactElement
input opts = createElement inputClass (inputProps opts)
classes :: Option InputOption (UnknownType)
classes = opt "classes" -- Object
disableUnderline :: Option InputOption (Boolean)
disableUnderline = opt "disableUnderline"
fullWidth :: Option InputOption (Boolean)
fullWidth = opt "fullWidth"
multiline :: Option InputOption (Boolean)
multiline = opt "multiline"
type' :: Option InputOption (String)
type' = opt "type"
autoComplete :: Option InputOption (String)
autoComplete = opt "autoComplete"
autoFocus :: Option InputOption (Boolean)
autoFocus = opt "autoFocus"
className :: Option InputOption (String)
className = opt "className"
component :: Option InputOption (UnknownType)
component = opt "component" -- union
defaultValue :: Option InputOption (UnknownType)
defaultValue = opt "defaultValue" -- union
disabled :: Option InputOption (Boolean)
disabled = opt "disabled"
error :: Option InputOption (Boolean)
error = opt "error"
id :: Option InputOption (String)
id = opt "id"
inputProps' :: Option InputOption (UnknownType)
inputProps' = opt "inputProps" -- Object
inputRef :: Option InputOption (UnknownType)
inputRef = opt "inputRef" -- Function
margin :: Option InputOption (UnknownType)
margin = opt "margin" -- literal
name :: Option InputOption (String)
name = opt "name"
onBlur :: Option InputOption (UnknownType)
onBlur = opt "onBlur" -- Function
onChange :: Option InputOption (UnknownType)
onChange = opt "onChange" -- Function
onClean :: Option InputOption (UnknownType)
onClean = opt "onClean" -- Function
onDirty :: Option InputOption (UnknownType)
onDirty = opt "onDirty" -- Function
onFocus :: Option InputOption (UnknownType)
onFocus = opt "onFocus" -- Function
onKeyDown :: Option InputOption (UnknownType)
onKeyDown = opt "onKeyDown" -- Function
onKeyUp :: Option InputOption (UnknownType)
onKeyUp = opt "onKeyUp" -- Function
placeholder :: Option InputOption (String)
placeholder = opt "placeholder"
rows :: Option InputOption (UnknownType)
rows = opt "rows" -- union
rowsMax :: Option InputOption (UnknownType)
rowsMax = opt "rowsMax" -- union
value :: Option InputOption (UnknownType)
value = opt "value" -- union
