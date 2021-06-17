import 'package:animated_flutter/src/utils/constanst.dart';
import 'package:flutter/material.dart';

class AnimatedDefaultTextStylePage extends StatelessWidget {
  const AnimatedDefaultTextStylePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedDefaultTextStyle(),
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text(
      (ModalRoute.of(context)!.settings.arguments as Map)['title'] ?? "",
    ),
  );
}

class BodyAnimatedDefaultTextStyle extends StatefulWidget {
  BodyAnimatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  _BodyAnimatedDefaultTextStyleState createState() =>
      _BodyAnimatedDefaultTextStyleState();
}

class _BodyAnimatedDefaultTextStyleState
    extends State<BodyAnimatedDefaultTextStyle> {
  bool selected = true;
  double _fontSize = 60;
  Color _color = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        
        FlatButton(
          onPressed: () {
            setState(() {
              _fontSize = selected ? 90 : 60;
              _color = selected ? Colors.blue : Colors.red;
              selected = !selected;
              print(selected);
              print(_fontSize);
              print(_color);
            });
          },
          child: Text(
            "CLICK ME!",
          ),
        ),
        AnimatedDefaultTextStyle(
          child: Text(
            Constant.APP_NAME,
            textAlign: TextAlign.center,
          ),
          style: TextStyle(
            fontSize: _fontSize,
            color: _color,
            fontWeight: FontWeight.bold,
          ),
          duration: const Duration(seconds: 3),
          curve: Curves.bounceInOut,
        ),
      ],
    );
  }
}
