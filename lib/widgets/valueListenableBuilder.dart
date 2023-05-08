import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  
  final ValueNotifier<int> number = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                IconButton(
                  onPressed: (){
                    number.value +=1;
                  },
                  icon: Icon(Icons.add)
                ),
                const SizedBox(height: 30),
                ValueListenableBuilder(
                  valueListenable: number, builder: (BuildContext context, int value, Widget ?child){
                    return Text("${value}", style: TextStyle(fontSize: 30));
                  }
                ),
                const SizedBox(height: 30),
                IconButton(
                  onPressed: (){

                    number.value >0 ?number.value -=1:0;
                  },
                  icon: Icon(Icons.remove)
                ),
            ],
          ),
        )
      ),
    );
  }
}