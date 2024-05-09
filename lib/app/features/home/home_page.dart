import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage'), actions: [
        IconButton(
          onPressed: () {

           bool result = await HomeController.logout();

           if (result){

            Navigator.of (context).pushNamedAndRemoveUntil((AppRoutes.login,(route) =>false);
            

           }
          },
          icon: Icon(Icons.logout),
        )
      ]),
      body: Container(),
    );
  }
}
