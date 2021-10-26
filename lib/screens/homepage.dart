import 'package:flutter/material.dart';
import 'package:shopper_app/screens/dashboard.dart';
import 'package:shopper_app/screens/favorite.dart';
import 'package:shopper_app/screens/order.dart';
import 'package:shopper_app/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;
  // ignore: prefer_final_fields
  List<Widget> _widget = [
    const DashBoard(),
    const Favorite(),
    const Profile(),
    const Order(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => const Order(),));}, icon:const Icon( Icons.add, color:Colors.black))],
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
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapped,
        iconSize: 20,
        selectedItemColor: Colors.black,
        
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontSize: 16),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: "  " ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite),label: "  " ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person),label: "  " ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "  " ),
         
        ],
      ),
      body: _widget[_currentIndex],
    
    );
  }
   void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
