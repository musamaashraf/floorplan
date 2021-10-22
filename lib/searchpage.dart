import 'package:floorplan/styles/colors.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        leading: Container(),
        leadingWidth: 0.0,
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.94,
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 16.0,
                      offset: const Offset(0.0, 6.0),
                    )
                  ],
                ),
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.92,
                child: Divider(
                  color: Colors.grey.withOpacity(0.6),
                  thickness: 2.0,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildProduct(context),
                    buildProduct(context),
                  ],
                ),
              ))
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
        ],
      ),
    );
  }
}
