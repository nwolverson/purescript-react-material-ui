# purescript-react-material-ui

Wrappers to use [Material UI](http://www.material-ui.com/) components with [purescript-react](https://github.com/purescript-contrib/purescript-react).

**Supported material-ui version: v1.0.0-beta** - for 0.18.7 see [0.1.0](https://github.com/nwolverson/purescript-react-material-ui/releases/tag/v0.1.0) release.

Wrappers auto-generated from prop/flow-types using [react-docgen](https://github.com/reactjs/react-docgen) via [purescript-react-wrapper-gen](https://github.com/nwolverson/purescript-react-wrapper-gen). 

## Usage

Each component is contained in its own module, e.g. `MaterialUI.Button`, and exposes an element factory,
e.g. `button`, taking an options object for props and children array.

```purescript
  Button.button (
    Button.raised := true
 <> Button.dense := true
  ) [
      D.text "Clicky button"
    ]
  ]
```

See [test](https://github.com/nwolverson/purescript-react-material-ui/blob/master/test/Main.purs) example.

# Documentation

API documentation is [available on Pursuit](pursuit.purescript.org/purescript-react-material-ui).