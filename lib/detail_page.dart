import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './clases.dart';

class ImageDetail extends StatefulWidget {
  final Imagez image;

  const ImageDetail({Key? key, required this.image}) : super(key: key);

  @override
  _ImageDetailState createState() => _ImageDetailState();
}

class _ImageDetailState extends State<ImageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.image.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.image.imgUrl),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            // 6
            Text(
              widget.image.label,
              style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
