import 'package:flutter/material.dart';
import 'package:whatappcloning/pages/call.dart';
import 'package:whatappcloning/pages/camera.dart';
import 'package:whatappcloning/pages/chat.dart';
import 'package:whatappcloning/pages/status.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('WhatsApp'),
        elevation: 0.7,
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(text: 'STATUS'),
            Tab(
              text: 'CALLS',
            )
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallScreen()
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
        onPressed: () {
          print('open chat');
        },
      ),
    );
  }
}
