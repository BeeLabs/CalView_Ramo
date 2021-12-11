import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import '../extension.dart';
import '../model/event.dart';
import '../widgets/week_view_widget.dart';
import 'create_event_page.dart';

class WeekViewDemo2 extends StatefulWidget {
  const WeekViewDemo2({Key? key}) : super(key: key);

  @override
  _WeekViewDemo2State createState() => _WeekViewDemo2State();
}

class _WeekViewDemo2State extends State<WeekViewDemo2> {
  @override
  Widget build(BuildContext context) {
    return /* Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          color: Colors.grey,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          color: Colors.blueGrey,
        ),
        SizedBox(
          height: 20,
        ), */
        Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            elevation: 8,
            onPressed: _addEvent,
          ),
          body: WeekViewWidget(),
        // ),
    // ],
  );
  }

  Future<void> _addEvent() async {
    final event =
        await context.pushRoute<CalendarEventData<Event>>(CreateEventPage(
      withDuration: true,
    ));
    if (event == null) return;
    CalendarControllerProvider.of<Event>(context).controller.add(event);
  }
}
