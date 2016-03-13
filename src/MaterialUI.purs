module MaterialUI where
import Prelude (Unit)
import React (EventHandler, ReactElement)
import Data.Foreign (Foreign)
import Unsafe.Coerce (unsafeCoerce)

newtype EventHandlerOpt = EventHandlerOpt (EventHandler Unit)

newtype UnknownType = UnknownType Foreign

foreign import data Node :: *

numberNode :: Number -> Node
numberNode = unsafeCoerce
numbersNode :: Array Number -> Node
numbersNode = unsafeCoerce
stringNode :: String -> Node
stringNode = unsafeCoerce
stringsNode :: Array String -> Node
stringsNode = unsafeCoerce
elementNode :: ReactElement -> Node
elementNode = unsafeCoerce
elementsNode :: Array ReactElement -> Node
elementsNode = unsafeCoerce

