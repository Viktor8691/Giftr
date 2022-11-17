import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giftr/ui/my_store/MyStoreScreen.dart';
import 'package:giftr/ui/nav_menu/DrawerMenu.dart';

import '../newest/NewestScreen.dart';
import '../suggestions/SuggestionScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, elevation: 1, iconTheme: IconThemeData(color: Colors.black87),
          title: Image.asset('assets/image/app_logo.png', width: 50,),
          actions: [
            IconButton(onPressed: () {

            }, icon: Icon(Icons.search)),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.message))
          ],
          bottom: TabBar(
            labelColor: Colors.blueAccent,
            unselectedLabelColor: Colors.black87,
            tabs: [
              Tab(text: 'Suggestions',),
              Tab(text: 'Newest',),
              Tab(text: 'My store',)
            ],
          ),
        ),
        drawer: DrawerMenu(context),
        body: TabBarView(
          //controller: _tabController,
          children: [
            SuggestionScreen(),
            NewestScreen(),
            MyStoreScreen()
          ],
        )
      ),
    );
  }
}