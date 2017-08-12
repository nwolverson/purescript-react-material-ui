module Test.Main where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML (window)
import DOM.HTML.Types (htmlDocumentToDocument)
import DOM.HTML.Window (document)
import DOM.Node.NonElementParentNode (getElementById)
import DOM.Node.Types (Element, ElementId(..), documentToNonElementParentNode)
import Data.Foreign (toForeign)
import Data.Maybe (fromJust)
import Data.Monoid (mempty)
import Data.Options (Options, (:=))
import MaterialUI (UnknownType(..))
import MaterialUI.Paper (PaperOption)
import MaterialUI.Paper as Paper
import Partial.Unsafe (unsafePartial)
import React (ReactClass, ReactElement, createClass, createFactory, getProps, spec)
import React.DOM as D
import React.DOM.Props as P
import ReactDOM (render)

hello :: forall props. ReactClass { name :: String | props }
hello = createClass $ spec unit \ctx -> do
  props <- getProps ctx
  pure $ Paper.paper (mempty :: Options PaperOption) [
      D.text "Hello "
    , D.text props.name
  ]

main :: forall eff. Eff (dom :: DOM | eff) Unit
main = void (elm' >>= render ui)
  where
  ui :: ReactElement
  ui = D.div [
    P.className "whatever-class-name"
  ] [ createFactory hello { name: "World" }
  ]

  elm' :: Eff (dom :: DOM | eff) Element
  elm' = do
    win <- window
    doc <- document win
    elm <- getElementById (ElementId "example") (documentToNonElementParentNode (htmlDocumentToDocument doc))
    pure $ unsafePartial (fromJust elm)
