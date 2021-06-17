import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatelessWidget {
  const AnimatedCrossFadePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedCrossFade(),
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

class BodyAnimatedCrossFade extends StatefulWidget {
  BodyAnimatedCrossFade({Key? key}) : super(key: key);

  @override
  _BodyAnimatedCrossFadeState createState() => _BodyAnimatedCrossFadeState();
}

class _BodyAnimatedCrossFadeState extends State<BodyAnimatedCrossFade> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            print(selected);
            selected = !selected;
          });
        },
        child: AnimatedCrossFade(
          crossFadeState:
              selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 3),
          firstChild: buildContainerHello(
              context,
              Icon(
                Icons.wb_sunny,
                size: 40.0,
                color: Colors.orange,
              ),
              selected),
          secondChild: buildContainerHello(
              context,
              Icon(
                Icons.grade,
                size: 40.0,
                color: Colors.yellow,
              ),
              selected),
        ),
      ),
    );
  }

  final buildContainerHello =
      (BuildContext context, Icon? icon, bool? selected) => Container(
            color: selected! ? Colors.white : Colors.black26,
            width: 200.0,
            height: 200.0,
            child: icon,
          );
}
