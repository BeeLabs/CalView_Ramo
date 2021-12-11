import 'package:flutter/material.dart';

import '../../extension.dart';
import '../day_view_page.dart';
import '../month_view_page.dart';
import '../week_view_page.dart';

import 'package:calendar_view/calendar_view.dart';
import '../../widgets/week_view_widget.dart';


class MobileRamoPage extends StatefulWidget {
  const MobileRamoPage({Key? key}) : super(key: key);

  @override
  _MobileRamoPageState createState() => _MobileRamoPageState();
}

class _MobileRamoPageState extends State<MobileRamoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CalView Ramo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
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
            ),
            WeekViewWidget(
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}
