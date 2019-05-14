import 'dart:convert';
import 'package:flutter/material.dart';
import "package:http/http.dart" show get, post;
import 'package:toast/toast.dart';
import 'widgets/image_list.dart';
import 'model/models.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int _counter = 0;
  BuildContext context;
  List<ImageModel> images = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Image List'),
              //leading: Icon(Icons.arrow_back),
              actions: <Widget>[
                Icon(Icons.add),
                SizedBox(width: 10),
                Center(child: Text('Share', textAlign: TextAlign.center)),
                SizedBox(width: 10),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              heroTag: 'fabOne',
              onPressed: _fetchImage,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            body: ImageList(images),
            ));
  }

  void _fetchImage() async {
    String url = 'https://jsonplaceholder.typicode.com/photos/';
    _counter++;
    var response = await get(url + '$_counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
    //print("Pressed on FAB");
  }
/*_showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }*/
}
