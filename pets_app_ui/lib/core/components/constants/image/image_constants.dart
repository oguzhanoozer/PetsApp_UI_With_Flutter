class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();

  static String ic_outlined_action_favorite = "ic_outlined_action_favorite";
  static String ic_outlined_action_lock = "ic_outlined_action_lock";
  static String ic_outlined_action_room = "ic_outlined_action_room";
  static String ic_outlined_action_search = "ic_outlined_action_search";
  static String ic_outlined_action_settings_cell =
      "ic_outlined_action_settings_cell";
  static String ic_outlined_action_stars = "ic_outlined_action_stars";
  static String ic_outlined_av_video_library = "ic_outlined_av_video_library";
  static String ic_outlined_communication_email =
      "ic_outlined_communication_email";
  static String ic_outlined_device_devices = "ic_outlined_device_devices";
  static String ic_outlined_file_cloud_download =
      "ic_outlined_file_cloud_download";
  static String ic_outlined_file_folder = "ic_outlined_file_folder";
  static String ic_outlined_navigation_arrow_back =
      "ic_outlined_navigation_arrow_back";
  static String ic_outlined_notification_ondemand_video =
      "ic_outlined_notification_ondemand_video";
  static String ic_outlined_places_all_inclusive =
      "ic_outlined_places_all_inclusive";
  static String ic_outlined_social_notifications =
      "ic_outlined_social_notifications";
  static String ic_outlined_social_person_outline =
      "ic_outlined_social_person_outline";
  static String ic_outlined_social_share = "ic_outlined_social_share";

  static String img_blur_back = "img_blur_back";
  static String img_blur_list = "img_blur_list";
  static String image_aimg_bunniespplePay_large = "img_bunnies";
  static String img_cat = "img_cat";
  static String img_cats_active = "img_cats_active";
  static String img_cute_baby = "img_cute_baby";
  static String img_dogs = "img_dogs";
  static String img_facebook = "img_facebook";
  static String img_heart = "img_heart";
  static String img_instagram = "img_instagram";
  static String img_like_icon = "img_like_icon";
  static String img_oval_1 = "img_oval_1";
  static String img_oval_2 = "img_oval_2";
  static String img_oval_3 = "img_oval_3";
  static String img_oval = "img_oval";
  static String img_oval_location = "img_oval_location";
  static String img_parrots = "img_parrots";
  static String img_squirrel = "img_squirrel";
  static String img_twitter = "img_twitter";
  static String img_your_image = "img_your_image";
}

extension IconConstantExtension on String {
  String get iconPath => "assets/icons/$this.png";
}

extension ImageConstantExtension on String {
  String get imagePath => "assets/images/$this.png";
}
