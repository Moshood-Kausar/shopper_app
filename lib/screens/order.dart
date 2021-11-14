import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shopper_app/screens/dashboard.dart';
import 'package:shopper_app/screens/payment.dart';
//import 'package:carousel_indicator/carousel_indicator.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int pageIndex = 0;
  final List<Widget> _pics = [
    Image.asset('assets/red.png'),
    Image.asset('assets/yellow.png'),
    Image.asset('assets/purple.png'),
    Image.asset('assets/gold.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const DashBoard(),
                        ));
                  },
                  icon: const Icon(
                    Icons.chevron_left_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    children: _pics,
                    onPageChanged: (index) {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: CarouselIndicator(
                    count: _pics.length,
                    index: pageIndex,
                    width: 12,
                    height: 4,
                    color: Colors.grey,
                    activeColor: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Headphones', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'AirPods Max',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        circle(backgroundColor: Colors.pink),
                        circle(backgroundColor: Colors.grey),
                        circle(backgroundColor: Colors.black)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        text(text: '-'),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            '1',
                          ),
                        ),
                        text(text: '+'),
                      ],
                    ),
                    const Text(
                      "\$549",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "High-Fidelity Audio The Apple-designed driver delivers high-fidelity playback ...",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Payment(),
                    ),
                  ),
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget circle({required Color backgroundColor}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: CircleAvatar(radius: 15, backgroundColor: backgroundColor),
    );
  }

  Widget text({String? text}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 20,
        width: 20,
        child: Center(
          child: Text("$text",
              style: const TextStyle(fontWeight: FontWeight.w800)),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }
}
