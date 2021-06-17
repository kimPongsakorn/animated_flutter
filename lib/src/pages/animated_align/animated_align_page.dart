import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatelessWidget {
  const AnimatedAlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedAlign(),
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

class BodyAnimatedAlign extends StatefulWidget {
  BodyAnimatedAlign({Key? key}) : super(key: key);

  @override
  _BodyAnimatedAlignState createState() => _BodyAnimatedAlignState();
}

class _BodyAnimatedAlignState extends State<BodyAnimatedAlign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
          print(selected);
        });
      },
      child: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.purple,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            // ถ้า true -> บน false -> ล่าง
            duration: const Duration(seconds: 3),
            //เวลาในการเคลือนที่
            curve: Curves.easeInExpo,
            // FX การเคลื่อนไหว
            child: const FlutterLogo(size: 50.0),
            // FlutterLogo ที่จะให้เคลื่อนไหว
          ),
        ),
      ),
    );
  }
}
