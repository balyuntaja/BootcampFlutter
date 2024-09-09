import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/counter/controller/counter_controller.dart';
import 'package:sanberappflutter/counter/pages/second_page.dart';
import 'package:sanberappflutter/pages/home/home_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var CounterC = Get.put(CounterController());
    print('Rebuild App');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    CounterC.decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                GetBuilder<CounterController>(
                  builder: (controller) =>
                      Text('Nilai Counter : ${controller.counter}'),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    CounterC.increment();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: const Text('Lanjut ke second Page'),
            ),
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