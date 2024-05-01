import 'package:flutter/material.dart';

// Edit The class Name and all of the rest will change to the class Names
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

//State ofStatefulWidget
  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

// extends of State
class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  // Varible for caunter
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar, part of the scaffold
        appBar: AppBar(
          // actions, espera una lista de widgets,
          //Creamos un iconButtom Para poder realizar el reset del counter
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
          centerTitle: true,
          // ignore: prefer_const_constructors
          title: const Text('Counter Functions',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
        ),
        body: Center(
          //Column recives multiple childs
          child: Column(
            // change colum direction
            mainAxisAlignment: MainAxisAlignment.center,
            //Here we can use , multiple widgets
            children: [
              Text(
                clickCounter
                    .toString(), // can be this too, clickCounter.toString
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                // Condition to click is more than 1 click
                'Click${clickCounter == 1 ? '' : 's'}',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Creamos tres   FloatingActionButton
            // Reset counter
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                // Ste estate to render
                setState(() {
                  // Variable to ++ for change the text
                  clickCounter = 0;
                });
              },
              child: const Icon(Icons.refresh_outlined),
            ),
            const SizedBox(height: 10),
            // Incrementa
            FloatingActionButton(
              // forma redondeada
              shape: const StadiumBorder(),
              onPressed: () {
                // Ste estate to render
                setState(() {
                  // Variable to ++ for change the text
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 10,
            ),
            // Descrementa y asegura que no se pueda menor que 0
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                // Ste estate to render
                setState(() {
                  // Variable to ++ for change the text
                  clickCounter =
                      clickCounter > 0 ? clickCounter - 1 : clickCounter;
                });
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),

          

           


          ],
        ));
  }
}
