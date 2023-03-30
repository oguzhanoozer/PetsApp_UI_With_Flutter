class StringConstants {
  static StringConstants? _instance;
  static StringConstants get instance {
    _instance ??= StringConstants._init();
    return _instance!;
  }

  StringConstants._init();
  final String petAdoptionText = "Pet Adoption";

  final String loremIpsumText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.";

  final String getStarText = "Get Start";

  final String loginText = "Login";

  final String welcomeText = "Welcome!";

  final String signInToContinueText = "sign in to continue";

  final String userNameOrEmailText = "Username or Email";

  final String passwordText = "Password123!";

  final String forgotPasswordText = "Forgot Password?";

  final String orLoginWithText = "or login with";

  final String signUpText = "Signup";

  final String signUpSplittedText = "Sign Up";

  final String createNewAccountText = "create new an account ?";

  final String createNewAccountWithBigText = "Create new an account";

  final String fullNameText = "Full Name";

  final String doYouHaveAnAccountText = "Do you have an account ?";

  final String signInText = "Sign In";

  final String congratulationText = "Congratulation!";

  final String findYourText = "Find Your";

  final String lovelyPetsInAnywhereText = "lovely pets in anywhere";

  final String searchLocationText = "Search location…";

  final String ageText = "Age";

  final String sexText = "Sex";

  final String colorText = "Color";

  final String weightText = "Weight";

  final String adoptionText = "Adoption";

  final String nearYourText = "Near Your";

  final String favouritesText = "Favourites";

  final String exampleParagraph1 =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";

  final String exampleParagraph2 =
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
}
