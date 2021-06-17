import 'package:animated_flutter/src/pages/FadeTransition/fade_transition_page.dart';
import 'package:animated_flutter/src/pages/animated_align/animated_align_page.dart';
import 'package:animated_flutter/src/pages/animated_builder/animated_builder_page.dart';
import 'package:animated_flutter/src/pages/animated_container/animated_container_page.dart';
import 'package:animated_flutter/src/pages/animated_cross_fade/animated_cross_fade_page.dart';
import 'package:animated_flutter/src/pages/animated_default_text_style/animated_default_text_style_page.dart';
import 'package:animated_flutter/src/pages/animated_list_state/animated_list_state_page.dart';
import 'package:animated_flutter/src/pages/animated_modal_barrier/animated_modal_barrier_page.dart';
import 'package:animated_flutter/src/pages/animated_opacity/animated_opacity_page.dart';
import 'package:animated_flutter/src/pages/animated_physical_model/animated_physical_model_page.dart';
import 'package:animated_flutter/src/pages/animated_positioned/animated_positioned_page.dart';
import 'package:animated_flutter/src/pages/animated_size/animated_size_page.dart';
import 'package:animated_flutter/src/pages/animated_tween/animated_tween_page.dart';
import 'package:animated_flutter/src/pages/animated_widget/animated_widget_page.dart';
import 'package:animated_flutter/src/pages/decorated_box_transition/decorated_box_transition_page.dart';
import 'package:animated_flutter/src/pages/hero/hero_page.dart';
import 'package:animated_flutter/src/pages/my_home/my_home_page.dart';
import 'package:animated_flutter/src/pages/positioned_transition/positioned_transition_page.dart';
import 'package:animated_flutter/src/pages/scale_transition/scale_transition_page.dart';
import 'package:animated_flutter/src/pages/size_transition/size_transition_page.dart';
import 'package:animated_flutter/src/pages/slide_transition/slide_transition_page.dart';
import 'package:animated_flutter/src/utils/constanst.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final _route = <String, WidgetBuilder>{
    Constant.HOME_ROUTE: (context) => MyHomePage(),
    Constant.ANIMATED_ALIGN_ROUTE: (context) => AnimatedAlignPage(),
    Constant.ANIMATED_BUILDER_ROUTE: (context) => AnimatedBuilderPage(),
    Constant.ANIMATED_CONTAINER_ROUTE: (context) => AnimatedContainerPage(),
    Constant.ANIMATED_CROSS_FADE_ROUTE: (context) => AnimatedCrossFadePage(),
    Constant.ANIMATED_DEFAULT_TEXT_STYLE_ROUTE: (context) =>
        AnimatedDefaultTextStylePage(),
    Constant.ANIMATED_LIST_STATE_ROUTE: (context) => AnimatedListStatePage(),
    Constant.ANIMATED_MODAL_BARRIER_ROUTE: (context) =>
        AnimatedModalBarrierPage(),
    Constant.ANIMATED_OPACITY_ROUTE: (context) => AnimatedOpacityPage(),
    Constant.ANIMATED_PHYSICAL_MODEL_ROUTE: (context) =>
        AnimatedPhysicalModelPage(),
    Constant.ANIMATED_POSITIONED_ROUTE: (context) => AnimatedPositionedPage(),
    Constant.ANIMATED_SIZE_ROUTE: (context) => AnimatedSizePage(),
    Constant.ANIMATED_WIDGET_ROUTE: (context) => AnimatedWidgetPage(),
    Constant.ANIMATED_DECORATED_BOX_TRANSITION_ROUTE: (context) =>
        DecoratedBoxTransitionPage(),
    Constant.ANIMATED_FADE_TRANSITION_ROUTE: (context) => FadeTransitionPage(),
    Constant.ANIMATED_HERO_ROUTE: (context) => HeroPage(),
    Constant.ANIMATED_POSITIONED_TRANSITION_ROUTE: (context) =>
        PositionedTransitionPage(),
    Constant.ANIMATED_SCALE_TRANSITION_ROUTE: (context) =>
        ScaleTransitionPage(),
    Constant.ANIMATED_SIZE_TRANSITION_ROUTE: (context) => SizeTransitionPage(),
    Constant.ANIMATED_SLIDE_TRANSITION_ROUTE: (context) =>
        SlideTransitionPage(),
    Constant.ANIMATED_TWEEN_ROUTE: (context) => AnimatedTweenPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: _route,
      title: Constant.APP_NAME,
      home: MyHomePage(),
    );
  }
}
