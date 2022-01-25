import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FirstScreenLogic extends GetxController {
  ImagePicker imagePickerPlugin = ImagePicker();
  var image;

  pickImage(ImageSource source) async {
    final fromPicker = await imagePickerPlugin.pickImage(source: source);
    image = await fromPicker!.readAsBytes();
    update();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
