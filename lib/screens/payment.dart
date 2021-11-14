import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashBoard.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
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
                    ),
                  );
                },
                icon: const Icon(Icons.chevron_left_outlined,
                    color: Colors.black, size: 30),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Cart',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              paycard(
                text: 'AirPods Max',
                stext: "\$549",
                img: "assets/red.png",
                bcolor: Colors.yellow[50],
              ),
              paycard(
                text: 'Q-Seven Wireless',
                stext: "\$149",
                img: "assets/yellow.png",
                bcolor: Colors.green[50],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, top: 20),
                child: Text('Payment Methods',
                    style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              ListTile(
                visualDensity: const VisualDensity(vertical: 4),
                tileColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                leading: Image.asset("assets/card3.jpg", height: 30.0),
                title: const Text('Travel Card',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                subtitle: const Text(
                  'Master Card-3356',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.black),
              ),
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  "Total order",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ),
              const Center(
                child: Text(
                  '\$698',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(height:100),
               Padding(
                 padding: const EdgeInsets.all(18.0),
                 child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Checkout",
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
    );
  }

  Widget paycard({String? img, String? stext, String? text, Color? bcolor}) {
    return Column(
      children: [
        ListTile(
          visualDensity: const VisualDensity(vertical: 4),
          contentPadding: const EdgeInsets.fromLTRB(18, 0, 18, 22),
          leading: Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bcolor,
            ),
            child: Image.asset('$img'),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Text(
              "$text",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          subtitle: Text(
            "$stext",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          ),
          trailing: const Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
