import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import '../model/event.dart';

class WeekViewWidget extends StatelessWidget {
  final GlobalKey<WeekViewState>? state;
  final double? width;

  const WeekViewWidget({Key? key, this.state, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          height: 100,
          color: Colors.grey,
        ),
        SizedBox(height: 10,),
        Container(
          height: 100,
          color: Colors.blueGrey,
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: 400,
          child: WeekView<Event>(
            key: state,
            width: width,
          ),
        ),
      ]
      );
  }
}
