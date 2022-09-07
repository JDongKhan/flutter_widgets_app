import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/animal/animated_align_demo.dart';
import 'package:flutter_widgets_app/animal/animated_builder_demo.dart';
import 'package:flutter_widgets_app/animal/animated_container_demo.dart';
import 'package:flutter_widgets_app/animal/animated_default_text_style_demo.dart';
import 'package:flutter_widgets_app/animal/animated_icon_demo.dart';
import 'package:flutter_widgets_app/animal/animated_modal_barrier_demo.dart';
import 'package:flutter_widgets_app/animal/animated_opacity_demo.dart';
import 'package:flutter_widgets_app/animal/animated_padding_demo.dart';
import 'package:flutter_widgets_app/animal/animated_physical_model_demo.dart';
import 'package:flutter_widgets_app/animal/animated_positioned_demo.dart';
import 'package:flutter_widgets_app/animal/animated_positioned_directional_demo.dart';
import 'package:flutter_widgets_app/basic/absorb_pointer_demo.dart';
import 'package:flutter_widgets_app/basic/align_demo.dart';
import 'package:flutter_widgets_app/basic/aspect_ratio_demo.dart';
import 'package:flutter_widgets_app/basic/backdrop_filter_demo.dart';
import 'package:flutter_widgets_app/basic/baseline_demo.dart';
import 'package:flutter_widgets_app/basic/builder_demo.dart';
import 'package:flutter_widgets_app/basic/center_demo.dart';
import 'package:flutter_widgets_app/basic/clip_oval_demo.dart';
import 'package:flutter_widgets_app/basic/clip_path_demo.dart';
import 'package:flutter_widgets_app/basic/clip_rect_demo.dart';
import 'package:flutter_widgets_app/basic/clip_rrect_demo.dart';
import 'package:flutter_widgets_app/basic/colored_box_demo.dart';
import 'package:flutter_widgets_app/basic/column_demo.dart';
import 'package:flutter_widgets_app/basic/composited_transform_target_demo.dart';
import 'package:flutter_widgets_app/basic/constrained_box_demo.dart';
import 'package:flutter_widgets_app/basic/constraints_transform_box_demo.dart';
import 'package:flutter_widgets_app/basic/custom_multi_child_layout_demo.dart';
import 'package:flutter_widgets_app/basic/custom_paint_demo.dart';
import 'package:flutter_widgets_app/basic/custom_single_child_layout_demo.dart';
import 'package:flutter_widgets_app/basic/default_asset_bundle_demo.dart';
import 'package:flutter_widgets_app/basic/fitted_box_demo.dart';
import 'package:flutter_widgets_app/basic/flex_demo.dart';
import 'package:flutter_widgets_app/basic/flexible_demo.dart';
import 'package:flutter_widgets_app/basic/flow_demo.dart';
import 'package:flutter_widgets_app/basic/fractional_translation_demo.dart';
import 'package:flutter_widgets_app/basic/fractionally_sized_box_demo.dart';
import 'package:flutter_widgets_app/basic/indexed_stack_demo.dart';
import 'package:flutter_widgets_app/basic/intrinsic_width_height_demo.dart';
import 'package:flutter_widgets_app/basic/limited_box_demo.dart';
import 'package:flutter_widgets_app/basic/list_body_demo.dart';
import 'package:flutter_widgets_app/basic/listener_demo.dart';
import 'package:flutter_widgets_app/basic/offstage_demo.dart';
import 'package:flutter_widgets_app/basic/opacity_demo.dart';
import 'package:flutter_widgets_app/basic/overflow_box_demo.dart';
import 'package:flutter_widgets_app/basic/padding_demo.dart';
import 'package:flutter_widgets_app/basic/physical_model_demo.dart';
import 'package:flutter_widgets_app/basic/raw_image_demo.dart';
import 'package:flutter_widgets_app/basic/repaint_boundary_demo.dart';
import 'package:flutter_widgets_app/basic/rich_text_demo.dart';
import 'package:flutter_widgets_app/basic/rotated_box_demo.dart';
import 'package:flutter_widgets_app/basic/shader_mask_demo.dart';
import 'package:flutter_widgets_app/basic/sized_box_demo.dart';
import 'package:flutter_widgets_app/basic/stack_demo.dart';
import 'package:flutter_widgets_app/basic/stateful_builder_demo.dart';
import 'package:flutter_widgets_app/basic/transform_demo.dart';
import 'package:flutter_widgets_app/basic/widget_to_render_box_adapter_demo.dart';
import 'package:flutter_widgets_app/basic/wrap_demo.dart';
import 'package:flutter_widgets_app/demo/bar_chart/bar_chart_demo.dart';
import 'package:flutter_widgets_app/demo/circle_progress/circle_progress_demo.dart';
import 'package:flutter_widgets_app/demo/drawing_board/drawing_board_demo.dart';
import 'package:flutter_widgets_app/widgets/about_dialog_demo.dart';
import 'package:flutter_widgets_app/widgets/autofill_group_demo.dart';
import 'package:flutter_widgets_app/widgets/interactive_viewer_demo.dart';
import 'package:flutter_widgets_app/widgets/keyboard_listener_demo.dart';

