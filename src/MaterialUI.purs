module MaterialUI where
import Prelude (Unit, unit)
import React (EventHandler, ReactClass)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)

newtype EventHandlerOpt = EventHandlerOpt (EventHandler Unit)

newtype UnknownType = UnknownType Foreign
foreign import mkAppBar :: Unit -> ReactClass AppBarProps
appBar :: ReactClass AppBarProps
appBar = mkAppBar unit
foreign import mkAppCanvas :: Unit -> ReactClass AppCanvasProps
appCanvas :: ReactClass AppCanvasProps
appCanvas = mkAppCanvas unit
foreign import mkAutoComplete :: Unit -> ReactClass AutoCompleteProps
autoComplete :: ReactClass AutoCompleteProps
autoComplete = mkAutoComplete unit
foreign import mkAvatar :: Unit -> ReactClass AvatarProps
avatar :: ReactClass AvatarProps
avatar = mkAvatar unit
foreign import mkBadge :: Unit -> ReactClass BadgeProps
badge :: ReactClass BadgeProps
badge = mkBadge unit
foreign import mkBeforeAfterWrapper :: Unit -> ReactClass BeforeAfterWrapperProps
beforeAfterWrapper :: ReactClass BeforeAfterWrapperProps
beforeAfterWrapper = mkBeforeAfterWrapper unit
foreign import mkFlatButtonLabel :: Unit -> ReactClass FlatButtonLabelProps
flatButtonLabel :: ReactClass FlatButtonLabelProps
flatButtonLabel = mkFlatButtonLabel unit
foreign import mkCardActions :: Unit -> ReactClass CardActionsProps
cardActions :: ReactClass CardActionsProps
cardActions = mkCardActions unit
foreign import mkCardExpandable :: Unit -> ReactClass CardExpandableProps
cardExpandable :: ReactClass CardExpandableProps
cardExpandable = mkCardExpandable unit
foreign import mkCardHeader :: Unit -> ReactClass CardHeaderProps
cardHeader :: ReactClass CardHeaderProps
cardHeader = mkCardHeader unit
foreign import mkCardMedia :: Unit -> ReactClass CardMediaProps
cardMedia :: ReactClass CardMediaProps
cardMedia = mkCardMedia unit
foreign import mkCardText :: Unit -> ReactClass CardTextProps
cardText :: ReactClass CardTextProps
cardText = mkCardText unit
foreign import mkCardTitle :: Unit -> ReactClass CardTitleProps
cardTitle :: ReactClass CardTitleProps
cardTitle = mkCardTitle unit
foreign import mkCard :: Unit -> ReactClass CardProps
card :: ReactClass CardProps
card = mkCard unit
foreign import mkCheckbox :: Unit -> ReactClass CheckboxProps
checkbox :: ReactClass CheckboxProps
checkbox = mkCheckbox unit
foreign import mkCircularProgress :: Unit -> ReactClass CircularProgressProps
circularProgress :: ReactClass CircularProgressProps
circularProgress = mkCircularProgress unit
foreign import mkDatePicker :: Unit -> ReactClass DatePickerProps
datePicker :: ReactClass DatePickerProps
datePicker = mkDatePicker unit
foreign import mkDialog :: Unit -> ReactClass DialogProps
dialog :: ReactClass DialogProps
dialog = mkDialog unit
foreign import mkDivider :: Unit -> ReactClass DividerProps
divider :: ReactClass DividerProps
divider = mkDivider unit
foreign import mkDropDownIcon :: Unit -> ReactClass DropDownIconProps
dropDownIcon :: ReactClass DropDownIconProps
dropDownIcon = mkDropDownIcon unit
foreign import mkDropDownMenu :: Unit -> ReactClass DropDownMenuProps
dropDownMenu :: ReactClass DropDownMenuProps
dropDownMenu = mkDropDownMenu unit
foreign import mkFlatButton :: Unit -> ReactClass FlatButtonProps
flatButton :: ReactClass FlatButtonProps
flatButton = mkFlatButton unit
foreign import mkFloatingActionButton :: Unit -> ReactClass FloatingActionButtonProps
floatingActionButton :: ReactClass FloatingActionButtonProps
floatingActionButton = mkFloatingActionButton unit
foreign import mkFontIcon :: Unit -> ReactClass FontIconProps
fontIcon :: ReactClass FontIconProps
fontIcon = mkFontIcon unit
foreign import mkGridList :: Unit -> ReactClass GridListProps
gridList :: ReactClass GridListProps
gridList = mkGridList unit
foreign import mkGridTile :: Unit -> ReactClass GridTileProps
gridTile :: ReactClass GridTileProps
gridTile = mkGridTile unit
foreign import mkIconButton :: Unit -> ReactClass IconButtonProps
iconButton :: ReactClass IconButtonProps
iconButton = mkIconButton unit
foreign import mkInkBar :: Unit -> ReactClass InkBarProps
inkBar :: ReactClass InkBarProps
inkBar = mkInkBar unit
foreign import mkLeftNav :: Unit -> ReactClass LeftNavProps
leftNav :: ReactClass LeftNavProps
leftNav = mkLeftNav unit
foreign import mkLinearProgress :: Unit -> ReactClass LinearProgressProps
linearProgress :: ReactClass LinearProgressProps
linearProgress = mkLinearProgress unit
foreign import mkListDivider :: Unit -> ReactClass ListDividerProps
listDivider :: ReactClass ListDividerProps
listDivider = mkListDivider unit
foreign import mkListItem :: Unit -> ReactClass ListItemProps
listItem :: ReactClass ListItemProps
listItem = mkListItem unit
foreign import mkList :: Unit -> ReactClass ListProps
list :: ReactClass ListProps
list = mkList unit
foreign import mkNestedList :: Unit -> ReactClass NestedListProps
nestedList :: ReactClass NestedListProps
nestedList = mkNestedList unit
foreign import mkMenuDivider :: Unit -> ReactClass MenuDividerProps
menuDivider :: ReactClass MenuDividerProps
menuDivider = mkMenuDivider unit
foreign import mkMenuItem :: Unit -> ReactClass MenuItemProps
menuItem :: ReactClass MenuItemProps
menuItem = mkMenuItem unit
foreign import mkMenu :: Unit -> ReactClass MenuProps
menu :: ReactClass MenuProps
menu = mkMenu unit
foreign import mkOverlay :: Unit -> ReactClass OverlayProps
overlay :: ReactClass OverlayProps
overlay = mkOverlay unit
foreign import mkPaper :: Unit -> ReactClass PaperProps
paper :: ReactClass PaperProps
paper = mkPaper unit
foreign import mkRadioButtonGroup :: Unit -> ReactClass RadioButtonGroupProps
radioButtonGroup :: ReactClass RadioButtonGroupProps
radioButtonGroup = mkRadioButtonGroup unit
foreign import mkRadioButton :: Unit -> ReactClass RadioButtonProps
radioButton :: ReactClass RadioButtonProps
radioButton = mkRadioButton unit
foreign import mkRaisedButton :: Unit -> ReactClass RaisedButtonProps
raisedButton :: ReactClass RaisedButtonProps
raisedButton = mkRaisedButton unit
foreign import mkRefreshIndicator :: Unit -> ReactClass RefreshIndicatorProps
refreshIndicator :: ReactClass RefreshIndicatorProps
refreshIndicator = mkRefreshIndicator unit
foreign import mkSlider :: Unit -> ReactClass SliderProps
slider :: ReactClass SliderProps
slider = mkSlider unit
foreign import mkSnackbar :: Unit -> ReactClass SnackbarProps
snackbar :: ReactClass SnackbarProps
snackbar = mkSnackbar unit
foreign import mkSvgIcon :: Unit -> ReactClass SvgIconProps
svgIcon :: ReactClass SvgIconProps
svgIcon = mkSvgIcon unit
foreign import mkTableBody :: Unit -> ReactClass TableBodyProps
tableBody :: ReactClass TableBodyProps
tableBody = mkTableBody unit
foreign import mkTableFooter :: Unit -> ReactClass TableFooterProps
tableFooter :: ReactClass TableFooterProps
tableFooter = mkTableFooter unit
foreign import mkTableHeaderColumn :: Unit -> ReactClass TableHeaderColumnProps
tableHeaderColumn :: ReactClass TableHeaderColumnProps
tableHeaderColumn = mkTableHeaderColumn unit
foreign import mkTableHeader :: Unit -> ReactClass TableHeaderProps
tableHeader :: ReactClass TableHeaderProps
tableHeader = mkTableHeader unit
foreign import mkTableRowColumn :: Unit -> ReactClass TableRowColumnProps
tableRowColumn :: ReactClass TableRowColumnProps
tableRowColumn = mkTableRowColumn unit
foreign import mkTable :: Unit -> ReactClass TableProps
table :: ReactClass TableProps
table = mkTable unit
foreign import mkTab :: Unit -> ReactClass TabProps
tab :: ReactClass TabProps
tab = mkTab unit
foreign import mkTabs :: Unit -> ReactClass TabsProps
tabs :: ReactClass TabsProps
tabs = mkTabs unit
foreign import mkTabTemplate :: Unit -> ReactClass TabTemplateProps
tabTemplate :: ReactClass TabTemplateProps
tabTemplate = mkTabTemplate unit
foreign import mkThemeWrapper :: Unit -> ReactClass ThemeWrapperProps
themeWrapper :: ReactClass ThemeWrapperProps
themeWrapper = mkThemeWrapper unit
foreign import mkTimePicker :: Unit -> ReactClass TimePickerProps
timePicker :: ReactClass TimePickerProps
timePicker = mkTimePicker unit
foreign import mkToggle :: Unit -> ReactClass ToggleProps
toggle :: ReactClass ToggleProps
toggle = mkToggle unit
foreign import mkToolbarGroup :: Unit -> ReactClass ToolbarGroupProps
toolbarGroup :: ReactClass ToolbarGroupProps
toolbarGroup = mkToolbarGroup unit
foreign import mkToolbarSeparator :: Unit -> ReactClass ToolbarSeparatorProps
toolbarSeparator :: ReactClass ToolbarSeparatorProps
toolbarSeparator = mkToolbarSeparator unit
foreign import mkToolbarTitle :: Unit -> ReactClass ToolbarTitleProps
toolbarTitle :: ReactClass ToolbarTitleProps
toolbarTitle = mkToolbarTitle unit
foreign import mkToolbar :: Unit -> ReactClass ToolbarProps
toolbar :: ReactClass ToolbarProps
toolbar = mkToolbar unit
foreign import mkTooltip :: Unit -> ReactClass TooltipProps
tooltip :: ReactClass TooltipProps
tooltip = mkTooltip unit
foreign import data AppBarOption :: *
type AppBarProps = Foreign
appBarProps :: Options AppBarOption -> AppBarProps
appBarProps = options
optAppBar_Children :: Option AppBarOption (UnknownType)
optAppBar_Children = opt "children" -- node
optAppBar_ClassName :: Option AppBarOption (String)
optAppBar_ClassName = opt "className"
optAppBar_IconClassNameLeft :: Option AppBarOption (String)
optAppBar_IconClassNameLeft = opt "iconClassNameLeft"
optAppBar_IconClassNameRight :: Option AppBarOption (String)
optAppBar_IconClassNameRight = opt "iconClassNameRight"
optAppBar_IconElementLeft :: Option AppBarOption (UnknownType)
optAppBar_IconElementLeft = opt "iconElementLeft" -- element
optAppBar_IconElementRight :: Option AppBarOption (UnknownType)
optAppBar_IconElementRight = opt "iconElementRight" -- element
optAppBar_IconStyleRight :: Option AppBarOption (UnknownType)
optAppBar_IconStyleRight = opt "iconStyleRight" -- object
optAppBar_OnLeftIconButtonTouchTap :: Option AppBarOption (EventHandlerOpt)
optAppBar_OnLeftIconButtonTouchTap = opt "onLeftIconButtonTouchTap"
optAppBar_OnRightIconButtonTouchTap :: Option AppBarOption (EventHandlerOpt)
optAppBar_OnRightIconButtonTouchTap = opt "onRightIconButtonTouchTap"
optAppBar_OnTitleTouchTap :: Option AppBarOption (EventHandlerOpt)
optAppBar_OnTitleTouchTap = opt "onTitleTouchTap"
optAppBar_ShowMenuIconButton :: Option AppBarOption (Boolean)
optAppBar_ShowMenuIconButton = opt "showMenuIconButton"
optAppBar_Style :: Option AppBarOption (UnknownType)
optAppBar_Style = opt "style" -- object
optAppBar_Title :: Option AppBarOption (UnknownType)
optAppBar_Title = opt "title" -- node
optAppBar_TitleStyle :: Option AppBarOption (UnknownType)
optAppBar_TitleStyle = opt "titleStyle" -- object
optAppBar_ZDepth :: Option AppBarOption (UnknownType)
optAppBar_ZDepth = opt "zDepth" -- custom
foreign import data AppCanvasOption :: *
type AppCanvasProps = Foreign
appCanvasProps :: Options AppCanvasOption -> AppCanvasProps
appCanvasProps = options
optAppCanvas_Children :: Option AppCanvasOption (UnknownType)
optAppCanvas_Children = opt "children" -- node
foreign import data AutoCompleteOption :: *
type AutoCompleteProps = Foreign
autoCompleteProps :: Options AutoCompleteOption -> AutoCompleteProps
autoCompleteProps = options
optAutoComplete_AnchorOrigin :: Option AutoCompleteOption (UnknownType)
optAutoComplete_AnchorOrigin = opt "anchorOrigin" -- custom
optAutoComplete_Animated :: Option AutoCompleteOption (Boolean)
optAutoComplete_Animated = opt "animated"
optAutoComplete_DataSource :: Option AutoCompleteOption (UnknownType)
optAutoComplete_DataSource = opt "dataSource" -- array
optAutoComplete_DisableFocusRipple :: Option AutoCompleteOption (Boolean)
optAutoComplete_DisableFocusRipple = opt "disableFocusRipple"
optAutoComplete_ErrorStyle :: Option AutoCompleteOption (UnknownType)
optAutoComplete_ErrorStyle = opt "errorStyle" -- object
optAutoComplete_ErrorText :: Option AutoCompleteOption (String)
optAutoComplete_ErrorText = opt "errorText"
optAutoComplete_Filter :: Option AutoCompleteOption (EventHandlerOpt)
optAutoComplete_Filter = opt "filter"
optAutoComplete_FloatingLabelText :: Option AutoCompleteOption (String)
optAutoComplete_FloatingLabelText = opt "floatingLabelText"
optAutoComplete_FullWidth :: Option AutoCompleteOption (Boolean)
optAutoComplete_FullWidth = opt "fullWidth"
optAutoComplete_HintText :: Option AutoCompleteOption (String)
optAutoComplete_HintText = opt "hintText"
optAutoComplete_ListStyle :: Option AutoCompleteOption (UnknownType)
optAutoComplete_ListStyle = opt "listStyle" -- object
optAutoComplete_MenuCloseDelay :: Option AutoCompleteOption (Number)
optAutoComplete_MenuCloseDelay = opt "menuCloseDelay"
optAutoComplete_MenuProps :: Option AutoCompleteOption (UnknownType)
optAutoComplete_MenuProps = opt "menuProps" -- object
optAutoComplete_MenuStyle :: Option AutoCompleteOption (UnknownType)
optAutoComplete_MenuStyle = opt "menuStyle" -- object
optAutoComplete_OnNewRequest :: Option AutoCompleteOption (EventHandlerOpt)
optAutoComplete_OnNewRequest = opt "onNewRequest"
optAutoComplete_OnUpdateInput :: Option AutoCompleteOption (EventHandlerOpt)
optAutoComplete_OnUpdateInput = opt "onUpdateInput"
optAutoComplete_Open :: Option AutoCompleteOption (Boolean)
optAutoComplete_Open = opt "open"
optAutoComplete_SearchText :: Option AutoCompleteOption (String)
optAutoComplete_SearchText = opt "searchText"
optAutoComplete_ShowAllItems :: Option AutoCompleteOption (UnknownType)
optAutoComplete_ShowAllItems = opt "showAllItems" -- custom
optAutoComplete_Style :: Option AutoCompleteOption (UnknownType)
optAutoComplete_Style = opt "style" -- object
optAutoComplete_TargetOrigin :: Option AutoCompleteOption (UnknownType)
optAutoComplete_TargetOrigin = opt "targetOrigin" -- custom
optAutoComplete_TouchTapCloseDelay :: Option AutoCompleteOption (Number)
optAutoComplete_TouchTapCloseDelay = opt "touchTapCloseDelay"
optAutoComplete_TriggerUpdateOnFocus :: Option AutoCompleteOption (Boolean)
optAutoComplete_TriggerUpdateOnFocus = opt "triggerUpdateOnFocus"
optAutoComplete_UpdateWhenFocused :: Option AutoCompleteOption (UnknownType)
optAutoComplete_UpdateWhenFocused = opt "updateWhenFocused" -- custom
foreign import data AvatarOption :: *
type AvatarProps = Foreign
avatarProps :: Options AvatarOption -> AvatarProps
avatarProps = options
optAvatar_BackgroundColor :: Option AvatarOption (String)
optAvatar_BackgroundColor = opt "backgroundColor"
optAvatar_Children :: Option AvatarOption (UnknownType)
optAvatar_Children = opt "children" -- node
optAvatar_ClassName :: Option AvatarOption (String)
optAvatar_ClassName = opt "className"
optAvatar_Color :: Option AvatarOption (String)
optAvatar_Color = opt "color"
optAvatar_Icon :: Option AvatarOption (UnknownType)
optAvatar_Icon = opt "icon" -- element
optAvatar_Size :: Option AvatarOption (Number)
optAvatar_Size = opt "size"
optAvatar_Src :: Option AvatarOption (String)
optAvatar_Src = opt "src"
optAvatar_Style :: Option AvatarOption (UnknownType)
optAvatar_Style = opt "style" -- object
foreign import data BadgeOption :: *
type BadgeProps = Foreign
badgeProps :: Options BadgeOption -> BadgeProps
badgeProps = options
optBadge_BadgeContent :: Option BadgeOption (UnknownType)
optBadge_BadgeContent = opt "badgeContent" -- node
optBadge_BadgeStyle :: Option BadgeOption (UnknownType)
optBadge_BadgeStyle = opt "badgeStyle" -- object
optBadge_Children :: Option BadgeOption (UnknownType)
optBadge_Children = opt "children" -- node
optBadge_ClassName :: Option BadgeOption (String)
optBadge_ClassName = opt "className"
optBadge_Primary :: Option BadgeOption (Boolean)
optBadge_Primary = opt "primary"
optBadge_Secondary :: Option BadgeOption (Boolean)
optBadge_Secondary = opt "secondary"
optBadge_Style :: Option BadgeOption (UnknownType)
optBadge_Style = opt "style" -- object
foreign import data BeforeAfterWrapperOption :: *
type BeforeAfterWrapperProps = Foreign
beforeAfterWrapperProps :: Options BeforeAfterWrapperOption -> BeforeAfterWrapperProps
beforeAfterWrapperProps = options
optBeforeAfterWrapper_AfterElementType :: Option BeforeAfterWrapperOption (String)
optBeforeAfterWrapper_AfterElementType = opt "afterElementType"
optBeforeAfterWrapper_AfterStyle :: Option BeforeAfterWrapperOption (UnknownType)
optBeforeAfterWrapper_AfterStyle = opt "afterStyle" -- object
optBeforeAfterWrapper_BeforeElementType :: Option BeforeAfterWrapperOption (String)
optBeforeAfterWrapper_BeforeElementType = opt "beforeElementType"
optBeforeAfterWrapper_BeforeStyle :: Option BeforeAfterWrapperOption (UnknownType)
optBeforeAfterWrapper_BeforeStyle = opt "beforeStyle" -- object
optBeforeAfterWrapper_Children :: Option BeforeAfterWrapperOption (UnknownType)
optBeforeAfterWrapper_Children = opt "children" -- node
optBeforeAfterWrapper_ElementType :: Option BeforeAfterWrapperOption (String)
optBeforeAfterWrapper_ElementType = opt "elementType"
optBeforeAfterWrapper_Style :: Option BeforeAfterWrapperOption (UnknownType)
optBeforeAfterWrapper_Style = opt "style" -- object
foreign import data FlatButtonLabelOption :: *
type FlatButtonLabelProps = Foreign
flatButtonLabelProps :: Options FlatButtonLabelOption -> FlatButtonLabelProps
flatButtonLabelProps = options
optFlatButtonLabel_Label :: Option FlatButtonLabelOption (UnknownType)
optFlatButtonLabel_Label = opt "label" -- node
optFlatButtonLabel_Style :: Option FlatButtonLabelOption (UnknownType)
optFlatButtonLabel_Style = opt "style" -- object
foreign import data CardActionsOption :: *
type CardActionsProps = Foreign
cardActionsProps :: Options CardActionsOption -> CardActionsProps
cardActionsProps = options
optCardActions_ActAsExpander :: Option CardActionsOption (Boolean)
optCardActions_ActAsExpander = opt "actAsExpander"
optCardActions_Children :: Option CardActionsOption (UnknownType)
optCardActions_Children = opt "children" -- node
optCardActions_Expandable :: Option CardActionsOption (Boolean)
optCardActions_Expandable = opt "expandable"
optCardActions_ShowExpandableButton :: Option CardActionsOption (Boolean)
optCardActions_ShowExpandableButton = opt "showExpandableButton"
optCardActions_Style :: Option CardActionsOption (UnknownType)
optCardActions_Style = opt "style" -- object
foreign import data CardExpandableOption :: *
type CardExpandableProps = Foreign
cardExpandableProps :: Options CardExpandableOption -> CardExpandableProps
cardExpandableProps = options
optCardExpandable_Expanded :: Option CardExpandableOption (Boolean)
optCardExpandable_Expanded = opt "expanded"
optCardExpandable_OnExpanding :: Option CardExpandableOption (EventHandlerOpt)
optCardExpandable_OnExpanding = opt "onExpanding"
optCardExpandable_Style :: Option CardExpandableOption (UnknownType)
optCardExpandable_Style = opt "style" -- object
foreign import data CardHeaderOption :: *
type CardHeaderProps = Foreign
cardHeaderProps :: Options CardHeaderOption -> CardHeaderProps
cardHeaderProps = options
optCardHeader_ActAsExpander :: Option CardHeaderOption (Boolean)
optCardHeader_ActAsExpander = opt "actAsExpander"
optCardHeader_Avatar :: Option CardHeaderOption (UnknownType)
optCardHeader_Avatar = opt "avatar" -- node
optCardHeader_Children :: Option CardHeaderOption (UnknownType)
optCardHeader_Children = opt "children" -- node
optCardHeader_Expandable :: Option CardHeaderOption (Boolean)
optCardHeader_Expandable = opt "expandable"
optCardHeader_ShowExpandableButton :: Option CardHeaderOption (Boolean)
optCardHeader_ShowExpandableButton = opt "showExpandableButton"
optCardHeader_Style :: Option CardHeaderOption (UnknownType)
optCardHeader_Style = opt "style" -- object
optCardHeader_Subtitle :: Option CardHeaderOption (UnknownType)
optCardHeader_Subtitle = opt "subtitle" -- node
optCardHeader_SubtitleColor :: Option CardHeaderOption (String)
optCardHeader_SubtitleColor = opt "subtitleColor"
optCardHeader_SubtitleStyle :: Option CardHeaderOption (UnknownType)
optCardHeader_SubtitleStyle = opt "subtitleStyle" -- object
optCardHeader_TextStyle :: Option CardHeaderOption (UnknownType)
optCardHeader_TextStyle = opt "textStyle" -- object
optCardHeader_Title :: Option CardHeaderOption (UnknownType)
optCardHeader_Title = opt "title" -- node
optCardHeader_TitleColor :: Option CardHeaderOption (String)
optCardHeader_TitleColor = opt "titleColor"
optCardHeader_TitleStyle :: Option CardHeaderOption (UnknownType)
optCardHeader_TitleStyle = opt "titleStyle" -- object
foreign import data CardMediaOption :: *
type CardMediaProps = Foreign
cardMediaProps :: Options CardMediaOption -> CardMediaProps
cardMediaProps = options
optCardMedia_ActAsExpander :: Option CardMediaOption (Boolean)
optCardMedia_ActAsExpander = opt "actAsExpander"
optCardMedia_Children :: Option CardMediaOption (UnknownType)
optCardMedia_Children = opt "children" -- node
optCardMedia_Expandable :: Option CardMediaOption (Boolean)
optCardMedia_Expandable = opt "expandable"
optCardMedia_MediaStyle :: Option CardMediaOption (UnknownType)
optCardMedia_MediaStyle = opt "mediaStyle" -- object
optCardMedia_Overlay :: Option CardMediaOption (UnknownType)
optCardMedia_Overlay = opt "overlay" -- node
optCardMedia_OverlayContainerStyle :: Option CardMediaOption (UnknownType)
optCardMedia_OverlayContainerStyle = opt "overlayContainerStyle" -- object
optCardMedia_OverlayContentStyle :: Option CardMediaOption (UnknownType)
optCardMedia_OverlayContentStyle = opt "overlayContentStyle" -- object
optCardMedia_OverlayStyle :: Option CardMediaOption (UnknownType)
optCardMedia_OverlayStyle = opt "overlayStyle" -- object
optCardMedia_Style :: Option CardMediaOption (UnknownType)
optCardMedia_Style = opt "style" -- object
foreign import data CardTextOption :: *
type CardTextProps = Foreign
cardTextProps :: Options CardTextOption -> CardTextProps
cardTextProps = options
optCardText_ActAsExpander :: Option CardTextOption (Boolean)
optCardText_ActAsExpander = opt "actAsExpander"
optCardText_Children :: Option CardTextOption (UnknownType)
optCardText_Children = opt "children" -- node
optCardText_Color :: Option CardTextOption (String)
optCardText_Color = opt "color"
optCardText_Expandable :: Option CardTextOption (Boolean)
optCardText_Expandable = opt "expandable"
optCardText_Style :: Option CardTextOption (UnknownType)
optCardText_Style = opt "style" -- object
foreign import data CardTitleOption :: *
type CardTitleProps = Foreign
cardTitleProps :: Options CardTitleOption -> CardTitleProps
cardTitleProps = options
optCardTitle_ActAsExpander :: Option CardTitleOption (Boolean)
optCardTitle_ActAsExpander = opt "actAsExpander"
optCardTitle_Children :: Option CardTitleOption (UnknownType)
optCardTitle_Children = opt "children" -- node
optCardTitle_Expandable :: Option CardTitleOption (Boolean)
optCardTitle_Expandable = opt "expandable"
optCardTitle_ShowExpandableButton :: Option CardTitleOption (Boolean)
optCardTitle_ShowExpandableButton = opt "showExpandableButton"
optCardTitle_Style :: Option CardTitleOption (UnknownType)
optCardTitle_Style = opt "style" -- object
optCardTitle_Subtitle :: Option CardTitleOption (UnknownType)
optCardTitle_Subtitle = opt "subtitle" -- node
optCardTitle_SubtitleColor :: Option CardTitleOption (String)
optCardTitle_SubtitleColor = opt "subtitleColor"
optCardTitle_SubtitleStyle :: Option CardTitleOption (UnknownType)
optCardTitle_SubtitleStyle = opt "subtitleStyle" -- object
optCardTitle_Title :: Option CardTitleOption (UnknownType)
optCardTitle_Title = opt "title" -- node
optCardTitle_TitleColor :: Option CardTitleOption (String)
optCardTitle_TitleColor = opt "titleColor"
optCardTitle_TitleStyle :: Option CardTitleOption (UnknownType)
optCardTitle_TitleStyle = opt "titleStyle" -- object
foreign import data CardOption :: *
type CardProps = Foreign
cardProps :: Options CardOption -> CardProps
cardProps = options
optCard_ActAsExpander :: Option CardOption (Boolean)
optCard_ActAsExpander = opt "actAsExpander"
optCard_Children :: Option CardOption (UnknownType)
optCard_Children = opt "children" -- node
optCard_Expandable :: Option CardOption (Boolean)
optCard_Expandable = opt "expandable"
optCard_InitiallyExpanded :: Option CardOption (Boolean)
optCard_InitiallyExpanded = opt "initiallyExpanded"
optCard_OnExpandChange :: Option CardOption (EventHandlerOpt)
optCard_OnExpandChange = opt "onExpandChange"
optCard_ShowExpandableButton :: Option CardOption (Boolean)
optCard_ShowExpandableButton = opt "showExpandableButton"
optCard_Style :: Option CardOption (UnknownType)
optCard_Style = opt "style" -- object
foreign import data CheckboxOption :: *
type CheckboxProps = Foreign
checkboxProps :: Options CheckboxOption -> CheckboxProps
checkboxProps = options
optCheckbox_Checked :: Option CheckboxOption (Boolean)
optCheckbox_Checked = opt "checked"
optCheckbox_CheckedIcon :: Option CheckboxOption (UnknownType)
optCheckbox_CheckedIcon = opt "checkedIcon" -- element
optCheckbox_DefaultChecked :: Option CheckboxOption (Boolean)
optCheckbox_DefaultChecked = opt "defaultChecked"
optCheckbox_Disabled :: Option CheckboxOption (Boolean)
optCheckbox_Disabled = opt "disabled"
optCheckbox_IconStyle :: Option CheckboxOption (UnknownType)
optCheckbox_IconStyle = opt "iconStyle" -- object
optCheckbox_LabelPosition :: Option CheckboxOption (UnknownType)
optCheckbox_LabelPosition = opt "labelPosition" -- enum
optCheckbox_LabelStyle :: Option CheckboxOption (UnknownType)
optCheckbox_LabelStyle = opt "labelStyle" -- object
optCheckbox_OnCheck :: Option CheckboxOption (EventHandlerOpt)
optCheckbox_OnCheck = opt "onCheck"
optCheckbox_UnCheckedIcon :: Option CheckboxOption (UnknownType)
optCheckbox_UnCheckedIcon = opt "unCheckedIcon" -- element
optCheckbox_ValueLink :: Option CheckboxOption (UnknownType)
optCheckbox_ValueLink = opt "valueLink" -- object
foreign import data CircularProgressOption :: *
type CircularProgressProps = Foreign
circularProgressProps :: Options CircularProgressOption -> CircularProgressProps
circularProgressProps = options
optCircularProgress_Color :: Option CircularProgressOption (String)
optCircularProgress_Color = opt "color"
optCircularProgress_InnerStyle :: Option CircularProgressOption (UnknownType)
optCircularProgress_InnerStyle = opt "innerStyle" -- object
optCircularProgress_Max :: Option CircularProgressOption (Number)
optCircularProgress_Max = opt "max"
optCircularProgress_Min :: Option CircularProgressOption (Number)
optCircularProgress_Min = opt "min"
optCircularProgress_Mode :: Option CircularProgressOption (UnknownType)
optCircularProgress_Mode = opt "mode" -- enum
optCircularProgress_Size :: Option CircularProgressOption (Number)
optCircularProgress_Size = opt "size"
optCircularProgress_Style :: Option CircularProgressOption (UnknownType)
optCircularProgress_Style = opt "style" -- object
optCircularProgress_Value :: Option CircularProgressOption (Number)
optCircularProgress_Value = opt "value"
foreign import data DatePickerOption :: *
type DatePickerProps = Foreign
datePickerProps :: Options DatePickerOption -> DatePickerProps
datePickerProps = options
optDatePicker_DateTimeFormat :: Option DatePickerOption (EventHandlerOpt)
optDatePicker_DateTimeFormat = opt "DateTimeFormat"
optDatePicker_AutoOk :: Option DatePickerOption (Boolean)
optDatePicker_AutoOk = opt "autoOk"
optDatePicker_Container :: Option DatePickerOption (UnknownType)
optDatePicker_Container = opt "container" -- enum
optDatePicker_DefaultDate :: Option DatePickerOption (UnknownType)
optDatePicker_DefaultDate = opt "defaultDate" -- object
optDatePicker_DisableYearSelection :: Option DatePickerOption (Boolean)
optDatePicker_DisableYearSelection = opt "disableYearSelection"
optDatePicker_FormatDate :: Option DatePickerOption (EventHandlerOpt)
optDatePicker_FormatDate = opt "formatDate"
optDatePicker_Locale :: Option DatePickerOption (String)
optDatePicker_Locale = opt "locale"
optDatePicker_MaxDate :: Option DatePickerOption (UnknownType)
optDatePicker_MaxDate = opt "maxDate" -- object
optDatePicker_MinDate :: Option DatePickerOption (UnknownType)
optDatePicker_MinDate = opt "minDate" -- object
optDatePicker_Mode :: Option DatePickerOption (UnknownType)
optDatePicker_Mode = opt "mode" -- enum
optDatePicker_OnChange :: Option DatePickerOption (EventHandlerOpt)
optDatePicker_OnChange = opt "onChange"
optDatePicker_OnDismiss :: Option DatePickerOption (EventHandlerOpt)
optDatePicker_OnDismiss = opt "onDismiss"
optDatePicker_OnFocus :: Option DatePickerOption (EventHandlerOpt)
optDatePicker_OnFocus = opt "onFocus"
optDatePicker_OnShow :: Option DatePickerOption (EventHandlerOpt)
optDatePicker_OnShow = opt "onShow"
optDatePicker_OnTouchTap :: Option DatePickerOption (EventHandlerOpt)
optDatePicker_OnTouchTap = opt "onTouchTap"
optDatePicker_ShouldDisableDate :: Option DatePickerOption (EventHandlerOpt)
optDatePicker_ShouldDisableDate = opt "shouldDisableDate"
optDatePicker_ShowYearSelector :: Option DatePickerOption (UnknownType)
optDatePicker_ShowYearSelector = opt "showYearSelector" -- custom
optDatePicker_Style :: Option DatePickerOption (UnknownType)
optDatePicker_Style = opt "style" -- object
optDatePicker_TextFieldStyle :: Option DatePickerOption (UnknownType)
optDatePicker_TextFieldStyle = opt "textFieldStyle" -- object
optDatePicker_Value :: Option DatePickerOption (UnknownType)
optDatePicker_Value = opt "value" -- any
optDatePicker_ValueLink :: Option DatePickerOption (UnknownType)
optDatePicker_ValueLink = opt "valueLink" -- object
optDatePicker_Wordings :: Option DatePickerOption (UnknownType)
optDatePicker_Wordings = opt "wordings" -- object
foreign import data DialogOption :: *
type DialogProps = Foreign
dialogProps :: Options DialogOption -> DialogProps
dialogProps = options
optDialog_ActionFocus :: Option DialogOption (UnknownType)
optDialog_ActionFocus = opt "actionFocus" -- custom
optDialog_Actions :: Option DialogOption (UnknownType)
optDialog_Actions = opt "actions" -- node
optDialog_ActionsContainerClassName :: Option DialogOption (String)
optDialog_ActionsContainerClassName = opt "actionsContainerClassName"
optDialog_ActionsContainerStyle :: Option DialogOption (UnknownType)
optDialog_ActionsContainerStyle = opt "actionsContainerStyle" -- object
optDialog_AutoDetectWindowHeight :: Option DialogOption (Boolean)
optDialog_AutoDetectWindowHeight = opt "autoDetectWindowHeight"
optDialog_AutoScrollBodyContent :: Option DialogOption (Boolean)
optDialog_AutoScrollBodyContent = opt "autoScrollBodyContent"
optDialog_BodyClassName :: Option DialogOption (String)
optDialog_BodyClassName = opt "bodyClassName"
optDialog_BodyStyle :: Option DialogOption (UnknownType)
optDialog_BodyStyle = opt "bodyStyle" -- object
optDialog_Children :: Option DialogOption (UnknownType)
optDialog_Children = opt "children" -- node
optDialog_ClassName :: Option DialogOption (String)
optDialog_ClassName = opt "className"
optDialog_ContentClassName :: Option DialogOption (String)
optDialog_ContentClassName = opt "contentClassName"
optDialog_ContentStyle :: Option DialogOption (UnknownType)
optDialog_ContentStyle = opt "contentStyle" -- object
optDialog_Modal :: Option DialogOption (Boolean)
optDialog_Modal = opt "modal"
optDialog_OnRequestClose :: Option DialogOption (EventHandlerOpt)
optDialog_OnRequestClose = opt "onRequestClose"
optDialog_Open :: Option DialogOption (Boolean)
optDialog_Open = opt "open"
optDialog_OverlayClassName :: Option DialogOption (String)
optDialog_OverlayClassName = opt "overlayClassName"
optDialog_OverlayStyle :: Option DialogOption (UnknownType)
optDialog_OverlayStyle = opt "overlayStyle" -- object
optDialog_RepositionOnUpdate :: Option DialogOption (Boolean)
optDialog_RepositionOnUpdate = opt "repositionOnUpdate"
optDialog_Style :: Option DialogOption (UnknownType)
optDialog_Style = opt "style" -- object
optDialog_Title :: Option DialogOption (UnknownType)
optDialog_Title = opt "title" -- node
optDialog_TitleClassName :: Option DialogOption (String)
optDialog_TitleClassName = opt "titleClassName"
optDialog_TitleStyle :: Option DialogOption (UnknownType)
optDialog_TitleStyle = opt "titleStyle" -- object
optDialog_Width :: Option DialogOption (UnknownType)
optDialog_Width = opt "width" -- custom
foreign import data DividerOption :: *
type DividerProps = Foreign
dividerProps :: Options DividerOption -> DividerProps
dividerProps = options
optDivider_ClassName :: Option DividerOption (String)
optDivider_ClassName = opt "className"
optDivider_Inset :: Option DividerOption (Boolean)
optDivider_Inset = opt "inset"
optDivider_Style :: Option DividerOption (UnknownType)
optDivider_Style = opt "style" -- object
foreign import data DropDownIconOption :: *
type DropDownIconProps = Foreign
dropDownIconProps :: Options DropDownIconOption -> DropDownIconProps
dropDownIconProps = options
optDropDownIcon_Children :: Option DropDownIconOption (UnknownType)
optDropDownIcon_Children = opt "children" -- node
optDropDownIcon_CloseOnMenuItemTouchTap :: Option DropDownIconOption (Boolean)
optDropDownIcon_CloseOnMenuItemTouchTap = opt "closeOnMenuItemTouchTap"
optDropDownIcon_IconClassName :: Option DropDownIconOption (String)
optDropDownIcon_IconClassName = opt "iconClassName"
optDropDownIcon_IconLigature :: Option DropDownIconOption (String)
optDropDownIcon_IconLigature = opt "iconLigature"
optDropDownIcon_IconStyle :: Option DropDownIconOption (UnknownType)
optDropDownIcon_IconStyle = opt "iconStyle" -- object
optDropDownIcon_MenuItems :: Option DropDownIconOption (UnknownType)
optDropDownIcon_MenuItems = opt "menuItems" -- array
optDropDownIcon_OnChange :: Option DropDownIconOption (EventHandlerOpt)
optDropDownIcon_OnChange = opt "onChange"
optDropDownIcon_Style :: Option DropDownIconOption (UnknownType)
optDropDownIcon_Style = opt "style" -- object
foreign import data DropDownMenuOption :: *
type DropDownMenuProps = Foreign
dropDownMenuProps :: Options DropDownMenuOption -> DropDownMenuProps
dropDownMenuProps = options
optDropDownMenu_AutoWidth :: Option DropDownMenuOption (Boolean)
optDropDownMenu_AutoWidth = opt "autoWidth"
optDropDownMenu_Children :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_Children = opt "children" -- node
optDropDownMenu_ClassName :: Option DropDownMenuOption (String)
optDropDownMenu_ClassName = opt "className"
optDropDownMenu_Disabled :: Option DropDownMenuOption (Boolean)
optDropDownMenu_Disabled = opt "disabled"
optDropDownMenu_DisplayMember :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_DisplayMember = opt "displayMember" -- custom
optDropDownMenu_IconStyle :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_IconStyle = opt "iconStyle" -- object
optDropDownMenu_LabelMember :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_LabelMember = opt "labelMember" -- custom
optDropDownMenu_LabelStyle :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_LabelStyle = opt "labelStyle" -- object
optDropDownMenu_MaxHeight :: Option DropDownMenuOption (Number)
optDropDownMenu_MaxHeight = opt "maxHeight"
optDropDownMenu_MenuItems :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_MenuItems = opt "menuItems" -- custom
optDropDownMenu_MenuStyle :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_MenuStyle = opt "menuStyle" -- object
optDropDownMenu_OnChange :: Option DropDownMenuOption (EventHandlerOpt)
optDropDownMenu_OnChange = opt "onChange"
optDropDownMenu_OpenImmediately :: Option DropDownMenuOption (Boolean)
optDropDownMenu_OpenImmediately = opt "openImmediately"
optDropDownMenu_SelectedIndex :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_SelectedIndex = opt "selectedIndex" -- custom
optDropDownMenu_Style :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_Style = opt "style" -- object
optDropDownMenu_UnderlineStyle :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_UnderlineStyle = opt "underlineStyle" -- object
optDropDownMenu_Value :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_Value = opt "value" -- any
optDropDownMenu_ValueLink :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_ValueLink = opt "valueLink" -- custom
optDropDownMenu_ValueMember :: Option DropDownMenuOption (UnknownType)
optDropDownMenu_ValueMember = opt "valueMember" -- custom
foreign import data FlatButtonOption :: *
type FlatButtonProps = Foreign
flatButtonProps :: Options FlatButtonOption -> FlatButtonProps
flatButtonProps = options
optFlatButton_BackgroundColor :: Option FlatButtonOption (String)
optFlatButton_BackgroundColor = opt "backgroundColor"
optFlatButton_Children :: Option FlatButtonOption (UnknownType)
optFlatButton_Children = opt "children" -- node
optFlatButton_Disabled :: Option FlatButtonOption (Boolean)
optFlatButton_Disabled = opt "disabled"
optFlatButton_HoverColor :: Option FlatButtonOption (String)
optFlatButton_HoverColor = opt "hoverColor"
optFlatButton_Label :: Option FlatButtonOption (UnknownType)
optFlatButton_Label = opt "label" -- custom
optFlatButton_LabelPosition :: Option FlatButtonOption (UnknownType)
optFlatButton_LabelPosition = opt "labelPosition" -- enum
optFlatButton_LabelStyle :: Option FlatButtonOption (UnknownType)
optFlatButton_LabelStyle = opt "labelStyle" -- object
optFlatButton_OnKeyboardFocus :: Option FlatButtonOption (EventHandlerOpt)
optFlatButton_OnKeyboardFocus = opt "onKeyboardFocus"
optFlatButton_OnMouseEnter :: Option FlatButtonOption (EventHandlerOpt)
optFlatButton_OnMouseEnter = opt "onMouseEnter"
optFlatButton_OnMouseLeave :: Option FlatButtonOption (EventHandlerOpt)
optFlatButton_OnMouseLeave = opt "onMouseLeave"
optFlatButton_OnTouchStart :: Option FlatButtonOption (EventHandlerOpt)
optFlatButton_OnTouchStart = opt "onTouchStart"
optFlatButton_Primary :: Option FlatButtonOption (Boolean)
optFlatButton_Primary = opt "primary"
optFlatButton_RippleColor :: Option FlatButtonOption (String)
optFlatButton_RippleColor = opt "rippleColor"
optFlatButton_Secondary :: Option FlatButtonOption (Boolean)
optFlatButton_Secondary = opt "secondary"
optFlatButton_Style :: Option FlatButtonOption (UnknownType)
optFlatButton_Style = opt "style" -- object
foreign import data FloatingActionButtonOption :: *
type FloatingActionButtonProps = Foreign
floatingActionButtonProps :: Options FloatingActionButtonOption -> FloatingActionButtonProps
floatingActionButtonProps = options
optFloatingActionButton_BackgroundColor :: Option FloatingActionButtonOption (String)
optFloatingActionButton_BackgroundColor = opt "backgroundColor"
optFloatingActionButton_Children :: Option FloatingActionButtonOption (UnknownType)
optFloatingActionButton_Children = opt "children" -- node
optFloatingActionButton_Disabled :: Option FloatingActionButtonOption (Boolean)
optFloatingActionButton_Disabled = opt "disabled"
optFloatingActionButton_DisabledColor :: Option FloatingActionButtonOption (String)
optFloatingActionButton_DisabledColor = opt "disabledColor"
optFloatingActionButton_IconClassName :: Option FloatingActionButtonOption (String)
optFloatingActionButton_IconClassName = opt "iconClassName"
optFloatingActionButton_IconStyle :: Option FloatingActionButtonOption (UnknownType)
optFloatingActionButton_IconStyle = opt "iconStyle" -- object
optFloatingActionButton_Mini :: Option FloatingActionButtonOption (Boolean)
optFloatingActionButton_Mini = opt "mini"
optFloatingActionButton_OnMouseDown :: Option FloatingActionButtonOption (EventHandlerOpt)
optFloatingActionButton_OnMouseDown = opt "onMouseDown"
optFloatingActionButton_OnMouseEnter :: Option FloatingActionButtonOption (EventHandlerOpt)
optFloatingActionButton_OnMouseEnter = opt "onMouseEnter"
optFloatingActionButton_OnMouseLeave :: Option FloatingActionButtonOption (EventHandlerOpt)
optFloatingActionButton_OnMouseLeave = opt "onMouseLeave"
optFloatingActionButton_OnMouseUp :: Option FloatingActionButtonOption (EventHandlerOpt)
optFloatingActionButton_OnMouseUp = opt "onMouseUp"
optFloatingActionButton_OnTouchEnd :: Option FloatingActionButtonOption (EventHandlerOpt)
optFloatingActionButton_OnTouchEnd = opt "onTouchEnd"
optFloatingActionButton_OnTouchStart :: Option FloatingActionButtonOption (EventHandlerOpt)
optFloatingActionButton_OnTouchStart = opt "onTouchStart"
optFloatingActionButton_Secondary :: Option FloatingActionButtonOption (Boolean)
optFloatingActionButton_Secondary = opt "secondary"
optFloatingActionButton_Style :: Option FloatingActionButtonOption (UnknownType)
optFloatingActionButton_Style = opt "style" -- object
foreign import data FontIconOption :: *
type FontIconProps = Foreign
fontIconProps :: Options FontIconOption -> FontIconProps
fontIconProps = options
optFontIcon_Color :: Option FontIconOption (String)
optFontIcon_Color = opt "color"
optFontIcon_HoverColor :: Option FontIconOption (String)
optFontIcon_HoverColor = opt "hoverColor"
optFontIcon_OnMouseEnter :: Option FontIconOption (EventHandlerOpt)
optFontIcon_OnMouseEnter = opt "onMouseEnter"
optFontIcon_OnMouseLeave :: Option FontIconOption (EventHandlerOpt)
optFontIcon_OnMouseLeave = opt "onMouseLeave"
optFontIcon_Style :: Option FontIconOption (UnknownType)
optFontIcon_Style = opt "style" -- object
foreign import data GridListOption :: *
type GridListProps = Foreign
gridListProps :: Options GridListOption -> GridListProps
gridListProps = options
optGridList_CellHeight :: Option GridListOption (Number)
optGridList_CellHeight = opt "cellHeight"
optGridList_Children :: Option GridListOption (UnknownType)
optGridList_Children = opt "children" -- node
optGridList_Cols :: Option GridListOption (Number)
optGridList_Cols = opt "cols"
optGridList_Padding :: Option GridListOption (Number)
optGridList_Padding = opt "padding"
optGridList_Style :: Option GridListOption (UnknownType)
optGridList_Style = opt "style" -- object
foreign import data GridTileOption :: *
type GridTileProps = Foreign
gridTileProps :: Options GridTileOption -> GridTileProps
gridTileProps = options
optGridTile_ActionIcon :: Option GridTileOption (UnknownType)
optGridTile_ActionIcon = opt "actionIcon" -- element
optGridTile_ActionPosition :: Option GridTileOption (UnknownType)
optGridTile_ActionPosition = opt "actionPosition" -- enum
optGridTile_Children :: Option GridTileOption (UnknownType)
optGridTile_Children = opt "children" -- node
optGridTile_Cols :: Option GridTileOption (Number)
optGridTile_Cols = opt "cols"
optGridTile_RootClass :: Option GridTileOption (UnknownType)
optGridTile_RootClass = opt "rootClass" -- union
optGridTile_Rows :: Option GridTileOption (Number)
optGridTile_Rows = opt "rows"
optGridTile_Style :: Option GridTileOption (UnknownType)
optGridTile_Style = opt "style" -- object
optGridTile_Subtitle :: Option GridTileOption (UnknownType)
optGridTile_Subtitle = opt "subtitle" -- node
optGridTile_Title :: Option GridTileOption (UnknownType)
optGridTile_Title = opt "title" -- node
optGridTile_TitleBackground :: Option GridTileOption (String)
optGridTile_TitleBackground = opt "titleBackground"
optGridTile_TitlePosition :: Option GridTileOption (UnknownType)
optGridTile_TitlePosition = opt "titlePosition" -- enum
foreign import data IconButtonOption :: *
type IconButtonProps = Foreign
iconButtonProps :: Options IconButtonOption -> IconButtonProps
iconButtonProps = options
optIconButton_Children :: Option IconButtonOption (UnknownType)
optIconButton_Children = opt "children" -- node
optIconButton_ClassName :: Option IconButtonOption (String)
optIconButton_ClassName = opt "className"
optIconButton_Disabled :: Option IconButtonOption (Boolean)
optIconButton_Disabled = opt "disabled"
optIconButton_IconClassName :: Option IconButtonOption (String)
optIconButton_IconClassName = opt "iconClassName"
optIconButton_IconStyle :: Option IconButtonOption (UnknownType)
optIconButton_IconStyle = opt "iconStyle" -- object
optIconButton_OnBlur :: Option IconButtonOption (EventHandlerOpt)
optIconButton_OnBlur = opt "onBlur"
optIconButton_OnFocus :: Option IconButtonOption (EventHandlerOpt)
optIconButton_OnFocus = opt "onFocus"
optIconButton_OnKeyboardFocus :: Option IconButtonOption (EventHandlerOpt)
optIconButton_OnKeyboardFocus = opt "onKeyboardFocus"
optIconButton_OnMouseEnter :: Option IconButtonOption (EventHandlerOpt)
optIconButton_OnMouseEnter = opt "onMouseEnter"
optIconButton_OnMouseLeave :: Option IconButtonOption (EventHandlerOpt)
optIconButton_OnMouseLeave = opt "onMouseLeave"
optIconButton_Style :: Option IconButtonOption (UnknownType)
optIconButton_Style = opt "style" -- object
optIconButton_Tooltip :: Option IconButtonOption (UnknownType)
optIconButton_Tooltip = opt "tooltip" -- node
optIconButton_TooltipPosition :: Option IconButtonOption (UnknownType)
optIconButton_TooltipPosition = opt "tooltipPosition" -- custom
optIconButton_TooltipStyles :: Option IconButtonOption (UnknownType)
optIconButton_TooltipStyles = opt "tooltipStyles" -- object
optIconButton_Touch :: Option IconButtonOption (Boolean)
optIconButton_Touch = opt "touch"
foreign import data InkBarOption :: *
type InkBarProps = Foreign
inkBarProps :: Options InkBarOption -> InkBarProps
inkBarProps = options
optInkBar_Color :: Option InkBarOption (String)
optInkBar_Color = opt "color"
optInkBar_Left :: Option InkBarOption (String)
optInkBar_Left = opt "left"
optInkBar_Style :: Option InkBarOption (UnknownType)
optInkBar_Style = opt "style" -- object
optInkBar_Width :: Option InkBarOption (String)
optInkBar_Width = opt "width"
foreign import data LeftNavOption :: *
type LeftNavProps = Foreign
leftNavProps :: Options LeftNavOption -> LeftNavProps
leftNavProps = options
optLeftNav_Children :: Option LeftNavOption (UnknownType)
optLeftNav_Children = opt "children" -- node
optLeftNav_ClassName :: Option LeftNavOption (String)
optLeftNav_ClassName = opt "className"
optLeftNav_DisableSwipeToOpen :: Option LeftNavOption (Boolean)
optLeftNav_DisableSwipeToOpen = opt "disableSwipeToOpen"
optLeftNav_Docked :: Option LeftNavOption (Boolean)
optLeftNav_Docked = opt "docked"
optLeftNav_Header :: Option LeftNavOption (UnknownType)
optLeftNav_Header = opt "header" -- custom
optLeftNav_MenuItemClassName :: Option LeftNavOption (UnknownType)
optLeftNav_MenuItemClassName = opt "menuItemClassName" -- custom
optLeftNav_MenuItemClassNameLink :: Option LeftNavOption (UnknownType)
optLeftNav_MenuItemClassNameLink = opt "menuItemClassNameLink" -- custom
optLeftNav_MenuItemClassNameSubheader :: Option LeftNavOption (UnknownType)
optLeftNav_MenuItemClassNameSubheader = opt "menuItemClassNameSubheader" -- custom
optLeftNav_MenuItems :: Option LeftNavOption (UnknownType)
optLeftNav_MenuItems = opt "menuItems" -- custom
optLeftNav_OnChange :: Option LeftNavOption (UnknownType)
optLeftNav_OnChange = opt "onChange" -- custom
optLeftNav_OnNavClose :: Option LeftNavOption (UnknownType)
optLeftNav_OnNavClose = opt "onNavClose" -- custom
optLeftNav_OnNavOpen :: Option LeftNavOption (UnknownType)
optLeftNav_OnNavOpen = opt "onNavOpen" -- custom
optLeftNav_OnRequestChange :: Option LeftNavOption (EventHandlerOpt)
optLeftNav_OnRequestChange = opt "onRequestChange"
optLeftNav_Open :: Option LeftNavOption (Boolean)
optLeftNav_Open = opt "open"
optLeftNav_OpenRight :: Option LeftNavOption (Boolean)
optLeftNav_OpenRight = opt "openRight"
optLeftNav_OverlayClassName :: Option LeftNavOption (String)
optLeftNav_OverlayClassName = opt "overlayClassName"
optLeftNav_OverlayStyle :: Option LeftNavOption (UnknownType)
optLeftNav_OverlayStyle = opt "overlayStyle" -- object
optLeftNav_SelectedIndex :: Option LeftNavOption (UnknownType)
optLeftNav_SelectedIndex = opt "selectedIndex" -- custom
optLeftNav_Style :: Option LeftNavOption (UnknownType)
optLeftNav_Style = opt "style" -- object
optLeftNav_SwipeAreaWidth :: Option LeftNavOption (Number)
optLeftNav_SwipeAreaWidth = opt "swipeAreaWidth"
optLeftNav_Width :: Option LeftNavOption (Number)
optLeftNav_Width = opt "width"
foreign import data LinearProgressOption :: *
type LinearProgressProps = Foreign
linearProgressProps :: Options LinearProgressOption -> LinearProgressProps
linearProgressProps = options
optLinearProgress_Color :: Option LinearProgressOption (String)
optLinearProgress_Color = opt "color"
optLinearProgress_Max :: Option LinearProgressOption (Number)
optLinearProgress_Max = opt "max"
optLinearProgress_Min :: Option LinearProgressOption (Number)
optLinearProgress_Min = opt "min"
optLinearProgress_Mode :: Option LinearProgressOption (UnknownType)
optLinearProgress_Mode = opt "mode" -- enum
optLinearProgress_Style :: Option LinearProgressOption (UnknownType)
optLinearProgress_Style = opt "style" -- object
optLinearProgress_Value :: Option LinearProgressOption (Number)
optLinearProgress_Value = opt "value"
foreign import data ListDividerOption :: *
type ListDividerProps = Foreign
listDividerProps :: Options ListDividerOption -> ListDividerProps
listDividerProps = options
foreign import data ListItemOption :: *
type ListItemProps = Foreign
listItemProps :: Options ListItemOption -> ListItemProps
listItemProps = options
optListItem_AutoGenerateNestedIndicator :: Option ListItemOption (Boolean)
optListItem_AutoGenerateNestedIndicator = opt "autoGenerateNestedIndicator"
optListItem_Children :: Option ListItemOption (UnknownType)
optListItem_Children = opt "children" -- node
optListItem_DisableKeyboardFocus :: Option ListItemOption (Boolean)
optListItem_DisableKeyboardFocus = opt "disableKeyboardFocus"
optListItem_Disabled :: Option ListItemOption (Boolean)
optListItem_Disabled = opt "disabled"
optListItem_InitiallyOpen :: Option ListItemOption (Boolean)
optListItem_InitiallyOpen = opt "initiallyOpen"
optListItem_InnerDivStyle :: Option ListItemOption (UnknownType)
optListItem_InnerDivStyle = opt "innerDivStyle" -- object
optListItem_InsetChildren :: Option ListItemOption (Boolean)
optListItem_InsetChildren = opt "insetChildren"
optListItem_LeftAvatar :: Option ListItemOption (UnknownType)
optListItem_LeftAvatar = opt "leftAvatar" -- element
optListItem_LeftCheckbox :: Option ListItemOption (UnknownType)
optListItem_LeftCheckbox = opt "leftCheckbox" -- element
optListItem_LeftIcon :: Option ListItemOption (UnknownType)
optListItem_LeftIcon = opt "leftIcon" -- element
optListItem_NestedItems :: Option ListItemOption (UnknownType)
optListItem_NestedItems = opt "nestedItems" -- arrayOf
optListItem_NestedLevel :: Option ListItemOption (Number)
optListItem_NestedLevel = opt "nestedLevel"
optListItem_OnKeyboardFocus :: Option ListItemOption (EventHandlerOpt)
optListItem_OnKeyboardFocus = opt "onKeyboardFocus"
optListItem_OnMouseEnter :: Option ListItemOption (EventHandlerOpt)
optListItem_OnMouseEnter = opt "onMouseEnter"
optListItem_OnMouseLeave :: Option ListItemOption (EventHandlerOpt)
optListItem_OnMouseLeave = opt "onMouseLeave"
optListItem_OnNestedListToggle :: Option ListItemOption (EventHandlerOpt)
optListItem_OnNestedListToggle = opt "onNestedListToggle"
optListItem_OnTouchStart :: Option ListItemOption (EventHandlerOpt)
optListItem_OnTouchStart = opt "onTouchStart"
optListItem_OnTouchTap :: Option ListItemOption (EventHandlerOpt)
optListItem_OnTouchTap = opt "onTouchTap"
optListItem_PrimaryText :: Option ListItemOption (UnknownType)
optListItem_PrimaryText = opt "primaryText" -- node
optListItem_PrimaryTogglesNestedList :: Option ListItemOption (Boolean)
optListItem_PrimaryTogglesNestedList = opt "primaryTogglesNestedList"
optListItem_RightAvatar :: Option ListItemOption (UnknownType)
optListItem_RightAvatar = opt "rightAvatar" -- element
optListItem_RightIcon :: Option ListItemOption (UnknownType)
optListItem_RightIcon = opt "rightIcon" -- element
optListItem_RightIconButton :: Option ListItemOption (UnknownType)
optListItem_RightIconButton = opt "rightIconButton" -- element
optListItem_RightToggle :: Option ListItemOption (UnknownType)
optListItem_RightToggle = opt "rightToggle" -- element
optListItem_SecondaryText :: Option ListItemOption (UnknownType)
optListItem_SecondaryText = opt "secondaryText" -- node
optListItem_SecondaryTextLines :: Option ListItemOption (UnknownType)
optListItem_SecondaryTextLines = opt "secondaryTextLines" -- enum
optListItem_Style :: Option ListItemOption (UnknownType)
optListItem_Style = opt "style" -- object
foreign import data ListOption :: *
type ListProps = Foreign
listProps :: Options ListOption -> ListProps
listProps = options
optList_Children :: Option ListOption (UnknownType)
optList_Children = opt "children" -- node
optList_InsetSubheader :: Option ListOption (Boolean)
optList_InsetSubheader = opt "insetSubheader"
optList_Style :: Option ListOption (UnknownType)
optList_Style = opt "style" -- object
optList_Subheader :: Option ListOption (UnknownType)
optList_Subheader = opt "subheader" -- node
optList_SubheaderStyle :: Option ListOption (UnknownType)
optList_SubheaderStyle = opt "subheaderStyle" -- object
optList_ZDepth :: Option ListOption (UnknownType)
optList_ZDepth = opt "zDepth" -- custom
foreign import data NestedListOption :: *
type NestedListProps = Foreign
nestedListProps :: Options NestedListOption -> NestedListProps
nestedListProps = options
optNestedList_Children :: Option NestedListOption (UnknownType)
optNestedList_Children = opt "children" -- node
optNestedList_NestedLevel :: Option NestedListOption (Number)
optNestedList_NestedLevel = opt "nestedLevel"
optNestedList_Open :: Option NestedListOption (Boolean)
optNestedList_Open = opt "open"
optNestedList_Style :: Option NestedListOption (UnknownType)
optNestedList_Style = opt "style" -- object
foreign import data MenuDividerOption :: *
type MenuDividerProps = Foreign
menuDividerProps :: Options MenuDividerOption -> MenuDividerProps
menuDividerProps = options
optMenuDivider_Style :: Option MenuDividerOption (UnknownType)
optMenuDivider_Style = opt "style" -- object
foreign import data MenuItemOption :: *
type MenuItemProps = Foreign
menuItemProps :: Options MenuItemOption -> MenuItemProps
menuItemProps = options
optMenuItem_Checked :: Option MenuItemOption (Boolean)
optMenuItem_Checked = opt "checked"
optMenuItem_Children :: Option MenuItemOption (UnknownType)
optMenuItem_Children = opt "children" -- node
optMenuItem_Desktop :: Option MenuItemOption (Boolean)
optMenuItem_Desktop = opt "desktop"
optMenuItem_Disabled :: Option MenuItemOption (Boolean)
optMenuItem_Disabled = opt "disabled"
optMenuItem_FocusState :: Option MenuItemOption (UnknownType)
optMenuItem_FocusState = opt "focusState" -- enum
optMenuItem_InnerDivStyle :: Option MenuItemOption (UnknownType)
optMenuItem_InnerDivStyle = opt "innerDivStyle" -- object
optMenuItem_InsetChildren :: Option MenuItemOption (Boolean)
optMenuItem_InsetChildren = opt "insetChildren"
optMenuItem_LeftIcon :: Option MenuItemOption (UnknownType)
optMenuItem_LeftIcon = opt "leftIcon" -- element
optMenuItem_MenuItems :: Option MenuItemOption (UnknownType)
optMenuItem_MenuItems = opt "menuItems" -- node
optMenuItem_OnTouchTap :: Option MenuItemOption (EventHandlerOpt)
optMenuItem_OnTouchTap = opt "onTouchTap"
optMenuItem_RightIcon :: Option MenuItemOption (UnknownType)
optMenuItem_RightIcon = opt "rightIcon" -- element
optMenuItem_SecondaryText :: Option MenuItemOption (UnknownType)
optMenuItem_SecondaryText = opt "secondaryText" -- node
optMenuItem_Style :: Option MenuItemOption (UnknownType)
optMenuItem_Style = opt "style" -- object
optMenuItem_Value :: Option MenuItemOption (UnknownType)
optMenuItem_Value = opt "value" -- any
foreign import data MenuOption :: *
type MenuProps = Foreign
menuProps :: Options MenuOption -> MenuProps
menuProps = options
optMenu_Animated :: Option MenuOption (Boolean)
optMenu_Animated = opt "animated"
optMenu_AutoWidth :: Option MenuOption (Boolean)
optMenu_AutoWidth = opt "autoWidth"
optMenu_Children :: Option MenuOption (UnknownType)
optMenu_Children = opt "children" -- node
optMenu_Desktop :: Option MenuOption (Boolean)
optMenu_Desktop = opt "desktop"
optMenu_InitiallyKeyboardFocused :: Option MenuOption (Boolean)
optMenu_InitiallyKeyboardFocused = opt "initiallyKeyboardFocused"
optMenu_ListStyle :: Option MenuOption (UnknownType)
optMenu_ListStyle = opt "listStyle" -- object
optMenu_MaxHeight :: Option MenuOption (Number)
optMenu_MaxHeight = opt "maxHeight"
optMenu_Multiple :: Option MenuOption (Boolean)
optMenu_Multiple = opt "multiple"
optMenu_OnChange :: Option MenuOption (EventHandlerOpt)
optMenu_OnChange = opt "onChange"
optMenu_OnEscKeyDown :: Option MenuOption (EventHandlerOpt)
optMenu_OnEscKeyDown = opt "onEscKeyDown"
optMenu_OnItemTouchTap :: Option MenuOption (EventHandlerOpt)
optMenu_OnItemTouchTap = opt "onItemTouchTap"
optMenu_OnKeyDown :: Option MenuOption (EventHandlerOpt)
optMenu_OnKeyDown = opt "onKeyDown"
optMenu_OpenDirection :: Option MenuOption (UnknownType)
optMenu_OpenDirection = opt "openDirection" -- custom
optMenu_SelectedMenuItemStyle :: Option MenuOption (UnknownType)
optMenu_SelectedMenuItemStyle = opt "selectedMenuItemStyle" -- object
optMenu_Style :: Option MenuOption (UnknownType)
optMenu_Style = opt "style" -- object
optMenu_Value :: Option MenuOption (UnknownType)
optMenu_Value = opt "value" -- any
optMenu_ValueLink :: Option MenuOption (UnknownType)
optMenu_ValueLink = opt "valueLink" -- object
optMenu_Width :: Option MenuOption (UnknownType)
optMenu_Width = opt "width" -- custom
optMenu_ZDepth :: Option MenuOption (UnknownType)
optMenu_ZDepth = opt "zDepth" -- custom
foreign import data OverlayOption :: *
type OverlayProps = Foreign
overlayProps :: Options OverlayOption -> OverlayProps
overlayProps = options
optOverlay_AutoLockScrolling :: Option OverlayOption (Boolean)
optOverlay_AutoLockScrolling = opt "autoLockScrolling"
optOverlay_Show :: Option OverlayOption (Boolean)
optOverlay_Show = opt "show"
optOverlay_Style :: Option OverlayOption (UnknownType)
optOverlay_Style = opt "style" -- object
optOverlay_TransitionEnabled :: Option OverlayOption (Boolean)
optOverlay_TransitionEnabled = opt "transitionEnabled"
foreign import data PaperOption :: *
type PaperProps = Foreign
paperProps :: Options PaperOption -> PaperProps
paperProps = options
optPaper_Children :: Option PaperOption (UnknownType)
optPaper_Children = opt "children" -- node
optPaper_Circle :: Option PaperOption (Boolean)
optPaper_Circle = opt "circle"
optPaper_Rounded :: Option PaperOption (Boolean)
optPaper_Rounded = opt "rounded"
optPaper_Style :: Option PaperOption (UnknownType)
optPaper_Style = opt "style" -- object
optPaper_TransitionEnabled :: Option PaperOption (Boolean)
optPaper_TransitionEnabled = opt "transitionEnabled"
optPaper_ZDepth :: Option PaperOption (UnknownType)
optPaper_ZDepth = opt "zDepth" -- custom
foreign import data RadioButtonGroupOption :: *
type RadioButtonGroupProps = Foreign
radioButtonGroupProps :: Options RadioButtonGroupOption -> RadioButtonGroupProps
radioButtonGroupProps = options
optRadioButtonGroup_Children :: Option RadioButtonGroupOption (UnknownType)
optRadioButtonGroup_Children = opt "children" -- node
optRadioButtonGroup_ClassName :: Option RadioButtonGroupOption (String)
optRadioButtonGroup_ClassName = opt "className"
optRadioButtonGroup_DefaultSelected :: Option RadioButtonGroupOption (String)
optRadioButtonGroup_DefaultSelected = opt "defaultSelected"
optRadioButtonGroup_LabelPosition :: Option RadioButtonGroupOption (UnknownType)
optRadioButtonGroup_LabelPosition = opt "labelPosition" -- enum
optRadioButtonGroup_Name :: Option RadioButtonGroupOption (String)
optRadioButtonGroup_Name = opt "name"
optRadioButtonGroup_OnChange :: Option RadioButtonGroupOption (EventHandlerOpt)
optRadioButtonGroup_OnChange = opt "onChange"
optRadioButtonGroup_Style :: Option RadioButtonGroupOption (UnknownType)
optRadioButtonGroup_Style = opt "style" -- object
optRadioButtonGroup_ValueSelected :: Option RadioButtonGroupOption (String)
optRadioButtonGroup_ValueSelected = opt "valueSelected"
foreign import data RadioButtonOption :: *
type RadioButtonProps = Foreign
radioButtonProps :: Options RadioButtonOption -> RadioButtonProps
radioButtonProps = options
optRadioButton_Checked :: Option RadioButtonOption (Boolean)
optRadioButton_Checked = opt "checked"
optRadioButton_Disabled :: Option RadioButtonOption (Boolean)
optRadioButton_Disabled = opt "disabled"
optRadioButton_IconStyle :: Option RadioButtonOption (UnknownType)
optRadioButton_IconStyle = opt "iconStyle" -- object
optRadioButton_LabelPosition :: Option RadioButtonOption (UnknownType)
optRadioButton_LabelPosition = opt "labelPosition" -- enum
optRadioButton_LabelStyle :: Option RadioButtonOption (UnknownType)
optRadioButton_LabelStyle = opt "labelStyle" -- object
optRadioButton_OnCheck :: Option RadioButtonOption (EventHandlerOpt)
optRadioButton_OnCheck = opt "onCheck"
optRadioButton_Value :: Option RadioButtonOption (String)
optRadioButton_Value = opt "value"
foreign import data RaisedButtonOption :: *
type RaisedButtonProps = Foreign
raisedButtonProps :: Options RaisedButtonOption -> RaisedButtonProps
raisedButtonProps = options
optRaisedButton_BackgroundColor :: Option RaisedButtonOption (String)
optRaisedButton_BackgroundColor = opt "backgroundColor"
optRaisedButton_Children :: Option RaisedButtonOption (UnknownType)
optRaisedButton_Children = opt "children" -- node
optRaisedButton_ClassName :: Option RaisedButtonOption (String)
optRaisedButton_ClassName = opt "className"
optRaisedButton_Disabled :: Option RaisedButtonOption (Boolean)
optRaisedButton_Disabled = opt "disabled"
optRaisedButton_DisabledBackgroundColor :: Option RaisedButtonOption (String)
optRaisedButton_DisabledBackgroundColor = opt "disabledBackgroundColor"
optRaisedButton_DisabledLabelColor :: Option RaisedButtonOption (String)
optRaisedButton_DisabledLabelColor = opt "disabledLabelColor"
optRaisedButton_FullWidth :: Option RaisedButtonOption (Boolean)
optRaisedButton_FullWidth = opt "fullWidth"
optRaisedButton_Label :: Option RaisedButtonOption (UnknownType)
optRaisedButton_Label = opt "label" -- custom
optRaisedButton_LabelColor :: Option RaisedButtonOption (String)
optRaisedButton_LabelColor = opt "labelColor"
optRaisedButton_LabelPosition :: Option RaisedButtonOption (UnknownType)
optRaisedButton_LabelPosition = opt "labelPosition" -- enum
optRaisedButton_LabelStyle :: Option RaisedButtonOption (UnknownType)
optRaisedButton_LabelStyle = opt "labelStyle" -- object
optRaisedButton_OnMouseDown :: Option RaisedButtonOption (EventHandlerOpt)
optRaisedButton_OnMouseDown = opt "onMouseDown"
optRaisedButton_OnMouseEnter :: Option RaisedButtonOption (EventHandlerOpt)
optRaisedButton_OnMouseEnter = opt "onMouseEnter"
optRaisedButton_OnMouseLeave :: Option RaisedButtonOption (EventHandlerOpt)
optRaisedButton_OnMouseLeave = opt "onMouseLeave"
optRaisedButton_OnMouseUp :: Option RaisedButtonOption (EventHandlerOpt)
optRaisedButton_OnMouseUp = opt "onMouseUp"
optRaisedButton_OnTouchEnd :: Option RaisedButtonOption (EventHandlerOpt)
optRaisedButton_OnTouchEnd = opt "onTouchEnd"
optRaisedButton_OnTouchStart :: Option RaisedButtonOption (EventHandlerOpt)
optRaisedButton_OnTouchStart = opt "onTouchStart"
optRaisedButton_Primary :: Option RaisedButtonOption (Boolean)
optRaisedButton_Primary = opt "primary"
optRaisedButton_Secondary :: Option RaisedButtonOption (Boolean)
optRaisedButton_Secondary = opt "secondary"
optRaisedButton_Style :: Option RaisedButtonOption (UnknownType)
optRaisedButton_Style = opt "style" -- object
foreign import data RefreshIndicatorOption :: *
type RefreshIndicatorProps = Foreign
refreshIndicatorProps :: Options RefreshIndicatorOption -> RefreshIndicatorProps
refreshIndicatorProps = options
optRefreshIndicator_Color :: Option RefreshIndicatorOption (String)
optRefreshIndicator_Color = opt "color"
optRefreshIndicator_Left :: Option RefreshIndicatorOption (Number)
optRefreshIndicator_Left = opt "left"
optRefreshIndicator_LoadingColor :: Option RefreshIndicatorOption (String)
optRefreshIndicator_LoadingColor = opt "loadingColor"
optRefreshIndicator_Percentage :: Option RefreshIndicatorOption (Number)
optRefreshIndicator_Percentage = opt "percentage"
optRefreshIndicator_Size :: Option RefreshIndicatorOption (Number)
optRefreshIndicator_Size = opt "size"
optRefreshIndicator_Status :: Option RefreshIndicatorOption (UnknownType)
optRefreshIndicator_Status = opt "status" -- enum
optRefreshIndicator_Style :: Option RefreshIndicatorOption (UnknownType)
optRefreshIndicator_Style = opt "style" -- object
optRefreshIndicator_Top :: Option RefreshIndicatorOption (Number)
optRefreshIndicator_Top = opt "top"
foreign import data SliderOption :: *
type SliderProps = Foreign
sliderProps :: Options SliderOption -> SliderProps
sliderProps = options
optSlider_DefaultValue :: Option SliderOption (UnknownType)
optSlider_DefaultValue = opt "defaultValue" -- custom
optSlider_Description :: Option SliderOption (String)
optSlider_Description = opt "description"
optSlider_DisableFocusRipple :: Option SliderOption (Boolean)
optSlider_DisableFocusRipple = opt "disableFocusRipple"
optSlider_Disabled :: Option SliderOption (Boolean)
optSlider_Disabled = opt "disabled"
optSlider_Error :: Option SliderOption (String)
optSlider_Error = opt "error"
optSlider_Max :: Option SliderOption (UnknownType)
optSlider_Max = opt "max" -- custom
optSlider_Min :: Option SliderOption (UnknownType)
optSlider_Min = opt "min" -- custom
optSlider_Name :: Option SliderOption (String)
optSlider_Name = opt "name"
optSlider_OnBlur :: Option SliderOption (EventHandlerOpt)
optSlider_OnBlur = opt "onBlur"
optSlider_OnChange :: Option SliderOption (EventHandlerOpt)
optSlider_OnChange = opt "onChange"
optSlider_OnDragStart :: Option SliderOption (EventHandlerOpt)
optSlider_OnDragStart = opt "onDragStart"
optSlider_OnDragStop :: Option SliderOption (EventHandlerOpt)
optSlider_OnDragStop = opt "onDragStop"
optSlider_OnFocus :: Option SliderOption (EventHandlerOpt)
optSlider_OnFocus = opt "onFocus"
optSlider_Required :: Option SliderOption (Boolean)
optSlider_Required = opt "required"
optSlider_Step :: Option SliderOption (Number)
optSlider_Step = opt "step"
optSlider_Style :: Option SliderOption (UnknownType)
optSlider_Style = opt "style" -- object
optSlider_Value :: Option SliderOption (UnknownType)
optSlider_Value = opt "value" -- custom
foreign import data SnackbarOption :: *
type SnackbarProps = Foreign
snackbarProps :: Options SnackbarOption -> SnackbarProps
snackbarProps = options
optSnackbar_Action :: Option SnackbarOption (String)
optSnackbar_Action = opt "action"
optSnackbar_AutoHideDuration :: Option SnackbarOption (Number)
optSnackbar_AutoHideDuration = opt "autoHideDuration"
optSnackbar_BodyStyle :: Option SnackbarOption (UnknownType)
optSnackbar_BodyStyle = opt "bodyStyle" -- object
optSnackbar_ClassName :: Option SnackbarOption (String)
optSnackbar_ClassName = opt "className"
optSnackbar_Message :: Option SnackbarOption (UnknownType)
optSnackbar_Message = opt "message" -- node
optSnackbar_OnActionTouchTap :: Option SnackbarOption (EventHandlerOpt)
optSnackbar_OnActionTouchTap = opt "onActionTouchTap"
optSnackbar_OnDismiss :: Option SnackbarOption (UnknownType)
optSnackbar_OnDismiss = opt "onDismiss" -- custom
optSnackbar_OnRequestClose :: Option SnackbarOption (EventHandlerOpt)
optSnackbar_OnRequestClose = opt "onRequestClose"
optSnackbar_OnShow :: Option SnackbarOption (UnknownType)
optSnackbar_OnShow = opt "onShow" -- custom
optSnackbar_Open :: Option SnackbarOption (Boolean)
optSnackbar_Open = opt "open"
optSnackbar_OpenOnMount :: Option SnackbarOption (UnknownType)
optSnackbar_OpenOnMount = opt "openOnMount" -- custom
optSnackbar_Style :: Option SnackbarOption (UnknownType)
optSnackbar_Style = opt "style" -- object
foreign import data SvgIconOption :: *
type SvgIconProps = Foreign
svgIconProps :: Options SvgIconOption -> SvgIconProps
svgIconProps = options
optSvgIcon_Children :: Option SvgIconOption (UnknownType)
optSvgIcon_Children = opt "children" -- node
optSvgIcon_Color :: Option SvgIconOption (String)
optSvgIcon_Color = opt "color"
optSvgIcon_HoverColor :: Option SvgIconOption (String)
optSvgIcon_HoverColor = opt "hoverColor"
optSvgIcon_OnMouseEnter :: Option SvgIconOption (EventHandlerOpt)
optSvgIcon_OnMouseEnter = opt "onMouseEnter"
optSvgIcon_OnMouseLeave :: Option SvgIconOption (EventHandlerOpt)
optSvgIcon_OnMouseLeave = opt "onMouseLeave"
optSvgIcon_Style :: Option SvgIconOption (UnknownType)
optSvgIcon_Style = opt "style" -- object
optSvgIcon_ViewBox :: Option SvgIconOption (String)
optSvgIcon_ViewBox = opt "viewBox"
foreign import data TableBodyOption :: *
type TableBodyProps = Foreign
tableBodyProps :: Options TableBodyOption -> TableBodyProps
tableBodyProps = options
optTableBody_AllRowsSelected :: Option TableBodyOption (Boolean)
optTableBody_AllRowsSelected = opt "allRowsSelected"
optTableBody_Children :: Option TableBodyOption (UnknownType)
optTableBody_Children = opt "children" -- node
optTableBody_ClassName :: Option TableBodyOption (String)
optTableBody_ClassName = opt "className"
optTableBody_DeselectOnClickaway :: Option TableBodyOption (Boolean)
optTableBody_DeselectOnClickaway = opt "deselectOnClickaway"
optTableBody_DisplayRowCheckbox :: Option TableBodyOption (Boolean)
optTableBody_DisplayRowCheckbox = opt "displayRowCheckbox"
optTableBody_MultiSelectable :: Option TableBodyOption (Boolean)
optTableBody_MultiSelectable = opt "multiSelectable"
optTableBody_OnCellClick :: Option TableBodyOption (EventHandlerOpt)
optTableBody_OnCellClick = opt "onCellClick"
optTableBody_OnCellHover :: Option TableBodyOption (EventHandlerOpt)
optTableBody_OnCellHover = opt "onCellHover"
optTableBody_OnCellHoverExit :: Option TableBodyOption (EventHandlerOpt)
optTableBody_OnCellHoverExit = opt "onCellHoverExit"
optTableBody_OnRowHover :: Option TableBodyOption (EventHandlerOpt)
optTableBody_OnRowHover = opt "onRowHover"
optTableBody_OnRowHoverExit :: Option TableBodyOption (EventHandlerOpt)
optTableBody_OnRowHoverExit = opt "onRowHoverExit"
optTableBody_OnRowSelection :: Option TableBodyOption (EventHandlerOpt)
optTableBody_OnRowSelection = opt "onRowSelection"
optTableBody_PreScanRows :: Option TableBodyOption (Boolean)
optTableBody_PreScanRows = opt "preScanRows"
optTableBody_Selectable :: Option TableBodyOption (Boolean)
optTableBody_Selectable = opt "selectable"
optTableBody_ShowRowHover :: Option TableBodyOption (Boolean)
optTableBody_ShowRowHover = opt "showRowHover"
optTableBody_StripedRows :: Option TableBodyOption (Boolean)
optTableBody_StripedRows = opt "stripedRows"
optTableBody_Style :: Option TableBodyOption (UnknownType)
optTableBody_Style = opt "style" -- object
foreign import data TableFooterOption :: *
type TableFooterProps = Foreign
tableFooterProps :: Options TableFooterOption -> TableFooterProps
tableFooterProps = options
optTableFooter_AdjustForCheckbox :: Option TableFooterOption (Boolean)
optTableFooter_AdjustForCheckbox = opt "adjustForCheckbox"
optTableFooter_Children :: Option TableFooterOption (UnknownType)
optTableFooter_Children = opt "children" -- node
optTableFooter_ClassName :: Option TableFooterOption (String)
optTableFooter_ClassName = opt "className"
optTableFooter_Style :: Option TableFooterOption (UnknownType)
optTableFooter_Style = opt "style" -- object
foreign import data TableHeaderColumnOption :: *
type TableHeaderColumnProps = Foreign
tableHeaderColumnProps :: Options TableHeaderColumnOption -> TableHeaderColumnProps
tableHeaderColumnProps = options
optTableHeaderColumn_Children :: Option TableHeaderColumnOption (UnknownType)
optTableHeaderColumn_Children = opt "children" -- node
optTableHeaderColumn_ClassName :: Option TableHeaderColumnOption (String)
optTableHeaderColumn_ClassName = opt "className"
optTableHeaderColumn_ColumnNumber :: Option TableHeaderColumnOption (Number)
optTableHeaderColumn_ColumnNumber = opt "columnNumber"
optTableHeaderColumn_Key :: Option TableHeaderColumnOption (String)
optTableHeaderColumn_Key = opt "key"
optTableHeaderColumn_OnClick :: Option TableHeaderColumnOption (EventHandlerOpt)
optTableHeaderColumn_OnClick = opt "onClick"
optTableHeaderColumn_Style :: Option TableHeaderColumnOption (UnknownType)
optTableHeaderColumn_Style = opt "style" -- object
optTableHeaderColumn_Tooltip :: Option TableHeaderColumnOption (String)
optTableHeaderColumn_Tooltip = opt "tooltip"
optTableHeaderColumn_TooltipStyle :: Option TableHeaderColumnOption (UnknownType)
optTableHeaderColumn_TooltipStyle = opt "tooltipStyle" -- object
foreign import data TableHeaderOption :: *
type TableHeaderProps = Foreign
tableHeaderProps :: Options TableHeaderOption -> TableHeaderProps
tableHeaderProps = options
optTableHeader_AdjustForCheckbox :: Option TableHeaderOption (Boolean)
optTableHeader_AdjustForCheckbox = opt "adjustForCheckbox"
optTableHeader_Children :: Option TableHeaderOption (UnknownType)
optTableHeader_Children = opt "children" -- node
optTableHeader_ClassName :: Option TableHeaderOption (String)
optTableHeader_ClassName = opt "className"
optTableHeader_DisplaySelectAll :: Option TableHeaderOption (Boolean)
optTableHeader_DisplaySelectAll = opt "displaySelectAll"
optTableHeader_EnableSelectAll :: Option TableHeaderOption (Boolean)
optTableHeader_EnableSelectAll = opt "enableSelectAll"
optTableHeader_OnSelectAll :: Option TableHeaderOption (EventHandlerOpt)
optTableHeader_OnSelectAll = opt "onSelectAll"
optTableHeader_SelectAllSelected :: Option TableHeaderOption (Boolean)
optTableHeader_SelectAllSelected = opt "selectAllSelected"
optTableHeader_Style :: Option TableHeaderOption (UnknownType)
optTableHeader_Style = opt "style" -- object
foreign import data TableRowColumnOption :: *
type TableRowColumnProps = Foreign
tableRowColumnProps :: Options TableRowColumnOption -> TableRowColumnProps
tableRowColumnProps = options
optTableRowColumn_Children :: Option TableRowColumnOption (UnknownType)
optTableRowColumn_Children = opt "children" -- node
optTableRowColumn_ClassName :: Option TableRowColumnOption (String)
optTableRowColumn_ClassName = opt "className"
optTableRowColumn_ColumnNumber :: Option TableRowColumnOption (Number)
optTableRowColumn_ColumnNumber = opt "columnNumber"
optTableRowColumn_Hoverable :: Option TableRowColumnOption (Boolean)
optTableRowColumn_Hoverable = opt "hoverable"
optTableRowColumn_Key :: Option TableRowColumnOption (String)
optTableRowColumn_Key = opt "key"
optTableRowColumn_OnClick :: Option TableRowColumnOption (EventHandlerOpt)
optTableRowColumn_OnClick = opt "onClick"
optTableRowColumn_OnHover :: Option TableRowColumnOption (EventHandlerOpt)
optTableRowColumn_OnHover = opt "onHover"
optTableRowColumn_OnHoverExit :: Option TableRowColumnOption (EventHandlerOpt)
optTableRowColumn_OnHoverExit = opt "onHoverExit"
optTableRowColumn_Style :: Option TableRowColumnOption (UnknownType)
optTableRowColumn_Style = opt "style" -- object
foreign import data TableOption :: *
type TableProps = Foreign
tableProps :: Options TableOption -> TableProps
tableProps = options
optTable_AllRowsSelected :: Option TableOption (Boolean)
optTable_AllRowsSelected = opt "allRowsSelected"
optTable_BodyStyle :: Option TableOption (UnknownType)
optTable_BodyStyle = opt "bodyStyle" -- object
optTable_Children :: Option TableOption (UnknownType)
optTable_Children = opt "children" -- node
optTable_ClassName :: Option TableOption (String)
optTable_ClassName = opt "className"
optTable_FixedFooter :: Option TableOption (Boolean)
optTable_FixedFooter = opt "fixedFooter"
optTable_FixedHeader :: Option TableOption (Boolean)
optTable_FixedHeader = opt "fixedHeader"
optTable_FooterStyle :: Option TableOption (UnknownType)
optTable_FooterStyle = opt "footerStyle" -- object
optTable_HeaderStyle :: Option TableOption (UnknownType)
optTable_HeaderStyle = opt "headerStyle" -- object
optTable_Height :: Option TableOption (String)
optTable_Height = opt "height"
optTable_MultiSelectable :: Option TableOption (Boolean)
optTable_MultiSelectable = opt "multiSelectable"
optTable_OnCellClick :: Option TableOption (EventHandlerOpt)
optTable_OnCellClick = opt "onCellClick"
optTable_OnCellHover :: Option TableOption (EventHandlerOpt)
optTable_OnCellHover = opt "onCellHover"
optTable_OnCellHoverExit :: Option TableOption (EventHandlerOpt)
optTable_OnCellHoverExit = opt "onCellHoverExit"
optTable_OnRowHover :: Option TableOption (EventHandlerOpt)
optTable_OnRowHover = opt "onRowHover"
optTable_OnRowHoverExit :: Option TableOption (EventHandlerOpt)
optTable_OnRowHoverExit = opt "onRowHoverExit"
optTable_OnRowSelection :: Option TableOption (EventHandlerOpt)
optTable_OnRowSelection = opt "onRowSelection"
optTable_Selectable :: Option TableOption (Boolean)
optTable_Selectable = opt "selectable"
optTable_Style :: Option TableOption (UnknownType)
optTable_Style = opt "style" -- object
optTable_WrapperStyle :: Option TableOption (UnknownType)
optTable_WrapperStyle = opt "wrapperStyle" -- object
foreign import data TabOption :: *
type TabProps = Foreign
tabProps :: Options TabOption -> TabProps
tabProps = options
optTab_ClassName :: Option TabOption (String)
optTab_ClassName = opt "className"
optTab_Label :: Option TabOption (UnknownType)
optTab_Label = opt "label" -- node
optTab_OnActive :: Option TabOption (EventHandlerOpt)
optTab_OnActive = opt "onActive"
optTab_OnTouchTap :: Option TabOption (EventHandlerOpt)
optTab_OnTouchTap = opt "onTouchTap"
optTab_Selected :: Option TabOption (Boolean)
optTab_Selected = opt "selected"
optTab_Style :: Option TabOption (UnknownType)
optTab_Style = opt "style" -- object
optTab_Value :: Option TabOption (UnknownType)
optTab_Value = opt "value" -- any
optTab_Width :: Option TabOption (String)
optTab_Width = opt "width"
foreign import data TabsOption :: *
type TabsProps = Foreign
tabsProps :: Options TabsOption -> TabsProps
tabsProps = options
optTabs_Children :: Option TabsOption (UnknownType)
optTabs_Children = opt "children" -- node
optTabs_ClassName :: Option TabsOption (String)
optTabs_ClassName = opt "className"
optTabs_ContentContainerClassName :: Option TabsOption (String)
optTabs_ContentContainerClassName = opt "contentContainerClassName"
optTabs_ContentContainerStyle :: Option TabsOption (UnknownType)
optTabs_ContentContainerStyle = opt "contentContainerStyle" -- object
optTabs_InitialSelectedIndex :: Option TabsOption (Number)
optTabs_InitialSelectedIndex = opt "initialSelectedIndex"
optTabs_InkBarStyle :: Option TabsOption (UnknownType)
optTabs_InkBarStyle = opt "inkBarStyle" -- object
optTabs_OnChange :: Option TabsOption (EventHandlerOpt)
optTabs_OnChange = opt "onChange"
optTabs_Style :: Option TabsOption (UnknownType)
optTabs_Style = opt "style" -- object
optTabs_TabItemContainerStyle :: Option TabsOption (UnknownType)
optTabs_TabItemContainerStyle = opt "tabItemContainerStyle" -- object
optTabs_TabTemplate :: Option TabsOption (EventHandlerOpt)
optTabs_TabTemplate = opt "tabTemplate"
optTabs_Value :: Option TabsOption (UnknownType)
optTabs_Value = opt "value" -- any
foreign import data TabTemplateOption :: *
type TabTemplateProps = Foreign
tabTemplateProps :: Options TabTemplateOption -> TabTemplateProps
tabTemplateProps = options
optTabTemplate_Children :: Option TabTemplateOption (UnknownType)
optTabTemplate_Children = opt "children" -- node
optTabTemplate_Selected :: Option TabTemplateOption (Boolean)
optTabTemplate_Selected = opt "selected"
foreign import data ThemeWrapperOption :: *
type ThemeWrapperProps = Foreign
themeWrapperProps :: Options ThemeWrapperOption -> ThemeWrapperProps
themeWrapperProps = options
optThemeWrapper_Children :: Option ThemeWrapperOption (UnknownType)
optThemeWrapper_Children = opt "children" -- node
optThemeWrapper_Theme :: Option ThemeWrapperOption (UnknownType)
optThemeWrapper_Theme = opt "theme" -- object
foreign import data TimePickerOption :: *
type TimePickerProps = Foreign
timePickerProps :: Options TimePickerOption -> TimePickerProps
timePickerProps = options
optTimePicker_AutoOk :: Option TimePickerOption (Boolean)
optTimePicker_AutoOk = opt "autoOk"
optTimePicker_DefaultTime :: Option TimePickerOption (UnknownType)
optTimePicker_DefaultTime = opt "defaultTime" -- object
optTimePicker_Format :: Option TimePickerOption (UnknownType)
optTimePicker_Format = opt "format" -- enum
optTimePicker_OnChange :: Option TimePickerOption (EventHandlerOpt)
optTimePicker_OnChange = opt "onChange"
optTimePicker_OnDismiss :: Option TimePickerOption (EventHandlerOpt)
optTimePicker_OnDismiss = opt "onDismiss"
optTimePicker_OnFocus :: Option TimePickerOption (EventHandlerOpt)
optTimePicker_OnFocus = opt "onFocus"
optTimePicker_OnShow :: Option TimePickerOption (EventHandlerOpt)
optTimePicker_OnShow = opt "onShow"
optTimePicker_OnTouchTap :: Option TimePickerOption (EventHandlerOpt)
optTimePicker_OnTouchTap = opt "onTouchTap"
optTimePicker_Pedantic :: Option TimePickerOption (Boolean)
optTimePicker_Pedantic = opt "pedantic"
optTimePicker_Style :: Option TimePickerOption (UnknownType)
optTimePicker_Style = opt "style" -- object
optTimePicker_TextFieldStyle :: Option TimePickerOption (UnknownType)
optTimePicker_TextFieldStyle = opt "textFieldStyle" -- object
foreign import data ToggleOption :: *
type ToggleProps = Foreign
toggleProps :: Options ToggleOption -> ToggleProps
toggleProps = options
optToggle_DefaultToggled :: Option ToggleOption (Boolean)
optToggle_DefaultToggled = opt "defaultToggled"
optToggle_Disabled :: Option ToggleOption (Boolean)
optToggle_Disabled = opt "disabled"
optToggle_ElementStyle :: Option ToggleOption (UnknownType)
optToggle_ElementStyle = opt "elementStyle" -- object
optToggle_IconStyle :: Option ToggleOption (UnknownType)
optToggle_IconStyle = opt "iconStyle" -- object
optToggle_LabelPosition :: Option ToggleOption (UnknownType)
optToggle_LabelPosition = opt "labelPosition" -- enum
optToggle_LabelStyle :: Option ToggleOption (UnknownType)
optToggle_LabelStyle = opt "labelStyle" -- object
optToggle_OnToggle :: Option ToggleOption (EventHandlerOpt)
optToggle_OnToggle = opt "onToggle"
optToggle_RippleStyle :: Option ToggleOption (UnknownType)
optToggle_RippleStyle = opt "rippleStyle" -- object
optToggle_ThumbStyle :: Option ToggleOption (UnknownType)
optToggle_ThumbStyle = opt "thumbStyle" -- object
optToggle_Toggled :: Option ToggleOption (Boolean)
optToggle_Toggled = opt "toggled"
optToggle_TrackStyle :: Option ToggleOption (UnknownType)
optToggle_TrackStyle = opt "trackStyle" -- object
optToggle_ValueLink :: Option ToggleOption (UnknownType)
optToggle_ValueLink = opt "valueLink" -- object
foreign import data ToolbarGroupOption :: *
type ToolbarGroupProps = Foreign
toolbarGroupProps :: Options ToolbarGroupOption -> ToolbarGroupProps
toolbarGroupProps = options
optToolbarGroup_Children :: Option ToolbarGroupOption (UnknownType)
optToolbarGroup_Children = opt "children" -- node
optToolbarGroup_ClassName :: Option ToolbarGroupOption (String)
optToolbarGroup_ClassName = opt "className"
optToolbarGroup_FirstChild :: Option ToolbarGroupOption (Boolean)
optToolbarGroup_FirstChild = opt "firstChild"
optToolbarGroup_Float :: Option ToolbarGroupOption (UnknownType)
optToolbarGroup_Float = opt "float" -- enum
optToolbarGroup_LastChild :: Option ToolbarGroupOption (Boolean)
optToolbarGroup_LastChild = opt "lastChild"
optToolbarGroup_Style :: Option ToolbarGroupOption (UnknownType)
optToolbarGroup_Style = opt "style" -- object
foreign import data ToolbarSeparatorOption :: *
type ToolbarSeparatorProps = Foreign
toolbarSeparatorProps :: Options ToolbarSeparatorOption -> ToolbarSeparatorProps
toolbarSeparatorProps = options
optToolbarSeparator_ClassName :: Option ToolbarSeparatorOption (String)
optToolbarSeparator_ClassName = opt "className"
optToolbarSeparator_Style :: Option ToolbarSeparatorOption (UnknownType)
optToolbarSeparator_Style = opt "style" -- object
foreign import data ToolbarTitleOption :: *
type ToolbarTitleProps = Foreign
toolbarTitleProps :: Options ToolbarTitleOption -> ToolbarTitleProps
toolbarTitleProps = options
optToolbarTitle_ClassName :: Option ToolbarTitleOption (String)
optToolbarTitle_ClassName = opt "className"
optToolbarTitle_Style :: Option ToolbarTitleOption (UnknownType)
optToolbarTitle_Style = opt "style" -- object
optToolbarTitle_Text :: Option ToolbarTitleOption (String)
optToolbarTitle_Text = opt "text"
foreign import data ToolbarOption :: *
type ToolbarProps = Foreign
toolbarProps :: Options ToolbarOption -> ToolbarProps
toolbarProps = options
optToolbar_Children :: Option ToolbarOption (UnknownType)
optToolbar_Children = opt "children" -- node
optToolbar_ClassName :: Option ToolbarOption (String)
optToolbar_ClassName = opt "className"
optToolbar_NoGutter :: Option ToolbarOption (Boolean)
optToolbar_NoGutter = opt "noGutter"
optToolbar_Style :: Option ToolbarOption (UnknownType)
optToolbar_Style = opt "style" -- object
foreign import data TooltipOption :: *
type TooltipProps = Foreign
tooltipProps :: Options TooltipOption -> TooltipProps
tooltipProps = options
optTooltip_ClassName :: Option TooltipOption (String)
optTooltip_ClassName = opt "className"
optTooltip_HorizontalPosition :: Option TooltipOption (UnknownType)
optTooltip_HorizontalPosition = opt "horizontalPosition" -- enum
optTooltip_Label :: Option TooltipOption (UnknownType)
optTooltip_Label = opt "label" -- node
optTooltip_Show :: Option TooltipOption (Boolean)
optTooltip_Show = opt "show"
optTooltip_Style :: Option TooltipOption (UnknownType)
optTooltip_Style = opt "style" -- object
optTooltip_Touch :: Option TooltipOption (Boolean)
optTooltip_Touch = opt "touch"
optTooltip_VerticalPosition :: Option TooltipOption (UnknownType)
optTooltip_VerticalPosition = opt "verticalPosition" -- enum
