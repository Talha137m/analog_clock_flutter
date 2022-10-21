import 'dart:async';
import 'package:flutter/material.dart';
import 'package:twenty_fourth_lecture_analog_clock/analog_clock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime dateTime = DateTime.now();
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: Center(
          child: LayoutBuilder(
            builder: (p0, p1) {
              var width = p1.maxWidth;
              var height = p1.maxHeight;
              return SizedBox(
                width: width * 0.6,
                height: height * 0.4,
                //child: AnalogClock(datetime: dateTime, showAllNumbers: true),
                child: CustomPaint(
                  painter: AnalogPainter(dateTime),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