import 'Materials/animated_icons_demo.dart';
import 'Materials/autocomplete_demo.dart';
import 'Materials/text_field_demo.dart';
import 'animal/align_transition_demo.dart';
import 'animal/animated_cross_fade_demo.dart';
import 'animal/animated_list_demo.dart';
import 'animal/animated_size_demo.dart';
import 'animal/animated_switcher_demo.dart';
import 'animal/decorated_box_transition_demo.dart';
import 'animal/default_text_style_transition_demo.dart';
import 'animal/fade_transition_demo.dart';
import 'animal/positioned_transition_demo.dart';
import 'animal/relative_positioned_transition_demo.dart';
import 'animal/rotation_transition_demo.dart';
import 'animal/scale_transition_demo.dart';
import 'animal/size_transition_demo.dart';
import 'animal/slide_transition_demo.dart';
import 'cupertino/cupertinoFullscreen_dialog_transition_demo.dart';
import 'cupertino/cupertino_action_sheet_demo.dart';
import 'cupertino/cupertino_activity_indicator_demo.dart';
import 'cupertino/cupertino_button_demo.dart';
import 'cupertino/cupertino_context_menu_demo.dart';
import 'cupertino/cupertino_date_picker_demo.dart';
import 'cupertino/cupertino_form_row_demo.dart';
import 'cupertino/cupertino_navigation_bar_demo.dart';
import 'cupertino/cupertino_page_scaffold_demo.dart';
import 'cupertino/cupertino_picker_demo.dart';
import 'cupertino/cupertino_scrollbar_demo.dart';
import 'cupertino/cupertino_search_textField_demo.dart';
import 'cupertino/cupertino_segmented_control_demo.dart';
import 'cupertino/cupertino_sliver_refresh_control_demo.dart';
import 'cupertino/cupertino_switch_demo.dart';
import 'cupertino/cupertino_tab_bar_demo.dart';
import 'cupertino/cupertino_text_field_demo.dart';
import 'cupertino/cupertino_text_selection_toolbar_demo.dart';
import 'demo/chart/example/animated_line_chart_demo.dart';
import 'demo/heartbeat/heartbeat_demo.dart';
import 'materials/anack_bar_action_demo.dart';
import 'materials/bottom_app_bar_demo.dart';
import 'materials/bottom_navigation_bar_demo.dart';
import 'materials/bottom_sheet_demo.dart';
import 'materials/button_bar_demo.dart';
import 'materials/button_demo.dart';
import 'materials/calendar_date_picker_demo.dart';
import 'materials/checkbox_demo.dart';
import 'materials/chip_demo.dart';
import 'materials/circle_avatar_demo.dart';
import 'materials/data_table_demo.dart';
import 'materials/drawer_demo.dart';
import 'materials/expand_icon_demo.dart';
import 'materials/expansion_panel_list_demo.dart';
import 'materials/expansion_tile_demo.dart';
import 'materials/grid_tile_demo.dart';
import 'materials/ink_demo.dart';
import 'materials/input_date_picker_form_field_demo.dart';
import 'materials/navigation_rail_demo.dart';
import 'materials/progress_indicator_demo.dart';
import 'materials/radio_demo.dart';
import 'materials/range_slider_demo.dart';
import 'materials/show_xx_demo.dart';
import 'materials/stepper_demo.dart';
import 'materials/switch_demo.dart';
import 'materials/tabbar_demo.dart';
import 'materials/toggle_buttons_demo.dart';
import 'widgets/about_list_tile_demo.dart';
import 'widgets/color_filtered_demo.dart';
import 'widgets/custom_painter_demo.dart';
import 'widgets/default_text_editing_shortcuts_demo.dart';
import 'widgets/dismissible_demo.dart';
import 'widgets/draggable_demo.dart';
import 'widgets/draggable_scrollable_sheet_demo.dart';
import 'widgets/fadeIn_image_demo.dart';
import 'widgets/focus_manager_demo.dart';
import 'widgets/focus_scope_demo.dart';
import 'widgets/focus_traversal_demo.dart';
import 'widgets/form_demo.dart';
import 'widgets/glowing_overscroll_indicator_demo.dart';
import 'widgets/grid_paper_demo.dart';
import 'widgets/hero_demo.dart';
import 'widgets/icon_demo.dart';
import 'widgets/image_filtered_demo.dart';
import 'widgets/image_icon_demo.dart';
import 'widgets/list_wheel_scroll_view_demo.dart';
import 'widgets/modal_barrier_demo.dart';
import 'widgets/navigation_toolbar_demo.dart';
import 'widgets/nested_scroll_view_demo.dart';
import 'widgets/overflow_bar_demo.dart';
import 'widgets/page_storage_demo.dart';
import 'widgets/page_view_demo.dart';
import 'widgets/platform_menu_bar_demo.dart';
import 'widgets/platform_view_demo.dart';
import 'widgets/reorderable_list_demo.dart';
import 'widgets/restoration_demo.dart';
import 'widgets/scroll_configuration_demo.dart';
import 'widgets/shared_app_data_demo.dart';
import 'widgets/size_changed_layout_notifier_demo.dart';
import 'widgets/sliver_demo.dart';
import 'widgets/table_demo.dart';

