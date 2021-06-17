import 'package:animated_flutter/src/utils/constanst.dart';
import 'package:flutter/material.dart';

class AnimatedPositionedPage extends StatelessWidget {
  const AnimatedPositionedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedPositioned(),
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

class BodyAnimatedPositioned extends StatefulWidget {
  BodyAnimatedPositioned({Key? key}) : super(key: key);

  @override
  _BodyAnimatedPositionedState createState() => _BodyAnimatedPositionedState();
}

class _BodyAnimatedPositionedState extends State<BodyAnimatedPositioned> {
  bool showMessage = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(Constant.APP_NAME),
          ),
          AnimatedPositioned(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  showMessage = true;
                  print(showMessage);
                });
              },
              onLongPress: () {
                setState(() {
                  showMessage = false;
                  print(showMessage);
                });
              },
              child: Container(
                color: Colors.pinkAccent,
                height: 200,
                width: 100,
              ),
            ),
            duration: Duration(
              microseconds: 500,
            ),
            bottom: showMessage ? 70 : 10,
            //showMessage T -> 70
            right: 10,
          ),
        ],
      ),
    );
  }
}
