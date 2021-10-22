import 'package:floorplan/routes/routenames.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: Container(),
        leadingWidth: 0.0,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, searchRoute);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Text('Add'),
            ),
          ),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              buildProduct(context),
              buildProduct(context),
              buildProduct(context),
            ],
          )),
    );
  }

  Widget buildProduct(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 16.0,
            offset: const Offset(0.0, 6.0),
          )
        ],
      ),
      margin: const EdgeInsets.only(top: 16.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      width: MediaQuery.of(context).size.width * 0.92,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.10,
            height: MediaQuery.of(context).size.width * 0.10,
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Placeholder(),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.04),
          Text('Product 1'),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          const Expanded(
            child: Text(
              'ET: 6.39',
              textAlign: TextAlign.end,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
