import 'package:flutter/material.dart';

class BmiMainScreen extends StatefulWidget {
  const BmiMainScreen({Key? key}) : super(key: key);

  @override
  State<BmiMainScreen> createState() => _BmiMainScreenState();
}

class _BmiMainScreenState extends State<BmiMainScreen> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = '';
  var bgColor= Colors.amber.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI APP'),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height:21),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    labelText: 'Enter your Weights(in kg)',
                    prefixIcon: Icon(Icons.line_weight),

                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    labelText: 'Enter your Height(in feet)',
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    labelText: 'Enter your height(in Inch)',
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16,),
                ElevatedButton(onPressed: (){
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();
                  if(wt!='' && ft!='' && inch!=''){
                    var iWt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iInch = int.parse(inch);

                    var tInch = (ift*12) +iInch;
                    var tCa = tInch*2.54;
                    var tM = tCa/100;
                    var bmi = iWt/(tM*tM);

                    var msg = '';

                    if(bmi>25){
                      msg = 'You are overweight';
                      bgColor= Colors.red.shade200;
                    }else if(bmi<18){
                      msg = 'You are underweight';
                      bgColor= Colors.orange.shade200;
                    }else{
                      msg = 'You are fit';
                      bgColor= Colors.green.shade200;
                    }

                    setState(() {
                      result = '$msg \n Your MBI is ${bmi.toStringAsFixed(4)}';
                    });

                  }else{
                    setState(() {
                      result = 'Please fill all required feilds';
                    });
                  }
                }, child: Text('Calculate')),

                Text(' $result', style: TextStyle(fontSize: 24),)


              ],
            ),
          ),
        ),
      ),
    );
  }
}
