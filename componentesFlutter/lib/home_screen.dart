import 'package:flutter/material.dart';
import 'package:myflutter/input_custom.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController nameController;

  @override
  void initState() {
    nameController= TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meu App")),
      body:Row(children: [
        Expanded(
          flex: 1,
          child: Container(         
            color: Colors.red,
          ),
        ),
        SizedBox(width: 30,),
         Expanded(
          flex: 2,
           child: Container(
            color: Colors.yellow,
            child: Column(
              children: [
                Text("Login"),
                InputCustom(controller: nameController)
              ]
            ),
                       ),
         ),
         Expanded(
          flex: 1,
           child: Container(
            color: Colors.blue,
                       ),
         )
      ],
      ),
    );
  }
}