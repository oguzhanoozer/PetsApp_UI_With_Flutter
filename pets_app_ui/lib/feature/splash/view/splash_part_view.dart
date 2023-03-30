part of 'splash_view.dart';

BuildPositionedWidget _buildLoginButton(BuildContext context) {
  return BuildPositionedWidget(
    left: context.dynamicWidth(0.12),
    bottom: context.dynamicHeight(0.04),
    child: ElevatedButtonWidget(
      buttonColor: ColorEnum.honoluluBlue.colorPath,
      buttonText: StringConstants.instance.loginText,
      onPressed: null,
      buttonSize: Size(
        context.dynamicWidth(0.8),
        context.dynamicHeight(0.07),
      ),
    ),
  );
}

BuildPositionedWidget _buildGetStartedButton(BuildContext context) {
  return BuildPositionedWidget(
    left: context.dynamicWidth(0.12),
    bottom: context.dynamicHeight(0.12),
    child: ElevatedButtonWidget(
      buttonColor: ColorEnum.purpleCabbage.colorPath,
      buttonText: StringConstants.instance.getStarText,
      onPressed: null,
      buttonSize: Size(
        context.dynamicWidth(0.8),
        context.dynamicHeight(0.07),
      ),
    ),
  );
}

BuildPositionedWidget _buildLoremText(BuildContext context) {
  return BuildPositionedWidget(
    left: context.dynamicWidth(0.15),
    bottom: context.dynamicHeight(0.23),
    child: _buildImageBox(
      width: context.dynamicWidth(0.9),
      child: Text(
        StringConstants.instance.loremIpsumText,
        style: context.textTheme.bodySmall,
      ),
    ),
  );
}

BuildPositionedWidget _buildPetAdoptionText(BuildContext context) {
  return BuildPositionedWidget(
    right: context.dynamicWidth(0.25),
    bottom: context.dynamicHeight(0.28),
    child: Text(
      StringConstants.instance.petAdoptionText,
      style: context.textTheme.bodyLarge,
    ),
  );
}

BuildPositionedWidget _buildHeartOvalImage(BuildContext context) {
  return BuildPositionedWidget(
    right: context.dynamicWidth(0.1),
    bottom: context.dynamicHeight(0.3),
    child: _buildImageBox(
      height: context.dynamicHeight(0.07),
      child: _buildImageWidget(
        imagePath: ImageConstants.instance.img_heart.imagePath,
      ),
    ),
  );
}

BuildPositionedWidget _buildSmallPurpleOvalImage(BuildContext context) {
  return BuildPositionedWidget(
    right: context.dynamicWidth(0.06),
    bottom: context.dynamicHeight(0.63),
    child: _buildImageBox(
      height: context.dynamicHeight(0.02),
      child: _buildImageWidget(
        imagePath: ImageConstants.instance.img_oval_2.imagePath,
      ),
    ),
  );
}

BuildPositionedWidget _buildCatOvalImage(BuildContext context) {
  return BuildPositionedWidget(
    left: context.dynamicWidth(0.21),
    bottom: context.dynamicHeight(0.44),
    child: _buildImageBox(
      height: context.dynamicHeight(0.35),
      child: _buildImageWidget(
        imagePath: ImageConstants.instance.img_cat.imagePath,
      ),
    ),
  );
}

BuildPositionedWidget _buildOrangeOvalImage(BuildContext context) {
  return BuildPositionedWidget(
    right: context.dynamicWidth(0.75),
    top: context.dynamicHeight(0.45),
    child: _buildImageWidget(
      imagePath: ImageConstants.instance.img_oval_1.imagePath,
    ),
  );
}

BuildPositionedWidget _buildBigPurpleOvalImage(BuildContext context) {
  return BuildPositionedWidget(
    left: context.dynamicWidth(0.15),
    bottom: context.dynamicHeight(0.6),
    child: _buildImageBox(
      height: context.dynamicHeight(0.18),
      child: _buildImageWidget(
        imagePath: ImageConstants.instance.img_oval_2.imagePath,
      ),
    ),
  );
}

BuildPositionedWidget _buildBlueOvalImage(BuildContext context) {
  return BuildPositionedWidget(
    left: context.dynamicWidth(0.5),
    bottom: context.dynamicHeight(0.75),
    child: _buildImageWidget(
        imagePath: ImageConstants.instance.img_oval_3.imagePath),
  );
}

class _buildImageBox extends StatelessWidget {
  const _buildImageBox({
    this.height,
    this.width,
    required this.child,
  });
  final double? height;
  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width, child: child);
  }
}

class _buildImageWidget extends StatelessWidget {
  const _buildImageWidget({
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.fill,
    );
  }
}
