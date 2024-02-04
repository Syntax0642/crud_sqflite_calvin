import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud_project/db/db_helper.dart';
import 'pages/note_create/create_page.dart';
import 'pages/note_create/create_binding.dart';
import 'pages/note_page/page_page.dart';
import 'pages/note_page/page_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      initialRoute: "/",
      initialBinding: NotePageBindings(),
      getPages: [
        GetPage(
            name: "/",
            page: () => const NotesPage(),
            binding: NotePageBindings()),
        GetPage(
            name: "/create",
            page: () => const NoteCreationPage(),
            binding: NoteCreationPageBindings()),
      ],
    );
  }
}