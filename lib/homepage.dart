import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shoeapp/profilepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _datashoe = [
    'Nike SB Zoom Blazer',
    'Nike Air Zoom Pegasus',
    'Nike ZoomX Vaporfly',
    'Nike Air Force I S50',
    'Nike SB Zoom Blazer',
  ];

  final List _typeshoe = [
    'Mid Premium',
    'Mens Road Running Shoes',
    'Mens Road Racing Shoes',
    'Olders kids shoes',
    'Mens shoes',
  ];

  final List _colorshoe = ['', '', '', '1 colour', ''];

  Color randomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(150) + 90,
      random.nextInt(150) + 90,
      random.nextInt(150) + 90,
      1,
    );
  }

  final List<String> imageUrls = [
    'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
    'https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png',
  ];

  String randomImageUrl() {
    Random random = Random();
    return imageUrls[random.nextInt(imageUrls.length)];
  }

  final List _priceshoe = ['28795', '29995', '219695', '26295', '28295'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Shoes",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProfilePage())); 
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/blank_pic.png"),
                        backgroundColor: Colors.transparent,
                        radius: 25,
                      ),
                    ),
                    // IconButton(
                    //     onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => const ProfilePage()));
                    //     },
                    //     icon: const Icon(Icons.person))
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _datashoe.length,
                  itemBuilder: (context, index) {
                    Color randomCardColor = randomColor();
                    return Card(
                      color: randomCardColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _datashoe[index],
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  _typeshoe[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  _colorshoe[index],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Rp.${_priceshoe[index].toString()}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Image.network(
                              'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
                              height: 120,
                              width: 90,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
