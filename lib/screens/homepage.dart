import 'package:flutter/material.dart';
import 'package:shopper_app/screens/dashBoard.dart';
import 'package:shopper_app/screens/favorite.dart';
import 'package:shopper_app/screens/order.dart';
import 'package:shopper_app/screens/profile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;
  List<Widget> _widget = [
    DashBoard(),
    Favorite(),
    Profile(),
    Order(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => Order(),));}, icon:const Icon( Icons.add,))],
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          icon: const Icon(
            Icons.person,
            color: Colors.black,
            size: 30,
          ),
        ),
        elevation: 0,
      ),
    );
  }
}
