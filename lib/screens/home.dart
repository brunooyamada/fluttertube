import 'package:flutter/material.dart';
import 'package:fluttertube/delegates/data_search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 25,
          child: Image.asset("images/yt_logo_rgb_dark.png"),
        ),
        elevation: 0,
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        actions: [
          Align(alignment: Alignment.center, child: Text("0")),
          IconButton(icon: Icon(Icons.star), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              String? result = await showSearch(
                context: context,
                delegate: DataSearch(),
              );
              print(result);
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
