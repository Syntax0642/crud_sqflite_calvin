import 'package:get/get.dart';
import 'page_controller.dart';

class NotePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotesPageController());
  }
}