import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'menu_repository.g.dart';

class MenuRepository {
  MenuRepository(this.client);
  final http.Client client;

/*   Future<List<MenuItem>> getMenu() async {
    final response = await client.get(
      Uri.parse('https://api.example.com/menu'),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to load menu');
    }

  }
 */
  Future<void> updateMenuItem(MenuItem menuItem) async {
    final response = await client.put(
      Uri.parse('https://api.example.com/menu/${menuItem.id}'),
      body: {'title': menuItem.title, 'description': menuItem.description},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to update menu item');
    }
  }

  Future<void> deleteMenuItem(MenuItem menuItem) async {
    final response = await client.delete(
      Uri.parse('https://api.example.com/menu/${menuItem.id}'),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to delete menu item');
    }
  }
}

class MenuItem {
  get title => null;

  get description => null;

  get id => null;
}

@riverpod
MenuRepository menuRepository(MenuRepositoryRef ref) {
  return MenuRepository(http.Client());
}

/* @riverpod
Future<List<MenuItem>> fetchMenu(FetchMenuRef ref) {
  return ref.watch(menuRepositoryProvider).getMenu();
} */

@riverpod
Future<void> updateMenuItem(UpdateMenuItemRef ref, MenuItem menuItem) {
  return ref.watch(menuRepositoryProvider).updateMenuItem(menuItem);
}

@riverpod
Future<void> deleteMenuItem(DeleteMenuItemRef ref, MenuItem menuItem) {
  return ref.watch(menuRepositoryProvider).deleteMenuItem(menuItem);
}
