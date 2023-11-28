import 'package:flutter/material.dart';
import 'package:hint/hint_card.dart';

class HintScreen extends StatelessWidget {
  const HintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff100f13),
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(
                    image: AssetImage('images/hint_logo.png'),
                  ),
                  Container(
                    width: 159,
                    height: 56,
                    decoration: const BoxDecoration(
                        color: Color(0xFF9963D1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28.0),
                          topRight: Radius.circular(28.0),
                          bottomLeft: Radius.circular(28.0),
                          bottomRight: Radius.circular(4.0),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: 334,
                height: 76,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.0),
                    topRight: Radius.circular(28.0),
                    bottomLeft: Radius.circular(4.0),
                    bottomRight: Radius.circular(28.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, left: 16.0, right: 16.0, bottom: 2),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 16,
                            width: 126,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 0.1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Container(
                            height: 16,
                            width: 164,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 0.1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 16,
                          width: 208,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: 334,
                height: 217,
                child: Stack(
                  children: [
                    Container(
                      width: 334,
                      height: 217,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HintCard(
                              label: 'SCI-FI',
                              image: 'images/sci-fi.jpg',
                            ),
                            HintCard(
                              label: 'FANTASY',
                              image: 'images/fan.jpg',
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 334,
                      height: 217,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            const Color(0x00100f13).withOpacity(0.0),
                            const Color(0x00100f13).withOpacity(0.0),
                            const Color(0x00100f13).withOpacity(0.0),
                            const Color(0x00100f13).withOpacity(0.5),
                            const Color(0xff100f13).withOpacity(1.0),
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'HintGPT',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'We take',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10.0),
                    RichText(
                      text: const TextSpan(
                          text: 'searching',
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: ' out of',
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange),
                            )
                          ]),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'streaming',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your button press logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFF9963D1), // Set the button color
                ),
                child: const SizedBox(
                  width: 342,
                  height: 56,
                  child: Center(
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text(
                    'Login In',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
