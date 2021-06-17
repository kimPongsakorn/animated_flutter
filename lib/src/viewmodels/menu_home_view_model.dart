import 'package:animated_flutter/src/models/menu_home.dart';
import 'package:animated_flutter/src/utils/constanst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuHomeViewModel {
  List<MenuHome>? menuItems;

  MenuHomeViewModel({this.menuItems});

  List<MenuHome> getMenuItems(BuildContext context) => menuItems = <MenuHome>[
        MenuHome(
          title: 'AnimatedAlign',
          subTitle: 'อนิเมชันย้ายตำแหน่ง',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_ALIGN_ROUTE,
              arguments: {'title': 'AnimatedAlign'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedBuilder',
          subTitle: 'อนิเมชัน',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_BUILDER_ROUTE,
              arguments: {'title': 'AnimatedBuilder'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedContainer',
          subTitle: 'อนิเมชันเปลี่ยนรูปร่าง container',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_CONTAINER_ROUTE,
              arguments: {'title': 'AnimatedContainer'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedCrossFade',
          subTitle: 'อนิเมชันการ fade',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_CROSS_FADE_ROUTE,
              arguments: {'title': 'AnimatedCrossFade'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedDefaultTextStyle',
          subTitle: 'อนิเมชันสี และขนาด ตัวหนังสือ',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_DEFAULT_TEXT_STYLE_ROUTE,
              arguments: {'title': 'AnimatedDefaultTextStyle'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedListState',
          subTitle: 'อนิเมชัน',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_LIST_STATE_ROUTE,
              arguments: {'title': 'AnimatedListState'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedModalBarrier',
          subTitle: 'อนิเมชัน model',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_MODAL_BARRIER_ROUTE,
              arguments: {'title': 'AnimatedModalBarrier'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedOpacity',
          subTitle: 'อนิเมชัน โปร่งใส',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_OPACITY_ROUTE,
              arguments: {'title': 'AnimatedOpacity'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedPhysicalModel',
          subTitle: 'อนิเมชันเงา',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_PHYSICAL_MODEL_ROUTE,
              arguments: {'title': 'AnimatedPhysicalModel'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedPositioned',
          subTitle: 'อนิเมชันการย้ายตำแหน่ง',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_POSITIONED_ROUTE,
              arguments: {'title': 'AnimatedPositioned'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedSize',
          subTitle: 'อนิเมชันเปลี่ยนขนาด',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_SIZE_ROUTE,
              arguments: {'title': 'AnimatedSize'},
            );
          },
        ),
        MenuHome(
          title: 'AnimatedWidget',
          subTitle: 'อนิเมชัน Widget',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_WIDGET_ROUTE,
              arguments: {'title': 'AnimatedWidget'},
            );
          },
        ),
        MenuHome(
          title: 'DecoratedBoxTransition',
          subTitle: 'อนิเมชันเปลี่ยนรูปร่าง หรือขอบ',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_DECORATED_BOX_TRANSITION_ROUTE,
              arguments: {'title': 'DecoratedBoxTransition'},
            );
          },
        ),
        MenuHome(
          title: 'FadeTransition',
          subTitle: 'อนิเมชันFade ',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_FADE_TRANSITION_ROUTE,
              arguments: {'title': 'FadeTransition'},
            );
          },
        ),
        MenuHome(
          title: 'Hero',
          subTitle: 'อนิเมชันการเปลี่ยน ',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_HERO_ROUTE,
              arguments: {'title': 'Hero'},
            );
          },
        ),
        MenuHome(
          title: 'PositionedTransition',
          subTitle: 'อนิเมชันการเปลี่ยนตำแหน่ง และขนาด ',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_POSITIONED_TRANSITION_ROUTE,
              arguments: {'title': 'PositionedTransition'},
            );
          },
        ),
        MenuHome(
          title: 'ScaleTransition',
          subTitle: 'อนิเมชันการเคลื่อนไหว ขยาย ลด ',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_SCALE_TRANSITION_ROUTE,
              arguments: {'title': 'ScaleTransition'},
            );
          },
        ),
        MenuHome(
          title: 'SizeTransition',
          subTitle: 'อนิเมชัน ความกว้าง ความสูง',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_SIZE_TRANSITION_ROUTE,
              arguments: {'title': 'SizeTransition'},
            );
          },
        ),
        MenuHome(
          title: 'SlideTransition ',
          subTitle: 'อนิเมชันการเคลื่อนที่สไล ',
          icon: Icon(Icons.dashboard, size: 40.0),
          action: () {
            Navigator.pushNamed(
              context,
              Constant.ANIMATED_SLIDE_TRANSITION_ROUTE,
              arguments: {'title': 'SlideTransition '},
            );
          },
        ),
        // MenuHome(
        //   title: 'Tween',
        //   subTitle: 'อนิเมชัน ',
        //   icon: Icon(Icons.dashboard, size: 40.0),
        //   action: () {
        //     Navigator.pushNamed(
        //       context,
        //       Constant.ANIMATED_TWEEN_ROUTE,
        //       arguments: {'title': 'Tween'},
        //     );
        //   },
        // ),
      ];
}
