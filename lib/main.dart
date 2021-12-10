import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  CalendarControllerProvider(
        controller: EventController(),
        child: Scaffold(
          body: WeekView(),
        )// Your initialization for material app.
    );
  }
}