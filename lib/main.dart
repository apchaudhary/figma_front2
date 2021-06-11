import 'package:figma_front2/tools/baseDropdown.dart';
import 'package:figma_front2/tools/classicdropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:figma_front2/tools/dropdown.dart';
import 'package:figma_front2/view/col.dart';
import 'package:figma_front2/tools/Table.dart';
import 'package:figma_front2/constants.dart';
import 'package:figma_front2/osctable.dart';
import 'package:figma_front2/tools/twocol.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFF000000),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('USD / INR'),
          backgroundColor: kBackgroundcolor,
          actions: <Widget>[],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              DropDown(),
              Text(
                'Summary',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      SfLinearGauge(
                        orientation: LinearGaugeOrientation.vertical,
                        ranges: <LinearGaugeRange>[

                          LinearGaugeRange(
                              startValue: 0,
                              endValue: 20,
                              color: Color(0xffFF2E50)),
                          LinearGaugeRange(
                              startValue: 20,
                              endValue: 40,

                              color:Color(0xff991C30) ),
                          LinearGaugeRange(
                              startValue: 40,
                              endValue: 60,
                              color: Color(0xff0DC9AB)),
                          LinearGaugeRange(
                              startValue: 60,
                              endValue: 80,
                              color: Color(0xffFFC93E)),
                          LinearGaugeRange(
                              startValue: 80,
                              endValue: 100,
                              color: Color(0xffF45656)),
                        ],
                      ),


                    ],
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        child: Text(" 1 min ".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Color(0xFF000000)),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () => null,
                      ),
                      ElevatedButton(
                        child: Text(" 5 min ".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF000000 )),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.white)
                                ))),
                        onPressed: () => null,
                      ),ElevatedButton(
                        child: Text("15 min".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF000000)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.white)
                                ))),
                        onPressed: () => null,
                      ),ElevatedButton(
                        child: Text("30 min".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF000000)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.white)
                                ))),
                        onPressed: () => null,
                      ),ElevatedButton(
                        child: Text("  1 hr  ".toUpperCase(),
                            style: TextStyle(fontSize: 14)),

                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF000000)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(

                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.white)
                                ))),
                        onPressed: () => null,
                      ),ElevatedButton(
                        child: Text("  5 hr  ".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF000000)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.white)
                                ))),
                        onPressed: () => null,
                      ),ElevatedButton(
                        child: Text(" 1 day ".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF000000)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.white)
                                ))),
                        onPressed: () => null,
                      ),ElevatedButton(
                        child: Text(" 1 wk  ".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF000000)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.white)
                                ))),
                        onPressed: () => null,
                      ),ElevatedButton(
                        child: Text("1 mon".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF000000)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.white)
                                ))),
                        onPressed: () => null,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                'Moving Averages',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
              ElevatedButton(
                child:
                    Text("Buy".toUpperCase(), style: TextStyle(fontSize: 14)),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF007AFF)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
                onPressed: () => null,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Columned("7", "Buy"),
                  SizedBox(
                    width: 20.0,
                  ),
                  Columned("-", "Neutral"),
                  SizedBox(
                    width: 20.0,
                  ),
                  Columned("5", "Sell"),
                ],
              ),
              EndDown(),
              TableMake(),
              Text(
                'Oscillators',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
              ),
              ElevatedButton(
                child: Text("STRONG SELL".toUpperCase(),
                    style: TextStyle(fontSize: 14)),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFE92A49)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
                onPressed: () => null,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Columned("1", "Buy"),
                  SizedBox(
                    width: 20.0,
                  ),
                  Columned("1", "Neutral"),
                  SizedBox(
                    width: 20.0,
                  ),
                  Columned("9", "Sell"),
                ],
              ),
              OscMake(),
              Text(
                'Oscillators',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
              ),
              ClassicDown(),
              TwoColMake(),
            ],
          )),
        ),
      ),
    );
  }
}
