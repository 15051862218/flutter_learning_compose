import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/sample/chat_list.dart';
import 'package:flutter_demo/sample/juejin_list_item.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/sample/upload_page.dart';
import 'package:flutter_demo/widget/single/alignpadding_widget.dart';
import 'package:flutter_demo/widget/single/box_widget.dart';
import 'package:flutter_demo/widget/single/clip_widget.dart';
import 'package:flutter_demo/widget/single/colorfilter_widget.dart';
import 'package:flutter_demo/widget/single/custompaint_widget.dart';
import 'package:flutter_demo/widget/single/layoutbuilder_widget.dart';
import 'package:flutter_demo/widget/single/offstage_widget.dart';
import 'package:flutter_demo/widget/single/opacity_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedbuilder_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedeffect_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedlist_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedswitche_widget.dart';
import 'package:flutter_demo/widget/stateful/bottomsheet_widget.dart';
import 'package:flutter_demo/widget/stateful/checkboxradio_widget.dart';
import 'package:flutter_demo/widget/stateful/draggable_widget.dart';
import 'package:flutter_demo/widget/stateful/expansion_widget.dart';
import 'package:flutter_demo/widget/stateful/form_widget.dart';
import 'package:flutter_demo/widget/stateful/futurebuilder_widget.dart';
import 'package:flutter_demo/widget/stateful/hero_widget.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateful/ink_widget.dart';
import 'package:flutter_demo/widget/stateful/listwheelscrollview_widget.dart';
import 'package:flutter_demo/widget/stateful/material_widget.dart';
import 'package:flutter_demo/widget/stateful/materialapp_widget.dart';
import 'package:flutter_demo/widget/stateful/overlay_widget.dart';
import 'package:flutter_demo/widget/stateful/pageviewcontrol.dart';
import 'package:flutter_demo/widget/stateful/progressindicator_widget.dart';
import 'package:flutter_demo/widget/stateful/rangeslider_widget.dart';
import 'package:flutter_demo/widget/stateful/refreshindicator_widget.dart';
import 'package:flutter_demo/widget/stateful/reorderablelistview_widget.dart';
import 'package:flutter_demo/widget/stateful/scaffold_widget.dart';
import 'package:flutter_demo/widget/stateful/selectabletext_widget.dart';
import 'package:flutter_demo/widget/stateful/slider_widget.dart';
import 'package:flutter_demo/widget/stateful/sliverappbar_widget.dart';
import 'package:flutter_demo/widget/stateful/snackbar_widget.dart';
import 'package:flutter_demo/widget/stateful/stepper_widget.dart';
import 'package:flutter_demo/widget/stateful/textfield_widget.dart';
import 'package:flutter_demo/widget/stateful/transitioneffect_widget.dart';
import 'package:flutter_demo/widget/stateful/valuelistenablebuilder_widget.dart';
import 'package:flutter_demo/widget/stateful/willpopscope_widget.dart';
import 'package:flutter_demo/widget/stateless/aboutdialog_widget.dart';
import 'package:flutter_demo/widget/stateless/aboutlisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/actionchip_widget.dart';
import 'package:flutter_demo/widget/stateless/alertdialog_widget.dart';
import 'package:flutter_demo/widget/stateless/button_widget.dart';
import 'package:flutter_demo/widget/stateless/card_widget.dart';
import 'package:flutter_demo/widget/stateless/checkboxlisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/chip_widget.dart';
import 'package:flutter_demo/widget/stateless/choicechip_widget.dart';
import 'package:flutter_demo/widget/stateless/circleavatar_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
import 'package:flutter_demo/widget/stateless/cupertino_widget.dart';
import 'package:flutter_demo/widget/stateless/daypicker_widget.dart';
import 'package:flutter_demo/widget/stateless/dialog_widget.dart';
import 'package:flutter_demo/widget/stateless/divider_widget.dart';
import 'package:flutter_demo/widget/stateless/filterchip.dart';
import 'package:flutter_demo/widget/stateless/gesturedetector_widget.dart';
import 'package:flutter_demo/widget/stateless/gridview_widget.dart';
import 'package:flutter_demo/widget/stateless/icon_widget.dart';
import 'package:flutter_demo/widget/stateless/inputchip_widget.dart';
import 'package:flutter_demo/widget/stateless/listtitle_widget.dart';
import 'package:flutter_demo/widget/stateless/listview_widget.dart';
import 'package:flutter_demo/widget/stateless/material_banner_widget.dart';
import 'package:flutter_demo/widget/stateless/navigation__toolbar_widget.dart';
import 'package:flutter_demo/widget/stateless/pageview_widget.dart';
import 'package:flutter_demo/widget/stateless/placeholder_widget.dart';
import 'package:flutter_demo/widget/stateless/safearea_widget.dart';
import 'package:flutter_demo/widget/stateless/singlechildscrollview_widget.dart';
import 'package:flutter_demo/widget/stateless/space_widget.dart';
import 'package:flutter_demo/widget/stateless/text_widget.dart';
import 'package:flutter_demo/widget/stateless/theme_widget.dart';
import 'package:flutter_demo/widget/stateless/useraccountdrawerheader_widget.dart';
import 'package:flutter_demo/widget/stateless/visiblity_widget.dart';

