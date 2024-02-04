import 'package:get/get.dart';
import 'create_controller.dart';

class NoteCreationPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoteCreationPageController());
  }
}