///@Description TODO
///@Author jd

typedef DemoWidgetBuilder = Widget? Function(BuildContext context);

Map<String, DemoWidgetBuilder> routes = {
  'AboutListTile': (BuildContext context) {
    return const AboutListTileDemo();
  },
  'AnimatedIcons': (BuildContext context) {
    return const AnimatedIconsDemo();
  },
  'Autocomplete': (BuildContext context) {
    return AutocompleteDemo();
  },
  'AutofillGroup': (BuildContext context) {
    return const AutofillGroupDemo();
  },
  'CustomPainter': (BuildContext context) {
    return const CustomPainterDemo();
  },
  'ColorFiltered': (BuildContext context) {
    return const ColorFilteredDemo();
  },
  'DefaultTextEditingShortcuts': (BuildContext context) {
    return const DefaultTextEditingShortcutsDemo();
  },
  'Dismissible': (BuildContext context) {
    return const DismissibleDemo();
  },
  'Draggable': (BuildContext context) {
    return const DraggableDemo();
  },
  'DraggableScrollableSheet': (BuildContext context) {
    return const DraggableScrollableSheetDemo();
  },
  'FadeInImage': (BuildContext context) {
    return const FadeInImageDemo();
  },
  'FocusManager': (BuildContext context) {
    return const FocusManagerDemo();
  },
  'FocusScope': (BuildContext context) {
    return const FocusScopeDemo();
  },
  'FocusTraversal': (BuildContext context) {
    return const FocusTraversalDemo();
  },
  'Form': (BuildContext context) {
    return const FormDemo();
  },
  'GridPaper': (BuildContext context) {
    return const GridPaperDemo();
  },
  'Hero': (BuildContext context) {
    return const HeroDemo();
  },
  'Icon': (BuildContext context) {
    return const IconDemo();
  },
  'ImageFiltered': (BuildContext context) {
    return const ImageFilteredDemo();
  },
  'ImageIcon': (BuildContext context) {
    return const ImageIconDemo();
  },
  'InteractiveViewer': (BuildContext context) {
    return const InteractiveViewerDemo();
  },
  'KeyboardListener': (BuildContext context) {
    return const KeyboardListenerDemo();
  },
  'ListWheelScrollView': (BuildContext context) {
    return const ListWheelScrollViewDemo();
  },
  'ModalBarrier': (BuildContext context) {
    return const ModalBarrierDemo();
  },
  'NavigationToolbar': (BuildContext context) {
    return const NavigationToolbarDemo();
  },
  'NestedScrollView': (BuildContext context) {
    return const NestedScrollViewDemo();
  },
  'OverflowBar': (BuildContext context) {
    return const OverflowBarDemo();
  },
  'GlowingOverscrollIndicator': (BuildContext context) {
    return const GlowingOverscrollIndicatorDemo();
  },
  'PageStorage': (BuildContext context) {
    return const PageStorageDemo();
  },
  'PageView': (BuildContext context) {
    return const PageViewDemo();
  },
  'PlatformMenuBar': (BuildContext context) {
    return const PlatformMenuBarDemo();
  },
  'PlatformView': (BuildContext context) {
    return const PlatformViewDemo();
  },
  'ReorderableList': (BuildContext context) {
    return const ReorderableListDemo();
  },
  'Restoration': (BuildContext context) {
    return const RestorationDemo();
  },
  'ScrollConfiguration': (BuildContext context) {
    return const ScrollConfigurationDemo();
  },
  'SharedAppData': (BuildContext context) {
    return const SharedAppDataDemo();
  },
  'SizeChangedLayoutNotifier': (BuildContext context) {
    return const SizeChangedLayoutNotifierDemo();
  },
  'Sliver': (BuildContext context) {
    return const SliverDemo();
  },
  'Table': (BuildContext context) {
    return const TableDemo();
  },
  //materials
  'BottomAppBar': (BuildContext context) {
    return const BottomAppBarDemo();
  },
  'BottomNavigationBar': (BuildContext context) {
    return const BottomNavigationBarDemo();
  },
  'BottomSheet': (BuildContext context) {
    return const BottomSheetDemo();
  },
  'Button': (BuildContext context) {
    return const ButtonDemo();
  },
  'ButtonBar': (BuildContext context) {
    return const ButtonBarDemo();
  },
  'CalendarDatePicker': (BuildContext context) {
    return const CalendarDatePickerDemo();
  },
  'Checkbox': (BuildContext context) {
    return const CheckboxDemo();
  },
  'Chip': (BuildContext context) {
    return const ChipDemo();
  },
  'CircleAvatar': (BuildContext context) {
    return const CircleAvatarDemo();
  },
  'DataTable': (BuildContext context) {
    return const DataTableDemo();
  },
  'Drawer': (BuildContext context) {
    return const DrawerDemo();
  },
  'ExpandIcon': (BuildContext context) {
    return const ExpandIconDemo();
  },
  'ExpansionPanelList': (BuildContext context) {
    return const ExpansionPanelListDemo();
  },
  'ExpansionTile': (BuildContext context) {
    return const ExpansionTileDemo();
  },
  'GridTile': (BuildContext context) {
    return const GridTileDemo();
  },
  'Ink': (BuildContext context) {
    return const InkDemo();
  },
  'InputDatePickerFormField': (BuildContext context) {
    return const InputDatePickerFormFieldDemo();
  },
  'NavigationRail': (BuildContext context) {
    return const NavigationRailDemo();
  },
  'ProgressIndicator': (BuildContext context) {
    return const ProgressIndicatorDemo();
  },
  'Radio': (BuildContext context) {
    return const RadioDemo();
  },
  'RangeSlider': (BuildContext context) {
    return const RangeSliderDemo();
  },
  'SnackBarAction': (BuildContext context) {
    return const SnackBarActionDemo();
  },
  'Stepper': (BuildContext context) {
    return const StepperDemo();
  },
  'Switch': (BuildContext context) {
    return const SwitchDemo();
  },
  'TabBar': (BuildContext context) {
    return const TabBarDemo();
  },
  'ToggleButtons': (BuildContext context) {
    return const ToggleButtonsDemo();
  },
  'CupertinoActionSheet': (BuildContext context) {
    return const CupertinoActionSheetDemo();
  },
  'CupertinoActivityIndicator': (BuildContext context) {
    return const CupertinoActivityIndicatorDemo();
  },
  'CupertinoButton': (BuildContext context) {
    return const CupertinoButtonDemo();
  },
  'CupertinoContextMenu': (BuildContext context) {
    return const CupertinoContextMenuDemo();
  },
  'CupertinoDatePicker': (BuildContext context) {
    return const CupertinoDatePickerDemo();
  },
  'CupertinoFormRow': (BuildContext context) {
    return const CupertinoFormRowDemo();
  },
  'CupertinoNavigationBar': (BuildContext context) {
    return const CupertinoNavigationBarDemo();
  },
  'CupertinoPageScaffold': (BuildContext context) {
    return const CupertinoPageScaffoldDemo();
  },
  'CupertinoPicker': (BuildContext context) {
    return const CupertinoPickerDemo();
  },
  'CupertinoScrollbar': (BuildContext context) {
    return const CupertinoScrollbarDemo();
  },
  'CupertinoSearchTextField': (BuildContext context) {
    return const CupertinoSearchTextFieldDemo();
  },
  'CupertinoSegmentedControl': (BuildContext context) {
    return const CupertinoSegmentedControlDemo();
  },
  'CupertinoSliverRefreshControl': (BuildContext context) {
    return const CupertinoSliverRefreshControlDemo();
  },
  'CupertinoSwitch': (BuildContext context) {
    return const CupertinoSwitchDemo();
  },
  'CupertinoTabBar': (BuildContext context) {
    return const CupertinoTabBarDemo();
  },
  'CupertinoTextField': (BuildContext context) {
    return const CupertinoTextFieldDemo();
  },
  'CupertinoTextSelectionToolbar': (BuildContext context) {
    return const CupertinoTextSelectionToolbarDemo();
  },
  'CupertinoFullscreenDialogTransition': (BuildContext context) {
    return const CupertinoFullscreenDialogTransitionDemo();
  },

  'showXX': (BuildContext context) {
    return const ShowXXDemo();
  },
  'TextField': (BuildContext context) {
    return const TextFieldDemo();
  },

  'AlignTransition': (BuildContext context) {
    return const AlignTransitionDemo();
  },

  'DecoratedBoxTransition': (BuildContext context) {
    return const DecoratedBoxTransitionDemo();
  },
  'DefaultTextStyleTransition': (BuildContext context) {
    return const DefaultTextStyleTransitionDemo();
  },
  'FadeTransition': (BuildContext context) {
    return const FadeTransitionDemo();
  },
  'PositionedTransition': (BuildContext context) {
    return const PositionedTransitionDemo();
  },
  'RelativePositionedTransition': (BuildContext context) {
    return const RelativePositionedTransitionDemo();
  },
  'RotationTransition': (BuildContext context) {
    return const RotationTransitionDemo();
  },
  'ScaleTransition': (BuildContext context) {
    return const ScaleTransitionDemo();
  },

  'SizeTransition': (BuildContext context) {
    return const SizeTransitionDemo();
  },
  'SlideTransition': (BuildContext context) {
    return const SlideTransitionDemo();
  },
  'AnimatedAlign': (BuildContext context) {
    return const AnimatedAlignDemo();
  },
  'AnimatedBuilder': (BuildContext context) {
    return const AnimatedBuilderDemo();
  },
  'AnimatedContainer': (BuildContext context) {
    return const AnimatedContainerDemo();
  },
  'AnimatedCrossFade': (BuildContext context) {
    return const AnimatedCrossFadeDemo();
  },
  'AnimatedDefaultTextStyle': (BuildContext context) {
    return const AnimatedDefaultTextStyleDemo();
  },
  'AnimatedIcon': (BuildContext context) {
    return const AnimatedIconDemo();
  },
  'AnimatedList': (BuildContext context) {
    return const AnimatedListDemo();
  },
  'AnimatedModalBarrier': (BuildContext context) {
    return const AnimatedModalBarrierDemo();
  },
  'AnimatedOpacity': (BuildContext context) {
    return const AnimatedOpacityDemo();
  },
  'AnimatedPadding': (BuildContext context) {
    return const AnimatedPaddingDemo();
  },
  'AnimatedPhysicalModel': (BuildContext context) {
    return const AnimatedPhysicalModelDemo();
  },
  'AnimatedPositioned': (BuildContext context) {
    return const AnimatedPositionedDemo();
  },
  'AnimatedPositionedDirectional': (BuildContext context) {
    return const AnimatedPositionedDirectionalDemo();
  },
  'AnimatedSize': (BuildContext context) {
    return const AnimatedSizeDemo();
  },
  'AnimatedSwitcher': (BuildContext context) {
    return const AnimatedSwitcherDemo();
  },
  //basic
  'AbsorbPointer': (BuildContext context) {
    return const AbsorbPointerDemo();
  },
  'Align': (BuildContext context) {
    return const AlignDemo();
  },
  'AspectRatio': (BuildContext context) {
    return const AspectRatioDemo();
  },
  'BackdropFilter': (BuildContext context) {
    return const BackdropFilterDemo();
  },
  'Baseline': (BuildContext context) {
    return const BaselineDemo();
  },
  'Builder': (BuildContext context) {
    return const BuilderDemo();
  },
  'Center': (BuildContext context) {
    return const CenterDemo();
  },
  'ClipRect': (BuildContext context) {
    return const ClipRectDemo();
  },
  'ClipRRect': (BuildContext context) {
    return const ClipRRectDemo();
  },
  'ClipOval': (BuildContext context) {
    return const ClipOvalDemo();
  },
  'ClipPath': (BuildContext context) {
    return const ClipPathDemo();
  },
  'ConstrainedBox': (BuildContext context) {
    return const ConstrainedBoxDemo();
  },
  'ConstraintsTransformBox': (BuildContext context) {
    return const ConstraintsTransformBoxDemo();
  },
  'ColoredBox': (BuildContext context) {
    return const ColoredBoxDemo();
  },
  'CompositedTransformTarget': (BuildContext context) {
    return const CompositedTransformTargetDemo();
  },
  'Column': (BuildContext context) {
    return const ColumnDemo();
  },
  'CustomPaint': (BuildContext context) {
    return const CustomPaintDemo();
  },
  'CustomMultiChildLayout': (BuildContext context) {
    return const CustomMultiChildLayoutDemo();
  },
  'CustomSingleChildLayout': (BuildContext context) {
    return const CustomSingleChildLayoutDemo();
  },
  'DefaultAssetBundle': (BuildContext context) {
    return const DefaultAssetBundleDemo();
  },
  'Expanded': (BuildContext context) {
    return const ColumnDemo();
  },
  'Flex': (BuildContext context) {
    return const FlexDemo();
  },
  'Flexible': (BuildContext context) {
    return const FlexibleDemo();
  },
  'Flow': (BuildContext context) {
    return const FlowDemo();
  },
  'FittedBox': (BuildContext context) {
    return const FittedBoxDemo();
  },
  'FractionalTranslation': (BuildContext context) {
    return const FractionalTranslationDemo();
  },
  'FractionallySizedBox': (BuildContext context) {
    return const FractionallySizedBoxDemo();
  },
  'IgnorePointer': (BuildContext context) {
    return const AbsorbPointerDemo();
  },
  'IndexedStack': (BuildContext context) {
    return const IndexedStackDemo();
  },
  'IntrinsicWidth': (BuildContext context) {
    return const IntrinsicWidthHeightDemo();
  },
  'IntrinsicHeight': (BuildContext context) {
    return const IntrinsicWidthHeightDemo();
  },
  'LayoutId': (BuildContext context) {
    return const CustomMultiChildLayoutDemo();
  },
  'LimitedBox': (BuildContext context) {
    return const LimitedBoxDemo();
  },
  'ListBody': (BuildContext context) {
    return const ListBodyDemo();
  },
  'Listener': (BuildContext context) {
    return const ListenerDemo();
  },
  'MouseRegion': (BuildContext context) {
    return const ListenerDemo();
  },
  'Opacity': (BuildContext context) {
    return const OpacityDemo();
  },
  'OverflowBox': (BuildContext context) {
    return const OverflowBoxDemo();
  },
  'Offstage': (BuildContext context) {
    return const OffstageDemo();
  },
  'Padding': (BuildContext context) {
    return const PaddingDemo();
  },
  'RawImage': (BuildContext context) {
    return const RawImageDemo();
  },
  'RepaintBoundary': (BuildContext context) {
    return const RepaintBoundaryDemo();
  },
  'PhysicalModel': (BuildContext context) {
    return const PhysicalModelDemo();
  },
  'PhysicalShape': (BuildContext context) {
    return const PhysicalModelDemo();
  },
  'RichText': (BuildContext context) {
    return const RichTextDemo();
  },
  'Positioned': (BuildContext context) {
    return const StackDemo();
  },
  'PositionedDirectional': (BuildContext context) {
    return const StackDemo();
  },
  'RotatedBox': (BuildContext context) {
    return const RotatedBoxDemo();
  },
  'Row': (BuildContext context) {
    return const ColumnDemo();
  },
  'SizedBox': (BuildContext context) {
    return const SizedBoxDemo();
  },
  'SizedOverflowBox': (BuildContext context) {
    return const OverflowBoxDemo();
  },
  'StatefulBuilder': (BuildContext context) {
    return const StatefulBuilderDemo();
  },
  'Stack': (BuildContext context) {
    return const StackDemo();
  },
  'ShaderMask': (BuildContext context) {
    return const ShaderMaskDemo();
  },
  'Transform': (BuildContext context) {
    return const TransformDemo();
  },

  'UnconstrainedBox': (BuildContext context) {
    return const ConstrainedBoxDemo();
  },
  'Wrap': (BuildContext context) {
    return const WrapDemo();
  },
  'WidgetToRenderBoxAdapter': (BuildContext context) {
    return const WidgetToRenderBoxAdapterDemo();
  },
  'AnimatedLineChart': (BuildContext context) {
    return const AnimatedLineChartDemo();
  },
  'Heartbeat': (BuildContext context) {
    return const HeartbeatDemo();
  },
  'DrawingBoard': (BuildContext context) {
    return const DrawingBoardDemo();
  },
  'CircleProgress': (BuildContext context) {
    return const CircleProgressDemo();
  },
  'BarChart': (BuildContext context) {
    return const BarChartDemo();
  },
};

Map<String, DemoWidgetBuilder> clickRoute = {
  'AboutDialog': (BuildContext context) {
    showAboutDialogDemo(context);
    return null;
  },
};
