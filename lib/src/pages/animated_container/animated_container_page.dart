import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatelessWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedContainer(),
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

class BodyAnimatedContainer extends StatefulWidget {
  BodyAnimatedContainer({Key? key}) : super(key: key);

  @override
  _BodyAnimatedContainerState createState() => _BodyAnimatedContainerState();
}

class _BodyAnimatedContainerState extends State<BodyAnimatedContainer> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print(selected);
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          // f -> 200 t -> 200
          height: selected ? 100.0 : 200.0,
          // f -> 100 t -> 200
          color: selected ? Colors.red : Colors.blue,
          // f -> red t -> blue
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          // f -> เคลื่อนchild ไป center t -> เคลื่อนchild ไป topCenter
          duration: const Duration(seconds: 10),
          // เวลาในการเคลื่อนไหว
          curve: Curves.fastOutSlowIn,
          //FX ในการเคลือนไหว
          child: const FlutterLogo(size: 75),
        ),
      ),
    );
  }
}
