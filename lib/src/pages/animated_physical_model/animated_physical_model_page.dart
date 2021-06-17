import 'package:flutter/material.dart';

class AnimatedPhysicalModelPage extends StatelessWidget {
  const AnimatedPhysicalModelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedPhysicalModel(),
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

class BodyAnimatedPhysicalModel extends StatefulWidget {
  BodyAnimatedPhysicalModel({Key? key}) : super(key: key);

  @override
  _BodyAnimatedPhysicalModelState createState() =>
      _BodyAnimatedPhysicalModelState();
}

class _BodyAnimatedPhysicalModelState extends State<BodyAnimatedPhysicalModel> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: PhysicalModel(
      color: Colors.black,
      shadowColor: Colors.pink,
      // สีของเงา
      elevation: 8.0,
      // ระดับของเงา
      // shape: BoxShape.circle,
      //รูปทรงของเงา
      // borderRadius: BorderRadius.circular(45),
      //ทำขอบให้เงา
      child: Container(
        width: 100,
        height: 100,
        color: Colors.yellow,
      ),
    ));
  }
}
