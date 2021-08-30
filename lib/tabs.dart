import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:one/les sites/casa_settat.dart';
import 'package:one/les sites/fes_mkenes.dart';
import 'package:one/les sites/laayoun_assakia_el_hamra.dart';
import 'package:one/les sites/tanger.dart';
import 'package:one/les%20sites/hcp.dart';
class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with  SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync:this);
  }

  // dispose function
  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: TabBar(
          controller: tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.blue,
          labelStyle: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.apartment, color: Colors.blue,),
              child: Text( 'HCP', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black),),
            ),
            Tab(
              icon: Icon(Icons.assistant_photo_rounded, color: Colors.blue,),
              child: Text( 'TAnger', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black),),
            ),
            Tab(
              icon: Icon(Icons.assistant_photo, color: Colors.red,),
              child: Text( 'Fes Mkenes', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black),),
            ),
            Tab(
              icon: Icon(Icons.assistant_photo, color: Colors.green,),
              child: Text( 'Casa Settat', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black),),
            ),
            Tab(
              icon: Icon(Icons.assistant_photo, color: Colors.deepOrange),
              child: Text( 'Laayoun', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.black),),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          HCPsite(),
          Tangersite(),
          Fessite(),
          Casasite(),
          Laayounsite(),
        ],
      ),
    );
  }

}