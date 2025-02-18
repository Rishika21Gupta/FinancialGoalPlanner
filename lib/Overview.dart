import 'package:financial_goal_planner/BLA.dart';
import 'package:financial_goal_planner/main.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title:Text('Goals Parameter')
        ),
        body:Container(
          child:ListView(
            children: [Padding(
              padding: const EdgeInsets.all(11.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70 ,
                  borderRadius: BorderRadius.circular(21.r),
                  border: Border.all(
                    width: 2.w,
                    color:Colors.grey,
                  ),
                  boxShadow:[BoxShadow(
                    blurRadius: 11,


                  ),
                  ],
                ),

                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height:70.h,
                          width: 90.w,
                          child: PieChart(PieChartData(
                                          startDegreeOffset: 270,
                                          sections: [
                          PieChartSectionData(
                            value:50,
                            radius:20
                          ),
                          PieChartSectionData(
                              value:50,
                              showTitle: false,
                              color: Colors.grey,
                              radius:10
                          )]
                          )),
                        ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Emergency Fund",style:TextStyle(fontSize:19.sp,fontWeight: FontWeight.w600)),
                    Text("1.5 yr",style: TextStyle(fontSize:16.sp),),
                  ],
                ),
                        Text("2,00,000",style: TextStyle(fontSize:16.sp)),
                        Icon(Icons.lock)
                      ]

                    ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70 ,
                    borderRadius: BorderRadius.circular(21.r),
                    border: Border.all(
                      width: 2.w,
                      color:Colors.grey,
                    ),
                    boxShadow:[BoxShadow(
                      blurRadius: 11,


                    ),
                    ],
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height:70.h,
                          width: 90.w,
                          child: PieChart(PieChartData(
                              startDegreeOffset: 270,
                              sections: [
                                PieChartSectionData(
                                    value:35,
                                    radius:20,
                                    color:Colors.green,
                                ),
                                PieChartSectionData(
                                    value:65,
                                    showTitle: false,
                                    color: Colors.grey,
                                    radius:10
                                )]
                          )),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Travel Fund",style:TextStyle(fontSize:19.sp,fontWeight: FontWeight.w600)),
                            Text("3.5 yr",style: TextStyle(fontSize:16.sp),),
                          ],
                        ),
                        Text("2,00,000",style: TextStyle(fontSize:16.sp)),
                        Icon(Icons.lock)
                      ]

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70 ,
                    borderRadius: BorderRadius.circular(21.r),
                    border: Border.all(
                      width: 2.w,
                      color:Colors.grey,
                    ),
                    boxShadow:[BoxShadow(
                      blurRadius: 11,


                    ),
                    ],
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height:70.h,
                          width: 90.w,
                          child: PieChart(PieChartData(
                              startDegreeOffset: 270,
                              sections: [
                                PieChartSectionData(
                                    value:10,
                                    radius:20,
                                    color:Colors.orange,
                                ),
                                PieChartSectionData(
                                    value:90,
                                    showTitle: false,
                                    color: Colors.grey,
                                    radius:10
                                )]
                          )),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Retirement Fund",style:TextStyle(fontSize:19.sp,fontWeight: FontWeight.w600)),
                            Text("15 yr",style: TextStyle(fontSize:16.sp),),
                          ],
                        ),
                        Text("2,00,000",style: TextStyle(fontSize:16.sp)),
                        Icon(Icons.lock)
                      ]

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Text("Note:Locked represent the Goal you want to freeze and changes wont be reflected in them",style: TextStyle(fontSize: 12.sp,color: Colors.blue),)),
              ),
           
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Text("Timeline of Goals",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25.sp,),)),
              ),


              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 250.w,
                  height: 50.h,
                  child: FloatingActionButton(
                    onPressed:(){
                      // Navigator.push(context,MaterialPageRoute(builder: (context)=>Overview()));
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>LineGraphExample()));
                      print("next page");
                      print("EDIT GOAL");
                    },
                    tooltip: 'Edit Goal',
                    child: Text("Edit Goal",style: TextStyle(color: Colors.black,fontSize: 21.sp,fontWeight: FontWeight.bold ,),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 250.w,
                  height: 50.h,
                  child: FloatingActionButton(
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage(title: 'back to homepage',)));

                    },
                    tooltip: 'Back to Dashboard',
                    child: Text("Back to Dashboard",style: TextStyle(color: Colors.black,fontSize: 21.sp,fontWeight: FontWeight.bold ,),),
                  ),
                ),
              ),









            ]
          )
        ),
    );
  }
}
