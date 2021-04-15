import 'package:flutter/material.dart';

class StadiumScreen extends StatefulWidget {
  @override
  _StadiumScreenState createState() => _StadiumScreenState();
}

class _StadiumScreenState extends State<StadiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: Table(
        border: TableBorder.all(width: 2.5, color: Colors.blue),
        columnWidths: {
          0: IntrinsicColumnWidth(),
          1: FlexColumnWidth(),
          2: IntrinsicColumnWidth(),
          3: FlexColumnWidth(),
          4: IntrinsicColumnWidth(),
          5: IntrinsicColumnWidth(),
          6: IntrinsicColumnWidth(),
        },
        children: [
          TableRow(
            children: [
              TableCell(
                child: Container(),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Center(child: Text('Home')),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(child: Text('VS')),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(child: Text('Away')),
                ),
              ),
              TableCell(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
                  child: Center(child: Text('Time')),
                ),
              ),
              TableCell(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
                  child: Center(child: Text('Att')),
                ),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(color: Colors.white),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('1'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
//                  child: Center(
                  child: Row(
                    children: [
//                      Icon(
//                        Icons.foundation_rounded,
//                        size: 15.0,
//                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text('Man U ')
                    ],
                  ),
                ),
//                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('VS'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Liverpool'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('live'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        '22.2k',
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(color: Colors.white),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('2'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
//                  child: Center(
                  child: Row(
                    children: [
//                      Icon(
//                        Icons.foundation_rounded,
//                        size: 15.0,
//                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text('Cristal..')
                    ],
                  ),
                ),
//                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('VS'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Hall..'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('live'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        '10.2k',
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(color: Colors.white),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('3'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
//                  child: Center(
                  child: Row(
                    children: [
//                      Icon(
//                        Icons.foundation_rounded,
//                        size: 15.0,
//                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text('Everton ')
                    ],
                  ),
                ),
//                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('VS'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Leads'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    '8:20',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        '---',
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(color: Colors.white),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('4'),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
//                  child: Center(
                  child: Row(
                    children: [
//                      Icon(
//                        Icons.foundation_rounded,
//                        size: 15.0,
//                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text('Man .. ')
                    ],
                  ),
                ),
//                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('VS'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Newcas..'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    '21:00',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        '---',
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
//      ),
    );
  }
}
