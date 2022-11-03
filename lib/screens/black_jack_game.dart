import 'package:flutter/material.dart';

class BlackJackScreen extends StatefulWidget {
  const BlackJackScreen({super.key});

  @override
  State<BlackJackScreen> createState() => _BlackState();
}

class _BlackState extends State<BlackJackScreen> {
  bool _isGameStarted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isGameStarted
          ? SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      // TODO: add score
                      Text("Dealer's score"),
                      //Dealer's cards
                      Container(
                        height: 200,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            //TODO:- Change item count
                            itemCount: 0,
                            itemBuilder: (context, index) {
                              //TODO:- Return Dealer's Card here
                              return Container();
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      // TODO: add score
                      const Text("Player's score"),
                      Container(
                        height: 200,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            //TODO:- Change item count
                            itemCount: 0,
                            itemBuilder: (context, index) {
                              //TODO:- Return Player's Card here
                              return Container();
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Another Card"),
                        color: Colors.brown[200],
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Next Round"),
                        color: Colors.brown[200],
                      ),
                    ],
                  )
                ],
              ),
            )
          : Center(
              child: MaterialButton(
              color: Colors.brown[200],
              minWidth: 150,
              onPressed: () {
                setState(() {
                  _isGameStarted = true;
                });
              },
              child: Text("Start Game"),
            )),
    );
  }
}
