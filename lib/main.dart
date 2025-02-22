// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }




//
// import 'package:flutter/material.dart';
// import 'dart:math';
//
// void main() {
//   runApp(const JokeApp());
// }
//
// class JokeApp extends StatelessWidget {
//   const JokeApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Joke App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         useMaterial3: true,
//       ),
//       home: const JokeScreen(),
//     );
//   }
// }
//
// class JokeScreen extends StatefulWidget {
//   const JokeScreen({super.key});
//
//   @override
//   State<JokeScreen> createState() => _JokeScreenState();
// }
//
// class _JokeScreenState extends State<JokeScreen> {
//   final List<String> _jokes = [
//     "Why don't programmers like nature? It has too many bugs!",
//     "What do you call a bear with no teeth? A gummy bear!",
//     "Why did the scarecrow win an award? Because he was outstanding in his field!",
//     "What do you call a dinosaur that crashes his car? Tyrannosaurus wrecks!",
//     "Why don't eggs tell jokes? They'd crack up!",
//     "What do you call a fake noodle? An impasta!",
//     "Why did the math book look so sad? Because it had too many problems!",
//     "What do you call a can opener that doesn't work? A can't opener!",
//   ];
//
//   String _currentJoke = "Press the button to see a joke!";
//   final Random _random = Random();
//
//   void _getRandomJoke() {
//     setState(() {
//       _currentJoke = _jokes[_random.nextInt(_jokes.length)];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Joke Generator'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Card(
//                 elevation: 5,
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Text(
//                     _currentJoke,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//               ElevatedButton.icon(
//                 onPressed: _getRandomJoke,
//                 icon: const Icon(Icons.mood),
//                 label: const Text('Tell me a joke!'),
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 30,
//                     vertical: 15,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'joke_service.dart';
import 'dart:convert';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Joke App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:const JokeListPage(),
    );
  }
}

class JokeListPage extends StatefulWidget{
  const JokeListPage({Key?key}):super(key:key);

  @override
  _JokeListPageState createState()=>_JokeListPageState();
}

class _JokeListPageState extends State<JokeListPage>{
  final JokeService _jokeService=JokeService();
  List<Map<String,dynamic>> _jokesRaw=[];
  bool _isLoading=false;

  Future<void> _fetchJokes() async{
    setState(()=>_isLoading=true);
    try{
      _jokesRaw=await _jokeService.fetchJokesRaw();
    }catch(e){
      print('Error fetching jokes:$e');
    }
    setState(()=>_isLoading=false);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('JOke App'),
        backgroundColor: Colors.deepPurple,
      ),
      body:Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            begin:Alignment.topCenter,
            end:Alignment.bottomCenter,
            colors: [Colors.deepPurple.shade100,Colors.white],
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome to the Joke App!',
                  style:TextStyle(
                    fontSize: 28,
                    fontWeight:FontWeight.bold,
                    color:Colors.deepPurple,
                    shadows: [Shadow(color:Colors.white,blurRadius:2)],
        ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height:16),
            const Text(
              'Clickthe button to fetch random jokes!',
              style:TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color:Colors.deepPurple,
            ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height:24),
            ElevatedButton(
              onPressed: _isLoading?null:_fetchJokes,
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(vertical:12),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(8),
                ),
              ),
              child: Text(
                _isLoading?'Loading...':'Fetch Jokes',
                style:TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: _isLoading
              ?const Center(child:CircularProgressIndicator())
              :_buildJokeList(),
            ),
          ],
        ),
      ),
      ),
    );
  }
  Widget _buildJokeList(){
    if(_jokesRaw.isEmpty){
      return const Center(
        child: Text(
          'No jokes fetched yet',
          style: TextStyle(fontSize: 18,color:Colors.deepPurple),
        ),
      );
    }
    return ListView.builder(
      itemCount:_jokesRaw.length,
      itemBuilder:(context,index){
        final jokeJson=_jokesRaw[index];
        return Card(
        margin:const EdgeInsets.only(bottom:16),
        elevation:4,
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(12)),
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child:Text(
            jsonEncode(jokeJson),
            style: const TextStyle(fontSize: 14),
          ),
        ),
        );
      },
    );
  }
}