import '../widget/liveaway/all_theme_widget.dart';
import '../widget/liveaway/default_text_style_widget.dart';
import '../widget/liveaway/expanded_widget.dart';
import '../widget/liveaway/flexible_widget.dart';
import '../widget/liveaway/media_query_widget.dart';
import '../widget/liveaway/positioned_widget.dart';
import '../widget/multi/flex_widget.dart';
import '../widget/multi/flow_widget.dart';
import '../widget/multi/indexed_stack_widget.dart';
import '../widget/multi/rich_text_widget.dart';
import '../widget/multi/stack_widget.dart';
import '../widget/multi/wrap_widget.dart';
import '../widget/other/list_wheel_viewport_widget.dart';
import '../widget/other/performance_overlay_widget.dart';
import '../widget/other/table_widget.dart';
import '../widget/single/demopage_widget.dart';
import '../widget/sliver/custom_scroll_view_widget.dart';
import '../widget/sliver/nested_scroll_view_widget.dart';
import '../widget/sliver/sliver_animated_list_widget.dart';
import '../widget/sliver/sliver_fill_remaining_widget.dart';
import '../widget/sliver/sliver_fixed_extent_list_widget.dart';
import '../widget/sliver/sliver_grid_widget.dart';
import '../widget/sliver/sliver_layout_builder_widget.dart';
import '../widget/sliver/sliver_list_widget.dart';
import '../widget/sliver/sliver_padding_widget.dart';
import '../widget/sliver/sliver_persistent_header_widget.dart';
import '../widget/sliver/sliver_to_box_adapter_widget.dart';
import '../widget/stateful/animatedcontainer_widget.dart';
import '../widget/stateless/gridtile_widget.dart';
import '../widget/stateless/mypreferredsize_widget.dart';
import '../widget/stateless/radiolisttile_widget.dart';
import '../widget/stateless/simpledialog_widget.dart';
import '../widget/stateless/switchlisttile_widget.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/index': (context) => const Index(),
  // 无状态组件导航
  '/container': (context) => const ContainerWidget(),
  '/text': (context) => const TextWidget(),
  '/listview': (context) => const ListViewWidget(),
  '/gridview': (context) => const GridViewWidget(),
  '/singlechildscrollview': (context) => const SingleChildScrollViewWidget(),
  '/pageview': (context) => const PageViewWidget(),
  '/pageviewcontrol': (context) => const PageViewControl(),
  '/circleavatar': (context) => const CircleAvatarWidget(),
  '/chip': (context) => const ChipWidget(),
  '/inputchip': (context) => const InputChipWidget(),
  '/filterchip': (context) => const FilterChipWidget(),
  '/choicechip': (context) => const ChoiceChipWidget(),
  '/actionchip': (context) => const ActionChipWidget(),
  '/theme': (context) => const ThemeWidget(),
  '/gesturedetector': (context) => const GestureDetectorWidget(),
  '/useraccountdrawerheader': (context) =>
      const UserAccountDrawerHeaderWidget(),
  '/button': (context) => const ButtonWidget(),
  '/card': (context) => const CardWidget(),
  '/visiblity': (context) => const VisiblityWidget(),
  // 有状态组件导航
  '/image': (context) => const ImageWidget(),
  '/sliverappbar': (context) => const SliverAppBarWidget(),
  // 示例导航
  '/plant-shop': (context) => const PlantShop(),
  '/timeline': (context) => const TimelinePage(),
  '/list_tile': (context) => const ListTileWidget(),
  '/checkbox_listtile': (context) => const CheckboxListTileWidget(),
  '/alertdialog': (context) => const AlertDialogWidget(),
  '/aboutlist_tile': (context) => const AboutListTileWidget(),
  '/space': (context) => const SpaceWidget(),
  '/switchlisttile': (context) => const SwitchListTileWidget(),
  '/radiolisttile': (context) => const RadioListTileWidget(),
  '/gridtile': (context) => const GridTileWidget(),
  '/safearea': (context) => const SafeAreaWidget(),
  '/material_banner': (context) => const MaterialBannerWidget(),
  '/navigation_toolbar': (context) => const NavigationToolbarWidget(),
  '/placeholder': (context) => const PlaceholderWidget(),
  '/dialog': (context) => const DialogWidget(),
  '/about_dialog': (context) => const AboutDialogWidget(),
  '/simple_dialog': (context) => const SimpleDialogWidget(),
  '/daypicker': (context) => const DayPickerWidget(),
  '/mypreferredsize': (context) => const MyPreferredSizeWidget(),
  '/icon': (context) => const IconWidget(),
  '/divider': (context) => const DividerWidget(),
  '/cupertino': (context) => const CupertinoWidget(),
  '/animated_switcher': (context) => const AnimatedSwitcherWidget(),
  '/animated_effect': (context) => const AnimatedEffectWidget(),
  '/animated_container': (context) => const AnimatedContainerWidget(),
  '/animated_builder': (context) => const AnimatedBuilderWidget(),
  '/animated_list': (context) => const AnimatedListWidget(),
  '/transition_effect': (context) => const TransitionEffectWidget(),
  '/hero': (context) => const HeroWidget(),
  '/future_builder': (context) => const FutureBuilderWidget(),
  '/material': (context) => const MaterialWidget(),
  '/materialapp': (context) => const MaterialAppWidget(),
  '/willpopscope': (context) => const WillPopScopeWidget(),
  '/overlay': (context) => const OverlayWidget(),
  '/stepper': (context) => const StepperWidget(),
  '/checkboxradio': (context) => const CheckboxRadioWidget(),
  '/slider': (context) => const SliderWidget(),
  '/rangeslider': (context) => const RangeSliderWidget(),
  '/snackbar': (context) => const SnackBarWidget(),
  '/refreshindicator': (context) => const RefreshIndicatorWidget(),
  '/draggable': (context) => const DraggableWidget(),
  '/bottomsheet': (context) => const BottomSheetWidget(),
  '/reorderablelistview': (context) => const ReorderableListViewWidget(),
  '/listwheelscrollview': (context) => const ListWheelScrollViewWidget(),
  '/form': (context) => const FormWidget(),
  '/textfiled': (context) => const TextFieldWidget(),
  '/expansion': (context) => const ExpansionWidget(),
  '/valuelistenablebuilder': (context) => const ValueListenableBuilderWidget(),
  '/scaffold': (context) => const ScaffoldWidget(),
  '/ink': (context) => const InkWidget(),
  '/progressindicator': (context) => const ProgressIndicatorWidget(),
  '/selectabletext': (context) => const SelectableTextWidget(),
  '/clip': (context) => const ClipWidget(),
  '/box': (context) => const BoxWidget(),
  '/alignpadding': (context) => const AlignPaddingWidget(),
  '/demo': (context) => const DemoPage(),
  '/custompaint': (context) => const CustomPaintWidget(),
  '/colorfilter': (context) => const ColorFilteredWidget(),
  '/layoutbuilder': (context) => const LayoutBuilderWidget(),
  '/offstage': (context) => const OffstageWidget(),
  '/opacity': (context) => const OpacityWidget(),
  '/list': (context) => const JuejinListItem(),
  '/talk': (context) => const ChatList(),
  '/upload': (context) => const UploadPage(),
  'flex': (context) => FlexWidget(),
  'stack': (context) => const StackWidget(),
  'indexed_stack': (context) => const IndexedStackWidget(),
  'wrap': (context) => WrapWidget(),
  'flow': (context) => const FlowWidget(),
  'rich_text': (context) => const RichTextWidget(),

  ///可折叠组件
  'custom_scroll_view': (context) => const CustomScrollViewWidget(),
  'sliver_list': (context) => const SliverListWidget(),
  'sliver_persistent_header': (context) => const SliverPersistentHeaderWidget(),
  'sliver_app_bar': (context) => const SliverAppBarWidget(),
  'sliver_grid': (context) => const SliverGridWidget(),
  'sliver_to_box_adapter': (context) => const SliverToBoxAdapterWidget(),
  'sliver_layout_builder': (context) => const SliverLayoutBuilderWidget(),
  'sliver_fill_remaining': (context) => const SliverFillRemainingWidget(),
  'sliver_fixed_extent_list': (context) => const SliverFixedExtentListWidget(),
  'sliver_padding': (context) => SliverPaddingWidget(),
  'sliver_animated_list': (context) => const SliverAnimatedListWidget(),
  'nested_scroll_view': (context) => NestedScrollViewWidget(),

  ///可寄居组件
  'expanded': (context) => const ExpandedWidget(),
  'flexible': (context) => const FlexibleWidget(),
  'media_query': (context) => const MediaQueryWidget(),
  'positioned': (context) => PositionedWidget(),
  'default_text_style': (context) => const DefaultTextStyleWidget(),
  'all_theme': (context) => const AllThemeWidget(),

  ///其他组件
  'table': (context) => const TableWidget(),
  'list_wheel_viewport_widget': (context) => const ListWheelViewportWidget(),
  'performance_overlay': (context) => const PerformanceOverlayWidget(),
};
