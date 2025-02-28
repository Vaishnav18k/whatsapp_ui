import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/calls.dart';
import 'package:whatsapp/tabs/chats.dart';
import 'package:whatsapp/tabs/status.dart';

/// The main entry point of the application.
/// It runs the app by calling runApp with a MaterialApp widget.
/// The MaterialApp has MyApp as its home widget and hides the debug banner.

void main() =>
    runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  /// The TabController is used to coordinate the selected tab with the
  /// corresponding content in the TabBarView.
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// The title of the app bar is set to 'Whatsapp'.
        title: Text('Whatsapp', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF075E54),
        actions: <Widget>[
          /// The first action is a search icon.
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),

          /// The second action is a more_vert icon.
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
        bottom: TabBar(
          /// The TabController is passed to the TabBar to coordinate the
          /// selected tab with the corresponding content in the TabBarView.
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            /// The first tab is a camera_alt icon.
            Tab(icon: Icon(Icons.camera_alt)),

            /// The second tab has the text 'CHATS'.
            Tab(text: 'CHATS'),

            /// The third tab has the text 'STATUS'.
            Tab(text: 'STATUS'),

            /// The fourth tab has the text 'CALLS'.
            Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: TabBarView(
        /// The TabController is passed to the TabBarView to coordinate the
        /// selected tab with the corresponding content.
        controller: _tabController,
        children: <Widget>[
          /// The first child is a camera_alt icon.
          Icon(Icons.camera_alt),

          /// The second child is the Chats widget.
          Chats(),

          /// The third child is the Status widget.
          Status(),

          /// The fourth child is the Calls widget.
          Calls(),
        ],
      ),
      floatingActionButton:
          _tabController.index == 0
              ? FloatingActionButton(
                backgroundColor: Color(0xFF075E54),
                child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                onPressed: () {},
              )
              : _tabController.index == 1
              ? FloatingActionButton(
                backgroundColor: Color(0xFF075E54),
                child: Icon(Icons.chat, color: Colors.white),
                onPressed: () {},
              )
              : _tabController.index == 2
              ? Column(
                mainAxisAlignment: MainAxisAlignment.end,

                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 249, 249, 249),
                      child: Icon(
                        Icons.mode_edit_rounded,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 10),
                  FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 7, 94, 19),
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              )
              : _tabController.index == 3
              ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 69, 217, 15),
                      child: Icon(Icons.add_call, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),

                  SizedBox(height: 10),
                  FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 7, 94, 19),
                    child: Icon(Icons.call, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              )
              : null,
    );
  }
}
