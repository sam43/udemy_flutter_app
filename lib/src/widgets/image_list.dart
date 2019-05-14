import 'package:flutter/material.dart';
import '../model/models.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
        itemBuilder: (context, int index) {
          return Container(
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0)
            ),
            child: Image.network(images[index].url),
          ); // Text(images[index].title)
        }
    );
  }

}