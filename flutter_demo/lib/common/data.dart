import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';

import '../sample/juejin_list_item.dart';
import '../widget/custom/single_container.dart';

final data = <dynamic>[
  Colors.blue[50],
  Colors.blue[100],
  Colors.blue[200],
  Colors.blue[300],
  Colors.blue[400],
  Colors.blue[500],
  Colors.blue[600],
  Colors.blue[700],
  Colors.blue[800],
  Colors.blue[900],
];

String colorString(dynamic color) =>
    "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";
final singleRenderList = <ItemInfo>[
  ItemInfo('ClipWidget', 'ClipWidget组件', '/clip', Colors.blue.withAlpha(77),
      Colors.blue, 5.0),
  ItemInfo('BoxWidget', 'BoxWidget组件', '/box', Colors.blue.withAlpha(77),
      Colors.blue, 5.0),
  ItemInfo('AlignPaddingWidget', 'AlignPaddingWidget组件', '/alignpadding',
      Colors.blue.withAlpha(77), Colors.blue, 5.0),
  ItemInfo(
      'DemoPage', 'demo', '/demo', Colors.blue.withAlpha(77), Colors.blue, 5.0),
  ItemInfo('CustomPaintWidget', 'CustomPaintWidget组件', '/custompaint',
      Colors.blue.withAlpha(77), Colors.blue, 5.0),
  ItemInfo('ColorPaintWidget', 'ColorPaintWidget组件', '/colorfilter',
      Colors.blue.withAlpha(77), Colors.blue, 5.0),
  ItemInfo('LayoutBuilderWidget', 'LayoutBuilderWidget组件', '/layoutbuilder',
      Colors.blue.withAlpha(77), Colors.blue, 5.0),
  ItemInfo('OffStageWidget', 'OffStageWidget组件', '/offstage',
      Colors.blue.withAlpha(77), Colors.blue, 5.0),
  ItemInfo('OpacityWidget', 'OpacityWidget组件', '/opacity',
      Colors.blue.withAlpha(77), Colors.blue, 5.0),
  // ContainerInfo('BoxWidget', 'BoxWidget组件', '/box'),
  // ContainerInfo('AlignPaddingWidget', 'AlignPaddingWidget组件', '/alignpadding'),
  // ContainerInfo('DemoPage', 'demo', '/demo'),
  // ContainerInfo('CustomPaintWidget', 'CustomPaintWidget组件', '/custompaint'),
  // ContainerInfo('ColorPaintWidget', 'ColorPaintWidget组件', '/colorfilter'),
];

