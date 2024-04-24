import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height =  MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.jpg',

                )
            )

        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.green.withOpacity(0.5),
                        Colors.yellow.withOpacity(0.5),
                        Colors.red.withOpacity(0.5),
                      ]
                  )
              ),
              height: height/2,
            ),

            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/republic.png', height: 70,),
                          ],
                        ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.how_to_vote),
                              Text("BJ-ÉLECTIONS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Text("LA DEMOCRATIE TRANSPARENTE", style: TextStyle(fontWeight: FontWeight.w300),),
                            ],
                          )
                        ],
                      )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("LE VOTE EST UN DEVOIR", style: TextStyle(fontWeight: FontWeight.w300),),
                                  Text("Chaque citoyen a le devoir de prendre"),
                                  Text("part à la vie politique en général"),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.how_to_vote, size: 70,color: Colors.teal,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal[800],
            foregroundColor: Colors.white,
          ),
          child: Text('Continuer avec son NPI',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }

}