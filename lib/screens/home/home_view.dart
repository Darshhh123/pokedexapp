import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedexapp/routes/routes_constants.dart';
import 'package:pokedexapp/screens/home/home_controller.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to Pokédex')),
      body: Obx(() {
        if (homeController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (homeController.errorMessage.isNotEmpty) {
          return Center(child: Text(homeController.errorMessage.value));
        }
        return ListView.builder(
          itemCount: homeController.pokemonList.length,
          itemBuilder: (context, index) {
            final pokemon = homeController.pokemonList[index];
            return ListTile(
              title: Text(pokemon['name']),
              onTap: () {
                Get.toNamed(Routes.detail, arguments: pokemon);
              },
            );
          },
        );
      }),
    );
  }
}