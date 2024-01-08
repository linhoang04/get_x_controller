import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_todo/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}










// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Counter with Overlay Events List',
//       home: CounterScreen(),
//     );
//   }
// }

// class CounterScreen extends StatefulWidget {
//   @override
//   _CounterScreenState createState() => _CounterScreenState();
// }

// class _CounterScreenState extends State<CounterScreen> {
//   int counter = 0;
//   List<String> events = [];

//   void incrementCounter() {
//     setState(() {
//       counter++;
//       events.add('Event $counter');
//     });
//   }

//   void _showEventsOverlay(BuildContext context) {
//     OverlayState? overlayState = Overlay.of(context);
//     OverlayEntry overlayEntry;

//     overlayEntry = OverlayEntry(
//       builder: (context) => Positioned(
//         top: 100.0,
//         right: 0.0,
//         width: MediaQuery.of(context).size.width * 0.4,
//         child: Card(
//           elevation: 4.0,
//           child: Column(
//             children: [
//               ListTile(
//                 title: Text(
//                   'Events List',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Divider(),
//               ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: events.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     title: Text(events[index]),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );

//     overlayState?.insert(overlayEntry);

//     // Xóa overlay sau 3 giây
//     Future.delayed(Duration(seconds: 3), () {
//       overlayEntry.remove();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter with Overlay Events List'),
//       ),
//       body: Center(
//         child: Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             IconButton(
//               icon: Icon(Icons.notifications), // Icon chuông thông báo
//               onPressed: () {
//                 incrementCounter();
//                 _showEventsOverlay(context);
//               },
//             ),
//             Positioned(
//               right: 8,
//               top: 8,
//               child: Container(
//                 padding: EdgeInsets.all(4),
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 constraints: BoxConstraints(
//                   minWidth: 20,
//                   minHeight: 20,
//                 ),
//                 child: Text(
//                   '$counter',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
