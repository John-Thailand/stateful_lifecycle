import 'package:flutter/material.dart';
import 'package:stateful_lifecycle/widget/numer_widget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => setState(() => number += 1),
            ),
          ],
        ),
        body: ListView.separated(
          itemCount: 1,
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
          itemBuilder: (context, index) {
            final number = index + 1;

            return NumberWidget(number: number);
          },
        ),
      );
}
