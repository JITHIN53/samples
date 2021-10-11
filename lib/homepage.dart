import 'package:flutter/material.dart';
import 'package:sample_apps/clases.dart';
import 'package:sample_apps/detail_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Img> picz = [
    Img('namee', 'picc'),
  ];

  String title = 'Images Munnar';

  static List<Imagez> samples = [
    Imagez('Image', 'assets/IMG_2631.JPG'),
    Imagez(
      'Images',
      'assets/IMG_2834.JPG',
    ),
    Imagez(
      'images',
      'assets/IMG_2879.JPG',
    ),
    Imagez('Image', 'assets/IMG_2631.JPG'),
    Imagez(
      'Images',
      'assets/IMG_2834.JPG',
    ),
    Imagez(
      'images',
      'assets/IMG_2879.JPG',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: samples.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                        return  ImageDetail(image: samples[index],);
                        },
                      ),
                    );
                  },
                  child: buildImagezCard(samples[index]),
                );

               // child:
                //buildImagezCard(samples[index]);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImagezCard(Imagez picture) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(picture.imgUrl),
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              picture.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                //fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
