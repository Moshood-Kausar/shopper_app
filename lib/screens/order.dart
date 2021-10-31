import 'package:flutter/material.dart';
import 'package:shopper_app/screens/dashboard.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
                Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/pink.png',
                          ),
                          fit: BoxFit.contain),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              height: 3,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              height: 3,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              height: 3,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ],
                    )),
                const SizedBox(height: 20),
                const Text('Headphones',
                    style: TextStyle(color: Colors.grey)),
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
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 15, backgroundColor: Colors.pink),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 15, backgroundColor: Colors.grey),
                        ),
                        CircleAvatar(
                            radius: 15, backgroundColor: Colors.black),
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
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            child: const Center(
                              child: Text("-",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w800)),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            '1',
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          child: const Center(child: Text("+")),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const Text("\$549",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 25)),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                    "High-Fidelity Audio The Apple-designed driver delivers high-fidelity playback ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    )),
                const SizedBox(height: 40),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text("Buy Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                )
              ],
            ),
          ),
        ))
    );
  }
}
