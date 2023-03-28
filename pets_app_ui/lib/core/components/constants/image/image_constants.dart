// ignore_for_file: non_constant_identifier_names

class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();

  String ic_outlined_action_favorite = "ic_outlined_action_favorite";
  String ic_outlined_action_lock = "ic_outlined_action_lock";
  String ic_outlined_action_room = "ic_outlined_action_room";
  String ic_outlined_action_search = "ic_outlined_action_search";
  String ic_outlined_action_settings_cell = "ic_outlined_action_settings_cell";
  String ic_outlined_action_stars = "ic_outlined_action_stars";
  String ic_outlined_av_video_library = "ic_outlined_av_video_library";
  String ic_outlined_communication_email = "ic_outlined_communication_email";
  String ic_outlined_device_devices = "ic_outlined_device_devices";
  String ic_outlined_file_cloud_download = "ic_outlined_file_cloud_download";
  String ic_outlined_file_folder = "ic_outlined_file_folder";
  String ic_outlined_navigation_arrow_back =
      "ic_outlined_navigation_arrow_back";
  String ic_outlined_notification_ondemand_video =
      "ic_outlined_notification_ondemand_video";
  String ic_outlined_places_all_inclusive = "ic_outlined_places_all_inclusive";
  String ic_outlined_social_notifications = "ic_outlined_social_notifications";
  String ic_outlined_social_person_outline =
      "ic_outlined_social_person_outline";
  String ic_outlined_social_share = "ic_outlined_social_share";

  String img_blur_back = "img_blur_back";
  String img_back = "img_back";
  String img_blur_list = "img_blur_list";
  String img_bunnies = "img_bunnies";
  String img_cat = "img_cat";
  String img_cats_active = "img_cats_active";
  String img_cute_baby = "img_cute_baby";
  String img_dogs = "img_dogs";
  String img_facebook = "img_facebook";
  String img_heart = "img_heart";
  String img_instagram = "img_instagram";
  String img_like_icon = "img_like_icon";
  String img_oval_1 = "img_oval_1";
  String img_oval_2 = "img_oval_2";
  String img_oval_3 = "img_oval_3";
  String img_oval = "img_oval";
  String img_oval_location = "img_oval_location";
  String img_parrots = "img_parrots";
  String img_squirrel = "img_squirrel";
  String img_twitter = "img_twitter";
  String img_your_image = "img_your_image";
}

extension IconConstantExtension on String {
  String get iconPath => "assets/icons/$this.png";
}

extension ImageConstantExtension on String {
  String get imagePath => "assets/images/$this.png";
}
