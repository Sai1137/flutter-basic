// ignore: file_names
import 'package:flutter/material.dart';

int itemcount = 10;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemcount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Elon Musk ${(index + 1)}'),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all),
          onTap: () {
            debugPrint('Elon Musk ${(index + 1)} selected');
          },
        );
      },
    );
  }
}
