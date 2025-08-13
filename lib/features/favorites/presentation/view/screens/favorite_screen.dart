import 'package:flutter/material.dart';
import 'package:store_app/features/favorites/presentation/view/widgets/favorite_list.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorite"),),
body: const FavoriteList(),
    );
  }
}
