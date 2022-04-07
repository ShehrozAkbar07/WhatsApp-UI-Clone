import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/call.dart';
import 'package:whatsappclone_flutter/contactlist.dart';
import 'package:whatsappclone_flutter/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              Icon(Icons.camera_alt_outlined);
              break;
            case 1:
              Icon(Icons.chat);
              break;
            case 2:
              Icon(Icons.camera_alt_outlined);
              break;
            case 3:
              Icon(Icons.message);
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          backgroundColor: Color(0xff075E54),
          title: const Text('WhatsApp'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: const [
              Tab(child: Icon(Icons.camera_alt_outlined)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            Icon(Icons.camera_alt_outlined),
            ContactList(),
            Status(),
            Call(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff075E54),
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
        ));
  }
}
