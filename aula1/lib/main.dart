import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'FATEC 2026'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  // TELA 2
class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela 2')),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          label: Text('Voltar'),
        )
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _removeCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 55, 131, 218),
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Programação Dispositivos Móveis I'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            
            FloatingActionButton(
              heroTag: "btnLeft",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tela2())
                );
              },
              tooltip: 'NextPage',
              child: const Icon(Icons.arrow_circle_right)
            )
          ],
        ),
      ),

      floatingActionButton: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          backgroundColor: const Color.fromARGB(255, 134, 255, 138),
          child: const Icon(Icons.add),
        ),

        const SizedBox(height: 10),
        FloatingActionButton(
          onPressed: _removeCounter,
          tooltip: 'Remove',
          backgroundColor: const Color.fromARGB(255, 255, 182, 86),
          child: const Icon(Icons.remove),
        ),

        const SizedBox(height: 10),
        FloatingActionButton(
          onPressed: _resetCounter,
          tooltip: 'Reset',
          backgroundColor: const Color.fromARGB(255, 255, 118, 109),
          child: const Icon(Icons.dangerous),
        ),
      ]
     ));
  }
}
