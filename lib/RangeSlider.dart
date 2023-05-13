import 'package:flutter/material.dart';


class RangeSliderPage extends StatefulWidget {
  var dataGet;
   RangeSliderPage({Key? key, required this.dataGet}) : super(key: key);

  @override
  State<RangeSliderPage> createState() => _RangeSliderPageState();
}

class _RangeSliderPageState extends State<RangeSliderPage> {

  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Range SLider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSlider(
              values: values,
              labels: labels,
              divisions: 10,
              activeColor: Colors.green,
              inactiveColor: Colors.green.shade100,
              onChanged: (newValue){
                values = newValue;
                setState(() {


                });
              },
            ),
            Text('Welcome ${widget.dataGet}',style:
            TextStyle(fontSize: 22, color: Colors.green), )
          ],
        ),
      ),
    );
  }
}
