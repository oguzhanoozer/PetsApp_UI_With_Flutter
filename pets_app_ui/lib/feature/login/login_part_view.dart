part of 'login_view.dart';

Align _buildForgotPasswordText(BuildContext context) {
  return Align(
    alignment: Alignment.centerRight,
    child: Text(StringConstants.instance.forgotPasswordText,
        style: context.textTheme.displayMedium),
  );
}

InputTextFieldWidget _buildPasswordField() {
  return InputTextFieldWidget(
      obscureText: true,
      prefixIcon: Icons.lock_outline,
      hintText: StringConstants.instance.passwordText,
      controller: passwordController);
}

InputTextFieldWidget _buildEmailField() {
  return InputTextFieldWidget(
      prefixIcon: Icons.email_outlined,
      hintText: StringConstants.instance.userNameOrEmailText,
      controller: emailController);
}

SizedBox _buildCreateAccountRow(BuildContext context) {
  return SizedBox(
    width: context.dynamicWidth(0.6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        context.emptySizedHeightBoxLow3x,
        FittedBox(
          child: Text(
              StringConstants.instance.createNewAccountText.toCapitalized(),
              style: context.textTheme.displayMedium),
        ),
        context.emptySizedWidthBoxLow,
        FittedBox(
          child: Text(StringConstants.instance.signUpText.toCapitalized(),
              style: context.textTheme.labelSmall),
        ),
        context.emptySizedHeightBoxLow3x
      ],
    ),
  );
}

SizedBox _buildSocialButton(BuildContext context) {
  return SizedBox(
    width: context.dynamicWidth(0.6),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: CreateSocialButtonList.socialButtonList(context)),
  );
}

Text _buildOrLoginWith(BuildContext context) {
  return Text(StringConstants.instance.orLoginWithText.toUpperCase(),
      style: context.textTheme.displayMedium);
}

ElevatedButtonWidget _buildLoginButton(BuildContext context) {
  return ElevatedButtonWidget(
    buttonColor: ColorEnum.purpleCabbage.colorPath,
    buttonText: StringConstants.instance.loginText,
    onPressed: null,
    buttonSize: Size(
      context.dynamicWidth(0.9),
      context.dynamicHeight(0.07),
    ),
  );
}

Text _buildSignInText(BuildContext context) {
  return Text(StringConstants.instance.signInToContinueText,
      style: context.textTheme.displayMedium);
}

Text _buildWelcomeText(BuildContext context) {
  return Text(StringConstants.instance.welcomeText,
      style: context.textTheme.displayLarge);
}
