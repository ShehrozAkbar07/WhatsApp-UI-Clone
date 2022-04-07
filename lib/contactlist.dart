import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(info[index]['name'].toString()),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(info[index]['message'].toString()),
          ),
          trailing: Text(info[index]['time'].toString()),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
          ),
        );
      },
    );
  }
}
