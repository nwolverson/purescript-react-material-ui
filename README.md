# purescript-react-material-ui

Wrappers to use [Material UI](http://www.material-ui.com/) components with [purescript-react](https://github.com/purescript-contrib/purescript-react).

**Supported material-ui version: 0.18.7**

Wrappers auto-generated from prop/flow-types using [react-docgen](https://github.com/reactjs/react-docgen) via [purescript-react-wrapper-gen](https://github.com/nwolverson/purescript-react-wrapper-gen). 

## Usage

Each component is contained in its own module, e.g. `MaterialUI.RaisedButton`, and exposes an element factory,
e.g. `raisedButton`, taking an options object for props and children array.

Top level component must be wrapped in `MuiThemeProvider` to provide theming via context.

```purescript
MuiThemeProvider.muiThemeProvider mempty [
  RaisedButton.raisedButton (
    RaisedButton.backgroundColor := "hotpink"
 <> RaisedButton.primary := false
  ) [
      D.text "Clicky button"
    ]
  ]
]
```

See [test](https://github.com/nwolverson/purescript-react-material-ui/blob/master/test/Main.purs) example.

# Documentation

API documentation is [available on Pursuit](pursuit.purescript.org/purescript-react-material-ui).