final statelessList = <ContainerInfo>[
  ContainerInfo('Container', '用于容纳单个子组件的容器组件。集成了若干个单子组件的功能，如内外边距、形变、装饰、约束等。',
      '/container'),
  ContainerInfo(
      'Text', '用于容纳单个子组件的容器组件,拥有的属性非常多，足够满足适应需求，核心样式由style属性控制。', '/text'),
  ContainerInfo(
      'ListView',
      '可容纳多个子组件，可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性。',
      '/listview'),
  ContainerInfo(
      'GridView',
      '以网格的形式容纳多个组件,可以通过count、extent、custom、builder等构造，有内边距、是否反向、滑动控制等属性。',
      '/gridview'),
  ContainerInfo('SingleChildScrollView', '使一个组件具有滑动的效果，可指定滑动的方向、是否反向、滑动控制器等属性。',
      '/singlechildscrollview'),
  ContainerInfo(
      'PageView', '容纳多个组件的页面，可对它们进行滑动切换，指定滑动方向、是否反向、滑动控制器等属性。', '/pageview'),
  ContainerInfo(
      'CircleAvatar', '可将一张图片变成圆形，中间可以放置一个组件。可指定半径、前景色、背景色等。', '/circleavatar'),
  ContainerInfo('Chip', '一个横向的圆边小条，可以包含左中右三个组件。可以指定颜色、阴影色和点击事件。', '/chip'),
  ContainerInfo('InputChip', '和Chip组件类似，集成了点击、删除、选择事件为一体，注意：点击事件和选择事件不能同时存在。',
      '/inputchip'),
  ContainerInfo('FilterChip', '和Chip组件类似，具有选中与否的属性和选中事件，当选中时左侧组件上层会被 √ 遮罩',
      '/filterchip'),
  ContainerInfo(
      'ChoiceChip', '和Chip组件类似，有一些选择的属性，可以指定选中时的颜色，阴影色和选择事件。', '/choicechip'),
  ContainerInfo(
      'ActionChip', '和Chip组件类似，有一些点击的熟悉，可以指定点击时的阴影深浅、点击事件。', '/actionchip'),
  ContainerInfo(
      'Theme', '可通过Theme.of获取ThemeData对象，也可以指定主题应用于Theme的后代组件', '/theme'),
  ContainerInfo('GestureDetector', '组件手势事件的检测器，可接受长按、双击、按下、松开、移动等事件，并可获取触点信息',
      '/gesturedetector'),
  ContainerInfo(
      'UserAccountDrawerHeader',
      'Flutter提供的一个通用展示结构，相应位置可插入组件，很方便地对特定条目，常用于Drawer中',
      '/useraccountdrawerheader'),
  ContainerInfo('ButtonWidget', '各类Button组件', '/button'),
  ContainerInfo('CardWidget', '卡片组件，基于Material组件实现，用于将单个组件卡片化。', '/card'),
  ContainerInfo(
      'VisiblityWidget', '显隐组件，控制一个组件显示或隐藏，可设置隐藏后的占位组件。', '/visiblity'),
  ContainerInfo(
      'ListtileWidget', '显隐组件，控制一个组件显示或隐藏，可设置隐藏后的占位组件。', '/list_tile'),
  ContainerInfo('CheckBoxListTileWidget',
      'PageViewController组件可以实现页面头部区域展开、折叠的效果。', '/checkbox_listtile'),
  ContainerInfo('SwitchListTileWidget',
      'SwitchListTileWidget组件可以实现页面头部区域展开、折叠的效果。', '/switchlisttile'),
  ContainerInfo('RadioListTileWidget',
      'RadioListTileWidget组件可以实现页面头部区域展开、折叠的效果。', '/radiolisttile'),
  ContainerInfo(
      'GridTileWidget', 'GridTileWidget组件可以实现页面头部区域展开、折叠的效果。', '/gridtile'),
  ContainerInfo('AlertDialogWidget', 'AlertDialogWidget组件可以实现页面头部区域展开、折叠的效果。',
      '/alertdialog'),
  ContainerInfo('AboutListTileWidget',
      'AboutListTileWidget组件可以实现页面头部区域展开、折叠的效果。', '/aboutlist_tile'),
  ContainerInfo('SpaceWidget', 'SpaceWidget组件可以实现页面头部区域展开、折叠的效果。', '/space'),
  ContainerInfo('DialogWidget', 'DialogWidget组件可以实现页面头部区域展开、折叠的效果。', '/dialog'),
  ContainerInfo('AboutDialogWidget', 'AboutDialogWidget组件可以实现页面头部区域展开、折叠的效果。',
      '/about_dialog'),
  ContainerInfo('SimpleDialogWidget', 'SimpleDialogWidget组件可以实现页面头部区域展开、折叠的效果。',
      '/simple_dialog'),
  ContainerInfo(
      'DayPickerWidget', 'DayPickerWidget组件可以实现页面头部区域展开、折叠的效果。', '/daypicker'),
  ContainerInfo(
      'SafeAreaWidget', 'SafeAreaWidget组件可以实现页面头部区域展开、折叠的效果。', '/safearea'),
  ContainerInfo('MaterialBannerWidget',
      'MaterialBannerWidget组件可以实现页面头部区域展开、折叠的效果。', '/material_banner'),
  ContainerInfo('NavigationToolbarWidget',
      'NavigationToolbarWidget组件可以实现页面头部区域展开、折叠的效果。', '/navigation_toolbar'),
  ContainerInfo('PlaceholderWidget', 'PlaceholderWidget组件可以实现页面头部区域展开、折叠的效果。',
      '/placeholder'),
  ContainerInfo('IconWidget', 'IconWidget组件可以实现页面头部区域展开、折叠的效果。', '/icon'),
  ContainerInfo(
      'DividerWidget', 'DividerWidget组件可以实现页面头部区域展开、折叠的效果。', '/divider'),
  ContainerInfo('MyPreferredSizeWidget',
      'MyPreferredSizeWidget组件可以实现页面头部区域展开、折叠的效果。', '/mypreferredsize'),
  ContainerInfo(
      'CupertinoWidget', 'DividerWidget组件可以实现页面头部区域展开、折叠的效果。', '/cupertino'),
];

