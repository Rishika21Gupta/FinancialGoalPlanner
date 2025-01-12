// import 'package:financial_goal_planner/BLA.dart';
import 'package:financial_goal_planner/Overview.dart';
import 'package:flutter/material.dart';

class Parameter extends StatefulWidget {
  const Parameter({super.key});

  @override
  State<Parameter> createState() => _ParameterState();
}

class _ParameterState extends State<Parameter> {
  bool firstValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title:Text('Goals Parameter')
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView(
            children: [Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Include your past savings",style: TextStyle(fontSize: 21),),


                Checkbox(value:firstValue,
                  activeColor:Colors.green,
                  onChanged: (newBool){
                    setState(() {
                      firstValue=newBool! ;
                    });
                  },
                ),
              ],
            ),
            Text("(Savings,Investments,PPF,Bonds,LICs,etc)",style: TextStyle(fontSize: 12),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // color: Colors.red,
                  width:50,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.lightBlue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),

                      ),

                      suffixIcon: Icon(Icons.numbers)
                    ),
                  ),
                ),
              ),Text("Note:This would help to reach the goal faster.This money would be divided based on your percentage allocation of goals.",style: TextStyle(fontSize: 12),),
              Text("Monthly Contribution",style: TextStyle(fontSize: 21),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: TextField(
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        fillColor: Colors.lightBlue,
                        suffixIcon: Icon(Icons.numbers)
                    ),
                  ),
                ),
              ),
              Text("Investment Rate of Return",style: TextStyle(fontSize: 21),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        fillColor: Colors.lightBlue,
                        suffixIcon: Icon(Icons.numbers)
                    ),
                  ),
                ),
              ),
              Text("Percentage Allocation",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(


                  child: Material(
                    elevation: 9,
                    borderRadius: BorderRadius.circular(21),
                    shadowColor: Colors.black,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        filled: true,
                          prefixIcon: Icon(Icons.lock),
                          prefixText: "Emergency Fund",

                        suffixIcon: Icon(Icons.percent),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(


                  child: Material(
                    elevation: 9,
                    borderRadius: BorderRadius.circular(21),
                    shadowColor: Colors.black,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        prefixText: "Travel Fund",
                        filled: true,
                        suffixIcon: Icon(Icons.percent),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(


                  child: Material(
                    elevation: 9,
                      borderRadius: BorderRadius.circular(21),
                      shadowColor: Colors.black,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        prefixText: "Retirement",
                        filled: true,
                        suffixIcon: Icon(Icons.percent),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 250,
                  height: 50,
                  child: FloatingActionButton(
                    onPressed:(){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>Overview()));
                      print("next page");
                    },
                    tooltip: 'Proceed',
                    child: Text("Proceed",style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold ,),),
                  ),
                ),
              )

            ],
          ),
        ),
      )

    );
  }
}
