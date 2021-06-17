import 'package:animated_flutter/src/models/menu_home.dart';
import 'package:animated_flutter/src/utils/constanst.dart';
import 'package:animated_flutter/src/viewmodels/menu_home_view_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constant.APP_NAME,
        ),
      ),
      body: BodyMyHome(),
    );
  }
}

class BodyMyHome extends StatefulWidget {
  @override
  _BodyMyHomeState createState() => _BodyMyHomeState();
}

class _BodyMyHomeState extends State<BodyMyHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 8),
          Menu(),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<MenuHome> menus = MenuHomeViewModel().getMenuItems(context);
    return ListView.separated(
      padding: EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final _model = menus[index];

        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10.0),
          width: double.infinity,
          height: 80.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.black26),
          ),
          child: ListTile(
            trailing: _model.icon,
            title: Text(
              _model.title!,
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              _model.subTitle!,
              style: TextStyle(color: Colors.black38),
            ),
            onTap: () => _model.action!(),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 5,
          indent: 80,
        );
      },
      itemCount: menus.length,
    );
  }
}