final statefulList = <ContainerInfo>[
  ContainerInfo(
      'Image', '用于显示一张图片，可以从文件、内存、网络、资源里加载，可以指定适应方式、样式、颜色混合模式、重复模式。', '/image'),
  ContainerInfo(
      'SliverAppBar', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/sliverappbar'),
  ContainerInfo('PageViewController', 'PageViewController组件可以实现页面头部区域展开、折叠的效果。',
      '/pageviewcontrol'),
  ContainerInfo('AnimatedContainerWidget',
      'AnimatedContainerWidget组件可以实现页面头部区域展开、折叠的效果。', '/animated_container'),
  ContainerInfo('AnimatedBuilderWidget',
      'AnimatedBuilderWidget组件可以实现页面头部区域展开、折叠的效果。', '/animated_builder'),
  ContainerInfo('AnimatedListWidget', 'AnimatedListWidget组件可以实现页面头部区域展开、折叠的效果。',
      '/animated_list'),
  ContainerInfo('AnimatedSwitcherWidget',
      'AnimatedSwitcherWidget组件可以实现页面头部区域展开、折叠的效果。', '/animated_switcher'),
  ContainerInfo('AnimatedEffectWidget',
      'AnimatedEffectWidget组件可以实现页面头部区域展开、折叠的效果。', '/animated_effect'),
  ContainerInfo('TransitionEffectWidget',
      'TransitionEffectWidget组件可以实现页面头部区域展开、折叠的效果。', '/transition_effect'),
  ContainerInfo(
      'MaterialWidget', 'MaterialWidget组件可以实现页面头部区域展开、折叠的效果。', '/material'),
  ContainerInfo('MaterialAppWidget', 'MaterialAppWidget组件可以实现页面头部区域展开、折叠的效果。',
      '/materialapp'),
  ContainerInfo('WillPopScopeWidget', 'WillPopScopeWidget组件可以实现页面头部区域展开、折叠的效果。',
      '/willpopscope'),
  ContainerInfo('HeroWidget', 'HeroWidget组件可以实现页面头部区域展开、折叠的效果。', '/hero'),
  ContainerInfo('FutureBuilderWidget',
      'FutureBuilderWidget组件可以实现页面头部区域展开、折叠的效果。', '/future_builder'),
  ContainerInfo(
      'OverlayWidget', 'OverlayWidget组件可以实现页面头部区域展开、折叠的效果。', '/overlay'),
  ContainerInfo(
      'StepperWidget', 'StepperWidget组件可以实现页面头部区域展开、折叠的效果。', '/stepper'),
  ContainerInfo('CheckBoxRadioWidget',
      'CheckBoxRadioWidget组件可以实现页面头部区域展开、折叠的效果。', '/checkboxradio'),
  ContainerInfo('SliderWidget', 'SliderWidget组件可以实现页面头部区域展开、折叠的效果。', '/slider'),
  ContainerInfo('RangeSliderWidget', 'RangeSliderWidget组件可以实现页面头部区域展开、折叠的效果。',
      '/rangeslider'),
  ContainerInfo(
      'SnackBarWidget', 'SnackBarWidget组件可以实现页面头部区域展开、折叠的效果。', '/snackbar'),
  ContainerInfo('RefreshIndicator', 'RefreshIndicator组件可以实现页面头部区域展开、折叠的效果。',
      '/refreshindicator'),
  ContainerInfo('DraggableWidget', 'DraggableWidget组件', '/draggable'),
  ContainerInfo('BottomSheetWidget', 'BottomSheetWidget组件', '/bottomsheet'),
  ContainerInfo('ReorderableListViewWidget', 'ReorderableListViewWidget组件',
      '/reorderablelistview'),
  ContainerInfo('ListWheelScrollerViewWidget', 'ListWheelScrollerViewWidget组件',
      '/listwheelscrollview'),
  ContainerInfo('FormWidget', 'FormWidget组件', '/form'),
  ContainerInfo('TextFiledWidget', 'TextFiledWidget组件', '/textfiled'),
  ContainerInfo('ExpansionWidget', 'ExpansionWidget组件', '/expansion'),
  ContainerInfo('ValueListenableBuilderWidget',
      'ValueListenableBuilderWidget组件', '/valuelistenablebuilder'),
  ContainerInfo('ScaffoldWidget', 'ScaffoldWidget组件', '/scaffold'),
  ContainerInfo('InkWidget', 'InkWidget组件', '/ink'),
  ContainerInfo('ProgressIndicatorWidget', 'ProgressIndicatorWidget组件',
      '/progressindicator'),
  ContainerInfo(
      'SelectableTextWidget', 'SelectableTextWidget组件', '/selectabletext'),
];
// 多渲染组件列表
final multiRenderList = <ItemInfo>[
  ItemInfo(
    'Flex',
    '弹性布局，Row和Column的父类，最强大的布局方式，可容纳多个组件，可与Spacer、Expanded、Flexible组件联用进行灵活布局。',
    'flex',
    const Color(0xffb0d4ec),
    const Color(0xff2999e0),
    5,
  ),
  ItemInfo(
    'Stack',
    '堆叠布局，可容纳多个组件，以堆叠的方式摆放组件，后者居上。拥有alignment属性，可与Positioned组件联用，精确定位。',
    'stack',
    const Color(0xffb0d4ec),
    const Color(0xff2999e0),
    5,
  ),
  ItemInfo(
    'IndexedStack',
    '索引堆叠，Stack组件的子类，可以堆叠多个组件，并通过index来指定展示的组件的索引，其余的会被隐藏。',
    'indexed_stack',
    const Color(0xffb0d4ec),
    const Color(0xff2999e0),
    5,
  ),
  ItemInfo(
    'Wrap',
    '包裹布局，可容纳多个组件，按照指定的方向依次排布，可以很方便地处理孩子之间的间距，当越界时可以自动换行，拥有主轴和交叉轴的对其方式，比较灵活。',
    'wrap',
    const Color(0xffb0d4ec),
    const Color(0xff2999e0),
    5,
  ),
  ItemInfo(
    'Flow',
    '流动布局，可容纳多个组件，需要自己指定排布的代理，可以高强度自定义组件打牌不，实现普通布局无法达到的效果，布局之王。',
    'flow',
    const Color(0xffb0d4ec),
    const Color(0xff2999e0),
    5,
  ),
  ItemInfo(
    'RichText',
    '富文本，可以容纳多种文字样式或各种组件的富文本组件，应用较为广泛。',
    'rich_text',
    const Color(0xffb0d4ec),
    const Color(0xff2999e0),
    5,
  ),
];

// 可折叠组件列表
final sliverList = <ItemInfo>[
  ItemInfo(
    'CustomScrollView',
    '通用滑动视图组件，可指定滑动方向、是否反向、滑动控制器等属性，其子组件必须是Sliver家族成员。',
    'custom_scroll_view',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverList',
    'Sliver家族的列表组件，通过指定delegate构造子组件，通常用于CustomScrollView中。',
    'sliver_list',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverPersistentHeader',
    '通常用于CustomScrollView中，可以让一个组件在滑动中停留在顶部，不会在滑动中消失。',
    'sliver_persistent_header',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverAppBar',
    'Sliver家族的顶部栏通用结构，可以指定左中右组件、收缩空间、影深、固定模式、背景色等属性。',
    'sliver_app_bar',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverGrid',
    'Sliver网格，Sliver家族的网格列表组件，和GridView类似，通过count和extent构造，通常用于CustomScrollView中。',
    'sliver_grid',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverToBoxAdapter',
    'Sliver适配器，可以容纳一个普通的组件，并将其转化为Sliver家族组件的适配器。',
    'sliver_to_box_adapter',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverLayoutBuilder',
    'Sliver布局构造器，Sliver家族的一员，在滑动过程中可以通过回调出的SliverConstraints对象进行子组件的构造。',
    'sliver_layout_builder',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverFillRemaining',
    'Sliver填补剩余，一个包含单个box子元素的sliver,填充了视窗中的剩余空间。可指定两个bool值控制滑动效果。',
    'sliver_fill_remaining',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverFixedExtentList',
    'Sliver家族的列表组件，通过delegate构造子组件，可以指定item的高度，通常用于CustomScrollView中。',
    'sliver_fixed_extent_list',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverPadding',
    'Sliver内间距，可容纳一个Sliver家族的子组件，添加自身内边距来限制子组件的占位，核心属性为padding。',
    'sliver_padding',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'SliverAnimatedList',
    'Sliver动画列表，在插入或删除项目时有动画效果的Sliver组件。',
    'sliver_animated_list',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
  ItemInfo(
    'NestedScrollView',
    '嵌套滑动视图，用于多个视图滑动嵌套处理，可以指定头部、滑动控制器、滑动方向等，其中body必须是可滑动类型的组件。',
    'nested_scroll_view',
    const Color(0xffecdeb3),
    const Color(0xffeec034),
    5,
  ),
];

// 可寄居组件列表
final liveAwayList = <ItemInfo>[
  ItemInfo(
    'Flexible',
    '只能用于Flex、Row、Column中，可嵌套孩子组件，利用剩余空间对占位空间进行延展，也可指定fit类型。',
    'flexible',
    const Color(0xffd0efd8),
    const Color(0xff499a5b),
    5,
  ),
  ItemInfo(
    'Expanded',
    '父类是Flexible，相当于一个fit类型为tight的Flexible组件。可嵌套孩子组件，利用剩余空间对占位空间进行延展。',
    'expanded',
    const Color(0xffd0efd8),
    const Color(0xff499a5b),
    5,
  ),
  ItemInfo(
    'MediaQuery',
    '媒体查询组件，可通过MediaQuery.of来获取屏幕尺寸、设备密度、文字缩放比例、边距等信息。',
    'media_query',
    const Color(0xffd0efd8),
    const Color(0xff499a5b),
    5,
  ),
  ItemInfo(
    'Positioned',
    '定位组件，只能用在Stack中，可以指定上下左右距离，对某个组件进行位置的精确摆放。',
    'positioned',
    const Color(0xffd0efd8),
    const Color(0xff499a5b),
    5,
  ),
  ItemInfo(
    'DefaultTextStyle',
    '可容纳一个子组件，为后代的文字指定默认样式。常用于多个相同文字的样式统一、避免一一设置。',
    'default_text_style',
    const Color(0xffd0efd8),
    const Color(0xff499a5b),
    5,
  ),
  ItemInfo(
    'AllTheme',
    '各种Theme组件，包括IconTheme、ButtonTheme、ChipTheme、DividerTheme、SliderTheme、PopupMenuTheme、ListTileTheme等。',
    'all_theme',
    const Color(0xffd0efd8),
    const Color(0xff499a5b),
    5,
  ),
];

// 其他未分类组件列表
final otherList = <ItemInfo>[
  ItemInfo(
    'Table',
    '表格组件,用于展示表格的组件，可指定边线、列宽、文字方向等属性，核心对象是TableRow。',
    'table',
    const Color(0xfff6dce4),
    const Color(0xffee5a8a),
    5,
  ),
  ItemInfo(
    'ListWheelViewport',
    '一个将子组件列表显示在柱状滚轮上的视口，是ListWheelScrollView、CupertinoPicker的底层依赖。',
    'list_wheel_viewport_widget',
    const Color(0xfff6dce4),
    const Color(0xffee5a8a),
    4,
  ),
  ItemInfo(
    'PerformanceOverlay',
    '性能浮层，可以非常方便地开启性能检测的两个柱图，方便查看刷新界面时帧率的变化情况。',
    'performance_overlay',
    const Color(0xfff6dce4),
    const Color(0xffee5a8a),
    4,
  ),
];

final List<SpecialColumnItem> listData = [
  SpecialColumnItem(
    title: "Flutter 基础",
    url: "images/draw_bg3.webp",
    articleCount: 97,
    attentionCount: 188,
  ),
  SpecialColumnItem(
    title: "Flutter 周边",
    url: "images/draw_bg4.webp",
    articleCount: 90,
    attentionCount: 128,
  ),
  SpecialColumnItem(
    title: "Flutter 绘制集录",
    url: "images/base_draw.webp",
    articleCount: 29,
    attentionCount: 118,
  ),
  SpecialColumnItem(
    title: "Flutter 动画集录",
    url: "images/anim_draw.webp",
    articleCount: 34,
    attentionCount: 18,
  ),
  SpecialColumnItem(
    title: "Flutter 玩转正则",
    url: "images/draw_bg3.webp",
    articleCount: 7,
    attentionCount: 88,
  ),
  SpecialColumnItem(
    title: "Rust 学习指南",
    url: "images/draw_bg4.webp",
    articleCount: 90,
    attentionCount: 228,
  ),
  SpecialColumnItem(
    title: "Vue 学习指南",
    url: "images/base_draw.webp",
    articleCount: 90,
    attentionCount: 128,
  ),
  SpecialColumnItem(
    title: "前端绘制宝典",
    url: "images/anim_draw.webp",
    articleCount: 19,
    attentionCount: 1228,
  ),
  SpecialColumnItem(
    title: "Flutter 基础",
    url: "images/draw_bg3.webp",
    articleCount: 97,
    attentionCount: 188,
  ),
  SpecialColumnItem(
    title: "FlutterUnit 周边",
    url: "images/draw_bg4.webp",
    articleCount: 90,
    attentionCount: 128,
  ),
  SpecialColumnItem(
    title: "Flutter 绘制集录",
    url: "images/base_draw.webp",
    articleCount: 90,
    attentionCount: 128,
  ),
];
