# Лабораторія Flutter

Навчальний Flutter-застосунок, створений під час курсу **Flutter Mobile Developer** від [robot_dreams](https://robotdreams.cc) (2026). У ньому зібрані робочі приклади базових тем мобільної розробки та виконані домашні завдання.

*A Flutter learning app built during the robot_dreams "Flutter Mobile Developer" course: widgets, layout constraints, navigation with go_router and state management with Provider, BLoC and Cubit.*

<!-- Додайте 2–3 скріншоти: головний екран, приклад навігації, приклад BLoC -->
<!-- ![Головний екран](docs/screenshots/home.png) -->

## Що показано

| Розділ | Що реалізовано |
| --- | --- |
| **Widgets** | Container, Row, Column, Expanded, Stack, Align, Padding, SizedBox, тексти, кнопки, поля введення, жести, зображення, прокрутка, індикатори прогресу, власні віджети, Stateless і Stateful |
| **Layout constraints** | Серія прикладів того, як Flutter передає обмеження розмірів від батька до дочірніх віджетів |
| **Navigation** | Маршрутизація через `go_router`: іменовані маршрути, передача даних на екран і повернення результату, власні анімації переходу |
| **State Management** | Той самий лічильник на трьох підходах — `Provider` (ChangeNotifier), `Cubit` і `BLoC` (події та стани), а також розбір типових помилок |
| **Домашні завдання** | Уроки 11, 12, 13 (верстка та обмеження) і 18 (екрани на BLoC і Cubit) |

## Технології

- Flutter, Dart 3.11
- [go_router](https://pub.dev/packages/go_router) — навігація
- [provider](https://pub.dev/packages/provider), [flutter_bloc](https://pub.dev/packages/flutter_bloc) — керування станом
- [google_fonts](https://pub.dev/packages/google_fonts)
- flutter_lints — статичний аналіз коду

## Структура

```
lib/
├── main.dart                  # точка входу, підключення Provider / BLoC / Cubit
├── router/                    # маршрути go_router
├── features/
│   ├── app/                   # головний екран, назви маршрутів, кольори
│   ├── widgets/               # приклади віджетів і обмежень
│   ├── navigation/            # приклади навігації
│   └── state_managment/       # Provider, Cubit, BLoC
└── lesson_11 … lesson_18/     # домашні завдання
```

## Як запустити

```bash
git clone https://github.com/TwinLucky/FlutterApp.git
cd FlutterApp
flutter pub get
flutter run
```

Працює на Android, iOS, вебі та десктопі (Windows, macOS, Linux).

## Автор

**Борис Разорьонов** — програміст 1С / BAF з понад 20-річним досвідом, автор мобільних застосунків для складського обліку та керівників на платформі АгентПлюс. Зараз розвиваю навички мобільної розробки на Flutter.
