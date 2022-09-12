import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  final int number;

  const NumberWidget({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  State<NumberWidget> createState() {
    print('Number: $number CreateState');
    return _NumberWidgetState();
  }
}

class _NumberWidgetState extends State<NumberWidget> {
  late int number;

  @override
  void initState() {
    super.initState();

    print('Number: ${widget.number} InitState');
    number = widget.number;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Number: ${widget.number} DidChangeDependencies');
  }

  @override
  void deactivate() {
    print('Number: ${widget.number} Deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();

    print('Number: ${widget.number} Dispose');
  }

  @override
  void didUpdateWidget(NumberWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Number: ${widget.number} DidUpdateWidget');

    if (oldWidget.number != widget.number) {
      print('Nuber has changed');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Number: ${widget.number} Build');
    return Container(
      height: 500,
      child: TextButton(
        child: Text(
          number.toString(),
          style: TextStyle(fontSize: 80),
        ),
        onPressed: () {
          print('Number: ${widget.number} SetState');
          setState(() => number += 1);
        },
      ),
    );
  }
}
