import 'package:flutter/material.dart';

void showDiscountDialog(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 150, 30, 120),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 32, 16, 36),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Choose Your Discount',
                        style: TextStyle(
                          fontFamily: 'Axiforma',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 24,
                          letterSpacing: 3.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const Center(
                        child: Text(
                          'Points',
                          style: TextStyle(
                            fontFamily: 'Axiforma',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          DetectGesture(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

class DetectGesture extends StatefulWidget {
  const DetectGesture({Key? key}) : super(key: key);

  @override
  State<DetectGesture> createState() => _DetectGestureState();
}

class _DetectGestureState extends State<DetectGesture> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(counter.toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: Image.asset(
                'plusicon.png',
                scale: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
