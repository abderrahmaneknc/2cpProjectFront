import 'package:flutter/material.dart';
import '../items/elvButton.dart';
import '../items/numberbox.dart';
import '../items/rectanglebutton.dart';

class Edahabia extends StatelessWidget {
  const Edahabia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 60),
                        const Text(
                          'Support amount',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Boxnumber(onlyDigits: true),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              flex: 1,
                              child: RectangularButton(
                                text: 'Edit',
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Card number',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Boxnumber(onlyDigits: true),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Name on card',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Boxnumber(
                          onlyDigits: false,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Expiry date',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 95,
                            ),
                            Text(
                              'CVC2/CVV2 code',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 197, 193, 193),
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            right: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 197, 193, 193),
                                            ),
                                          ),
                                        ),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            labelText: 'MM / YY',
                                            labelStyle:
                                                TextStyle(color: Colors.grey),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 8.0),
                                            border: InputBorder.none,
                                            suffixIcon:
                                                Icon(Icons.calendar_today),
                                          ),
                                          keyboardType:
                                              TextInputType.datetime,
                                        ),
                                      ),
                                    ),
                                    const Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: '',
                                          labelStyle:
                                              TextStyle(color: Colors.grey),
                                          contentPadding:
                                              EdgeInsets.symmetric(
                                                  horizontal: 8.0),
                                          border: InputBorder.none,
                                          suffixIcon:
                                              Icon(Icons.help_outline),
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Mybuttons(
                          text: 'Confirme',
                          color: const Color(0xFF2D3D51),
                          logo: false,
                          assets: '',
                          txtcolor: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, '/////');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 263,
                  height: 167,
                  child: Image.asset(
                    'assets/Screenshot 2024-03-19 013106.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
