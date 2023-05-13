import 'package:bmi_pract/PassingDataPrac.dart';
import 'package:bmi_pract/widget/roundedButton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: RoundedButton(btnName: 'Log In', icon: Icon(Icons.lock),
              callback: (){
                print('clicked');
              },

              ),
            ),
            TextField(
              controller: nameController,
            ),
            Container(
              width: 100,
              child: RoundedButton(btnName: 'Sign In', icon: Icon(Icons.unarchive),
                callback: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>PassingDataPrac(nameController.text.toString())));
                  print('clicked');
                },
                byColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

