import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5, left: 20),
              child: Text(
                'Recent Update',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 109, 106, 106)),
              ),
            ),
            const Divider(),
            Tile('Ahad',
                'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5, left: 20),
              child: Text(
                'Recent Viewed',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 109, 106, 106)),
              ),
            ),
            const Divider(),
            Tile(' Hamza',
                'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
            const Divider(),
            Tile('Mubashir',
                'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
            const Divider(),
            Tile('Saad',
                'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
          ]),
    );
  }
}

Widget Tile(name, mage) {
  return ListTile(
    leading: Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 3)),
      child: CircleAvatar(radius: 40, backgroundImage: NetworkImage(mage)),
    ),
    title: Text(name),
    subtitle: const Text('John Snow Yesterday 21:22'),
  );
}
