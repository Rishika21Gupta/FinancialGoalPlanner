// import 'package:financial_goal_planner/BLA.dart';
import 'package:financial_goal_planner/Overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Parameter extends StatefulWidget {
  const Parameter({super.key});

  @override
  State<Parameter> createState() => _ParameterState();
}

class _ParameterState extends State<Parameter> {
  var savings=TextEditingController();
  var monthy_contribution=TextEditingController();
  var investment_rateof_return=TextEditingController();
  var emergency_fund=TextEditingController();
  var travel_fund=TextEditingController();
  var retirement=TextEditingController();
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
                Text("Include your past savings",style: TextStyle(fontSize: 21.sp),),


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
            Text("(Savings,Investments,PPF,Bonds,LICs,etc)",style: TextStyle(fontSize: 12.sp),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // color: Colors.red,
                  width:50,
                  child: TextField(
                    controller: savings,
                    decoration: InputDecoration(
                        fillColor: Colors.lightBlue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),

                      ),

                      suffixIcon: Icon(Icons.numbers)
                    ),
                  ),
                ),
              ),Text("Note:This would help to reach the goal faster.This money would be divided based on your percentage allocation of goals.",style: TextStyle(fontSize: 12),),
              Text("Monthly Contribution",style: TextStyle(fontSize: 21.sp),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: TextField(
                    controller: monthy_contribution,
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        fillColor: Colors.lightBlue,
                        suffixIcon: Icon(Icons.numbers)
                    ),
                  ),
                ),
              ),
              Text("Investment Rate of Return",style: TextStyle(fontSize: 21.sp),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    controller: investment_rateof_return,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        fillColor: Colors.lightBlue,
                        suffixIcon: Icon(Icons.numbers)
                    ),
                  ),
                ),
              ),
              Text("Percentage Allocation",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w500),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Material(
                    elevation: 9,
                    borderRadius: BorderRadius.circular(21.r),
                    shadowColor: Colors.black,

                    child: TextField(
                      controller: emergency_fund,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        filled: true,
                          prefixIcon: Icon(Icons.lock),
                          prefix:Text("Emergency Fund"),
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
                    borderRadius: BorderRadius.circular(21.r),
                    shadowColor: Colors.black,
                    child: TextField(
                      controller: travel_fund,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        prefix:Text("Travel Fund"),
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
                      borderRadius: BorderRadius.circular(21.r),
                      shadowColor: Colors.black,
                    child: TextField(
                      controller: retirement,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        prefix: Text("Retirement"),
                        // prefixText: "Retirement",
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
                  width: 250.w,
                  height: 50.h,
                  child: FloatingActionButton(
                    onPressed:(){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>Overview()));
                      print("next page");
                    },
                    tooltip: 'Proceed',
                    child: Text("Proceed",style: TextStyle(color: Colors.black,fontSize: 21.sp,fontWeight: FontWeight.bold ,),),
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
