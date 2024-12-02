import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pokemon = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${pokemon['name']}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Text(
            //   'URL: ${pokemon['url']}',
            //   style: const TextStyle(fontSize: 16),
            // ),

          ],
        ),
      ),
    );
  }
}