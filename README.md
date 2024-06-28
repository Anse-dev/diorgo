# Application de Réservation de Plats

## Description

Cette application de réservation de plats permet aux utilisateurs de parcourir les menus et de commander des plats en ligne. L'application utilise Flutter pour l'interface utilisateur, Riverpod pour la gestion de l'état, et GoRouter pour la navigation.

## Fonctionnalités

- **Authentification** : Les utilisateurs peuvent se connecter et s'inscrire.
- **Navigation** : Utilisation de GoRouter pour une navigation fluide.
- **Gestion de l'état** : Utilisation de Riverpod pour une gestion efficace de l'état.
- **Réutilisabilité** : Composants et widgets réutilisables pour une maintenance facile.

## Prérequis

Assurez-vous d'avoir les éléments suivants installés sur votre machine :

- Flutter SDK: [Flutter installation guide](https://flutter.dev/docs/get-started/install)
- Dart SDK
- Un éditeur de code (VS Code, IntelliJ, Android Studio, etc.)

## Installation

1. Clonez le repository :

   ```sh
   git clone https://github.com/anse-dev/diorgo.git

   ```


2. Clonez le repository :

   ```sh
    flutter pub get

   ```
3.Configuration API
Assurez-vous de configurer les URL des API dans les fichiers appropriés (par exemple, auth_repository.dart) :
```
final response = await client.post(
  Uri.parse('https://api.example.com/login'),
  body: {'email': email, 'password': password},
);

```
Remplacez`` https://api.example.com`` par l'URL de votre API.

## Structure du Projet

```
lib/
|-- core/
|   |-- theme.dart
|   |-- routes.dart
|   |-- widgets/
|       |-- custom_button.dart
|-- features/
|   |-- authentication/
|   |   |-- presentation/
|   |   |   |-- login_page.dart
|   |   |   |-- register_page.dart
|   |   |-- application/
|   |   |   |-- auth_controller.dart
|   |   |-- domain/
|   |   |   |-- auth_repository.dart
|   |   |-- infrastructure/
|   |       |-- auth_api.dart
|   |-- booking/
|   |   |-- presentation/
|   |   |   |-- booking_page.dart
|   |   |   |-- booking_form.dart
|   |   |-- application/
|   |   |   |-- booking_controller.dart
|   |   |-- domain/
|   |   |   |-- booking_repository.dart
|   |   |-- infrastructure/
|   |       |-- booking_api.dart
|   |-- menu/
|   |   |-- presentation/
|   |   |   |-- menu_page.dart
|   |   |   |-- menu_item_widget.dart
|   |   |-- application/
|   |   |   |-- menu_controller.dart
|   |   |-- domain/
|   |   |   |-- menu_repository.dart
|   |   |-- infrastructure/
|   |       |-- menu_api.dart
main.dart
```

## Démarrage

```

flutter run
```