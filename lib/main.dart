import 'package:financial_goal_planner/BLA.dart';
import 'package:financial_goal_planner/GoalParameters.dart';
import 'package:financial_goal_planner/Overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: Size(360, 690), // Design size of the UI in your design tool (e.g., Figma or Adobe XD)
    minTextAdapt: true,


    builder:(context,child) {
      return MaterialApp(
        themeMode: ThemeMode.system, // Automatically uses system theme
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        routes: {
          '/Parameter': (context) => Parameter(),
          '/Overview': (context) => Overview(),
          '/BLA': (context) => LineGraphExample()
        },
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        //   useMaterial3: true,
        // ),
        home: const MyHomePage(title: 'Goal Selection'),

      );
    },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool firstValue=false;
  bool secondValue=false;
  bool thirdValue=false;
  bool forthValue=false;


  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
        return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            TextButton(onPressed: (){print("< button pressed");}, child: Text("<",style: TextStyle(fontSize: 26.sp,fontWeight: FontWeight.bold ),)),

            Center(child: Text("Goal Selection",style: TextStyle(fontSize: 21.sp,fontWeight: FontWeight.bold ),)),
          ],
        ),
      ),
      body:
      Container(

             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListView(
                 children: [
                   Center(
                     child: Container(
                         // color:Colors.red,
                         margin:EdgeInsets.only(bottom:21),
                         child: Text("Select the Goal of your choice",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500,color:Colors.black,),)),
                   ),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Container(
                       decoration: BoxDecoration(
                         color: Colors.white70 ,
                         borderRadius: BorderRadius.circular(21.r),
                         border: Border.all(
                           width: 2,
                           color:Colors.grey ,
                         ),
                         boxShadow:[BoxShadow(
                           blurRadius: 11,


                         ),
                       ],
                       ),
                         margin:EdgeInsets.only(bottom:21),
                         child: Row(
                           children: [Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image.asset('assets/images/pic1.webp',width: 70.w,height:70.h,),
                           ),
                       Container(
                         width: 300.w,
                         height: 100.h,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                           Text("Emergency Fund",style: TextStyle(fontSize: 21.sp,fontWeight: FontWeight.bold,),),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("A savings buffer to cover unexpected expenses or financial setbacks."),
                           )
                         ],),
                       ),
                         Checkbox(value:firstValue,
                                  activeColor:Colors.green,
                                  onChanged: (newBool){
                                    setState(() {
                                      firstValue=newBool! ;
                           });
                         },
                         ),
                     ],)),
                   ),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
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
                         margin:EdgeInsets.only(bottom:21),
                         child: Row( children: [Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset('assets/images/pic2.webp',width: 70.w,height:70.h,),
                         ),
                       Container(
                         width: 300.w,
                         height: 100.h,
                         child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,

                         children: [
                           Text("Travel Fund",style: TextStyle(fontSize: 21.sp,fontWeight: FontWeight.bold,)),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("Money set aside for vacations or trips to explore new destinations."),
                           )

                         ],
                                              ),
                       ),
                           Checkbox(value:secondValue,
                             activeColor:Colors.green,
                             onChanged: (newBool){
                               setState(() {
                                 secondValue=newBool! ;
                               });
                             },
                           ),],)),
                   ),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Container(
                         decoration: BoxDecoration(
                           color: Colors.white70,
                           borderRadius: BorderRadius.circular(21),
                           border: Border.all(
                             width: 2.w,
                             color:Colors.grey,
                           ),
                           boxShadow:[BoxShadow(
                             blurRadius: 11,


                           ),
                           ],
                         ),
                         margin:EdgeInsets.only(bottom:21),
                         child: Row( children: [Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset('assets/images/pic3.webp',width: 70.w,height:70.h,),
                         ),
                       Container(
                         width: 300.w,
                         height: 100.h,
                         child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Retirement Goal",style: TextStyle(fontSize: 21.sp,fontWeight: FontWeight.bold,)),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("Savings dedicated to ensuring financial security in retirement years."),
                           )

                         ],
                         ),
                       ),
                           Checkbox(value:thirdValue,
                             activeColor:Colors.green,
                             onChanged: (newBool){
                               setState(() {
                                 thirdValue=newBool! ;
                               });
                             },
                           ),
                         ],)),
                   ),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Container(

                         decoration: BoxDecoration(
                           color: Colors.white70 ,
                           borderRadius: BorderRadius.circular(21),
                           border: Border.all(
                             width: 2.w,
                             color:Colors.grey,
                           ),
                           boxShadow:[BoxShadow(
                             blurRadius: 11,


                           ),
                           ],
                         ),
                         margin:EdgeInsets.only(bottom:21),
                         child: Row( children: [Image.asset('assets/images/pic4.webp',width: 100.w,height:100.h,),
                       Container(
                         width: 300.w,
                         height: 100.h,
                         child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Buy a Vehicle",style: TextStyle(fontSize: 21.sp,fontWeight: FontWeight.bold,)),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("Savings for the purchase of a new or used vehicle in near future."),
                           )

                         ],
                         ),
                       ),
                           Checkbox(value:forthValue,
                             activeColor:Colors.green,
                             onChanged: (newBool){
                               setState(() {
                                 forthValue=newBool! ;
                               });
                             },
                           ),
                         ],)),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Container(
                       width: 250.w,
                       height: 50.h,
                       child: FloatingActionButton(
                       onPressed:(){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Parameter()));
                       },
                       tooltip: 'Proceed',
                       child: Text("Proceed",style: TextStyle(color: Colors.black,fontSize: 21.sp,fontWeight: FontWeight.bold ,),),
                       ),
                     ),
                   )
                 ],
               ),
             )

               ),

    );
  }
}
