import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/info.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const  EdgeInsets.only(left: 2),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Tile('Ahad',
                    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
                const Divider(),
                Tile(' Hamza',
                    'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
                const Divider(),
                Tile('Mubashir',
                    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
                const Divider(),
                Tile('Saad',
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
                const Divider(),
                Tile(' Hamza',
                    'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
                Divider(),
                Tile('Ahad',
                    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
                const Divider(),
                Tile('Saad',
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
                const Divider(),
                Tile(' Hamza',
                    'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
                Tile('Saad',
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
              ]),
        ),
      ),
    );
  }
}

Widget Tile(name, mage) {
  return ListTile(
    leading: Container(
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(radius: 20, backgroundImage: NetworkImage(mage)),
    ),
    title: Text(name),
    trailing: const Icon(
      Icons.phone,
      color: Color(0xff075E54),
    ),
    subtitle: const Text('John Snow Yesterday 21:22'),
  );
}
