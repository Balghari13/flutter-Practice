import 'package:flutter/material.dart';


class PassingDataPrac extends StatelessWidget {
  var nameGet;
  PassingDataPrac( this.nameGet) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Passing Data'),
     ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dashborad',
              style: TextStyle(fontSize: 25),),
              Text('Welcome $nameGet',style:
              TextStyle(fontSize: 22, color: Colors.green), )
            ],
          ),
        ),
      ),
    );
  }
}
