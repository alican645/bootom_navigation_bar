import 'package:bottom_navigation_bar/CustomBottomNavigationBar/Custom2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NewWidget());
  }
}

class NewWidget extends StatefulWidget {
NewWidget({
    super.key,
  });

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  List<Widget>widgets=[MyWidget(),MyWidget2(),MyWidget3()];

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 10,
        decoration: const BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    index=0;
                  });
                },
                child: Text("Ekle")),
                TextButton(
                onPressed: () {
                  setState(() {
                    index=1;
                  });
                },
                child: Text("Ekle")),
                TextButton(
                onPressed: () {
                  setState(() {
                    index=2;
                  });
                },
                child: Text("Ekle"))
          ],
        ),
      ),
      body: widgets[index],
    );
  }
}



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}



class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
    );
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
    );
  }
}