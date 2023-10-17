import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Dog Fact App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 35, 78, 179)),

        primaryColor: Color.fromARGB(255, 39, 94, 196),

        //primarySwatch: Colors.blue,

        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Dog Fact App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//class FactList extends StatefulWidget {
//@override
//_FactListstate createState() => _FactListstate();
//}

//class _FactListstate extends State<FactList> {
//List<Fact> facts = [
//Fact(text: ''),
//];
//}

Widget factsTemplate() {
  return Card(
      margin: EdgeInsets.fromLTRB(16.0, 70.0, 16.0, 150.0),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            children: <Widget>[
              const Image(
                width: 300,
                image: AssetImage('assets/images/dog.png'),
              ),
              Container(
                height: 200,
                width: 300,
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text('This is where the facts will go'),
              ),
              Icon(
                Icons.favorite,
                color: Colors.black,
                size: 24.0,
              ),
            ],
          )));
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,

              //fit: StackFit.passthrough,
              //overflow: Overflow.visible,

              children: <Widget>[
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/dog bone background.jpg'),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/dog_icon.png'),
                      )),
                    )
                  ],
                ))
              ],
            ),
            Container(
              height: 50,
            ),
            const Text(
              'My Dog Fact App',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 50,
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageFact()));
              },
              child: const Text('Shake for Facts!',
                  style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}

class PageFact extends StatefulWidget {
  @override
  State<PageFact> createState() => _PageFactState();
}

class _PageFactState extends State<PageFact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Dog Fact App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 26, 69, 170),
            body: Column(
              children: <Widget>[
                Center(
                  child: Card(
                    color: Colors.white,
                    child: Stack(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        Container(
                          height: 570,
                          width: 400,
                          color: Colors.white,
                        ),
                        //),
                        Container(
                          height: 250,
                          width: 500,
                          //color: Colors.black,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/dog.png'))),
                        ),
                        Positioned(
                          top: 225,
                          bottom: 100,
                          right: 80,
                          left: 80,
                          child: Container(
                            margin: const EdgeInsets.all(1.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            height: 50,
                            width: 50,
                            child: Center(child: Text('Facts will go here!')),
                          ),
                        ),

                        Positioned(
                          top: 525,
                          bottom: 0,
                          left: 460,
                          right: 5,
                          child: Icon(Icons.favorite_border_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                FilledButton(
                  onPressed: factsTemplate,
                  child: Text('Shake for Facts!'),
                )
              ],
            )));
  }
}

//class randomfact extends StatefulWidget{
// const randfact({super.key});
//}
