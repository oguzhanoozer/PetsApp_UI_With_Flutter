import '../../../core/components/constants/image/image_constants.dart';

class FindYourPetsModel {
  final String imagePath;

  FindYourPetsModel(this.imagePath);

  static List<FindYourPetsModel> itemList() {
    return [
      FindYourPetsModel(ImageConstants.instance.img_dogs.imagePath),
      FindYourPetsModel(ImageConstants.instance.img_cats_active.imagePath),
      FindYourPetsModel(ImageConstants.instance.img_parrots.imagePath),
      FindYourPetsModel(ImageConstants.instance.img_squirrel.imagePath),
      FindYourPetsModel(ImageConstants.instance.img_dogs.imagePath),
    ];
  }
}
