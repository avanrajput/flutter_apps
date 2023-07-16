import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InsiderPage extends StatefulWidget {
  const InsiderPage({super.key});

  static const List newGoalItem = [
    {'mainText': '₹0', 'remark': 'You\'ve spent', 'money': '₹ 7000'},
    {'mainText': '0/5', 'remark': 'Your Orders', 'money': '5'}
  ];

  @override
  State<InsiderPage> createState() => _InsiderPageState();
}

class _InsiderPageState extends State<InsiderPage> {
  final List imgList = [
    {"id": 1, "image_path": 'assets/images/IMG_1.jpg'},
    {"id": 2, "image_path": 'assets/images/IMG_2.jpg'},
    {"id": 3, "image_path": 'assets/images/IMG_3.jpg'},
    {"id": 4, "image_path": 'assets/images/IMG_4.jpg'},
    {"id": 5, "image_path": 'assets/images/IMG_5.jpg'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191c23),
      appBar: AppBar(
          title: const Text(
            'Myntra',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          titleSpacing: 0.0,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_bag_outlined),
            )
          ]),
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        color: const Color(0xff272c3f),
        height: 110,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    backgroundColor: const Color(0xffff406c),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const Text('By enrolling you agree to',
                style: TextStyle(
                    color: Color.fromARGB(255, 189, 189, 189), fontSize: 11)),
            const Text(
              'Insider Terms & Conditions',
              style: TextStyle(
                color: Color(0xffff406c),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Private_party.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Become An INSIDER!',
                    style: TextStyle(
                        color: Color(0xffedac38),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Join The Insider program and earn Supercoins with every purchase and much more. Log in now!',
                    style: TextStyle(
                        color: Colors.grey,
                        wordSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text('New Goal Criteria',
                      style: TextStyle(
                          color: Colors.white,
                          wordSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: InsiderPage.newGoalItem.length,
                      itemBuilder: (ctx, index) => Padding(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xff272c3f),
                          ),
                          child: Row(
                            children: [
                              const ImageIcon(
                                  AssetImage('assets/images/Crown.png'),
                                  size: 50,
                                  color: Colors.grey),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    InsiderPage.newGoalItem[index]['mainText'],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(InsiderPage.newGoalItem[index]['remark'],
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                      )),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(InsiderPage.newGoalItem[index]['money'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  Text('Goal',
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                      'Note: Recent purchases will only reflect in the goal once the return window is over',
                      style: TextStyle(color: Colors.grey[400], fontSize: 11)),
                  const SizedBox(height: 20),
                  const Text('Benefits Of Joining The Program',
                      style: TextStyle(
                          color: Color(0xffedac38),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Benefits.jpg'))),
                  ),
                  const SizedBox(height: 10),
                  const Text('How does it work',
                      style: TextStyle(
                          color: Color(0xffedac38),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text(
                    'Earn SuperCoins with every purchase.\nYou can get upto 3 SuperCoins for every 100 spent',
                    style: TextStyle(
                      color: Color.fromARGB(255, 189, 189, 189),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/How_it_works.jpg'))),
                  ),
                  const SizedBox(height: 20),
                  const Text('Rewards',
                      style: TextStyle(
                          color: Color(0xffedac38),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    'Use Your SuperCoins to get exciting rewards',
                    style: TextStyle(
                      color: Color.fromARGB(255, 189, 189, 189),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var img in imgList)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 230,
                              width: 230,
                              child: Image.asset(img["image_path"]),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/Insider_logo.jpg'))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
