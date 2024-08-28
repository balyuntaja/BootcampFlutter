import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove)),
            const SizedBox(width: 20),
            Text('Nilai Counter : $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}

// Analisa terhadap SetState

/*kegunaan dari SetState yaitu digunakan di dalam callback onTap dari widget InkWell untuk 
menambah atau mengurangi nilai variabel counter. Setiap kali pengguna mengetuk ikon tambah 
atau kurangi, nilai counter diperbarui, dan setState dipanggil untuk membangun ulang pohon widget, 
sehingga nilai counter yang diperbarui akan tercermin di UI.
Tanpa setState, UI tidak akan diperbarui meskipun nilai counter telah berubah secara internal.*/ 