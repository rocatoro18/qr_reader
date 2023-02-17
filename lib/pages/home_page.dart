import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/custom_floating_action_button.dart';
import 'package:qr_reader/widgets/custom_navigator_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        actions: [
          IconButton(
              onPressed: () => {}, icon: const Icon(Icons.delete_forever))
        ],
        elevation: 0,
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
