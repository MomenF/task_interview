import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/body_content.dart';
import 'Widgets/drawer_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Todo variables
  String appBarTitle  = 'حفظ المتون';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
      body: BodyContent(),
      drawer: DrawerWidgetContent(),

    );
  }
}
