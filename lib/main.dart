import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'ListView Garza M 1196',
          ),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 9,
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemBuilder: (context, index) {
        return Container(
          height: 60,
          decoration: BoxDecoration(
            color: _getColor(index),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Item ${index + 1}',
            style: TextStyle(fontSize: 18),
          ),
        );
      },
    );
  }

  Color _getColor(int index) {
    switch (index) {
      case 0:
        return Color(0xffffffff); // Light Yellow
      case 1:
        return Color(0xfffff9bd)!;
      case 2:
        return Colors.yellow[300]!;
      case 3:
        return Colors.yellow[400]!;
      case 4:
        return Colors.yellow[500]!;
      case 5:
        return Colors.yellow[600]!;
      case 6:
        return Colors.yellow[700]!;
      case 7:
        return Colors.yellow[800]!;
      case 8:
        return Color(0xfffffde7); // Very Light Yellow
      default:
        return Colors.white;
    }
  }
}
