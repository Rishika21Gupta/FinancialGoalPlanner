// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
//
// class Overview extends StatefulWidget {
//   const Overview({super.key});
//
//   @override
//   State<Overview> createState() => _OverviewState();
// }
//
// class _OverviewState extends State<Overview> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//             title:Text('Goals Parameter')
//         ),
//         body:   Container(
//             child: ListView(
//               children: [
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Container(
//                     height:200,
//                     width: 50,
//                     color: Colors.red,
//                     child: Row(
//                       children: [
//
//                               SizedBox(
//                   height:50,
//                   child:PieChart(PieChartData(
//                       startDegreeOffset: 270,
//                       sections: [
//                         PieChartSectionData(
//                             value:50,
//                             radius:10
//                         ),
//                         PieChartSectionData(
//                             value:50,
//                             showTitle: false,
//                             color: Colors.grey,
//                             radius:10
//                         )
//                       ]
//                   ))
//                               ),
//                               // Column(
//                               //   children: [
//                               //     Text("Emergency Fund",style:TextStyle(fontSize:11,fontWeight: FontWeight.w600)),
//                               //     Text("1.5 yr",style: TextStyle(fontSize:16),),
//                               //   ],
//                               // ),
//                         // Text("2,00,000",style: TextStyle(fontSize:16)),
//                         // Icon(Icons.lock)
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Container(
//                 //   color: Colors.red,
//                 //   child: Row(
//                 //     children: [],
//                 //   ),
//                 // ),
//                 // Container(
//                 //   color: Colors.red,
//                 //   child: Row(
//                 //     children: [],
//                 //   ),
//                 // ),
//                 // Text("Note:Locked represent the Goal you want to freeze and changes wont be reflected in them",style: TextStyle(fontSize: 12,color: Colors.blue),)
//
//
//               ],
//             ),
//             // child: SizedBox(
//             //   height:90,
//             //   child:PieChart(PieChartData(
//             //     startDegreeOffset: 270,
//             //     sections: [
//             //       PieChartSectionData(
//             //         value:50,
//             //         radius:20
//             //       ),
//             //       PieChartSectionData(
//             //           value:50,
//             //           showTitle: false,
//             //           color: Colors.grey,
//             //           radius:10
//             //       )
//             //     ]
//             //   ))
//             // ),
//           ),
//
//     );
//   }
// }
