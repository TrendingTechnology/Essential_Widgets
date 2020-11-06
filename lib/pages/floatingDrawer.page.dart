import 'package:essential_widgets/widgets/floatingDrawer.dart';
import 'package:flutter/material.dart';

class FloatingDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  List items = [
    DrawerTile(
      child: Text("Status: Online"),
      leading: Icon(Icons.cloud),
      trailing: Icon(
        Icons.brightness_1,
        color: Colors.green,
        size: 10,
      ),
    ),
    DrawerTile(
      child: Text("Games"),
      leading: Icon(Icons.gamepad),
      trailing: Icon(Icons.chevron_right),
      children: List.generate(2, (i) => DrawerTile(child: Text("${i + 1}"))),
    ),
    DrawerTile(
      child: Text("Friends"),
      leading: Icon(Icons.people),
      trailing: Icon(Icons.chevron_right),
      children: List.generate(5, (i) => DrawerTile(child: Text("${i + 1}"))),
    ),
    DrawerTile(
      child: Text("Exit"),
      leading: Icon(Icons.exit_to_app),
    ),
    DrawerTile(
      child: Text("test"),
      leading: Icon(Icons.brightness_1),
      children: [
        DrawerTile(
          child: Text("test 1.1"),
          leading: Icon(Icons.brightness_1),
          children: [
            DrawerTile(
              child: Text("test 1.2"),
              leading: Icon(Icons.brightness_1),
              children: [
                DrawerTile(
                  child: Text("test 1.3"),
                  leading: Icon(Icons.brightness_1),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ];
  List start;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FloatingDrawer(
        separator: Container(
          width: double.infinity,
          height: 1,
          color: Colors.black12,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        tiles: [...items],
      ),
    );
  }
}
