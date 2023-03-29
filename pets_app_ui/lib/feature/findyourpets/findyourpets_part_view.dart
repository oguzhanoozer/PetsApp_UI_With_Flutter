part of 'findyourpets_view.dart';

final TextEditingController searchController = TextEditingController();

Expanded _buildGridListView(BuildContext context) {
  return Expanded(
      child: MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return _buildItemCard(index, context);
        }),
  ));
}

CardWidget _buildItemCard(int index, BuildContext context) {
  final itemName = "Daniel James";
  final itemCity = "New York City (2.8 km)";

  return CardWidget(
      isBorderExist: true,
      childWidget: Column(
        children: [
          Expanded(
            flex: 3,
            child: _buildCardItemImage(index, context),
          ),
          _buildItemNameText(itemName, context),
          _buildCityRow(context, itemCity),
        ],
      ));
}

Text _buildItemNameText(String itemName, BuildContext context) =>
    Text(itemName, style: context.textTheme.displaySmall);

Row _buildCityRow(BuildContext context, String itemCity) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.location_on_outlined,
        size: context.normalValue,
      ),
      Text(itemCity, style: context.textTheme.titleLarge),
    ],
  );
}

CardWidget _buildCardItemImage(int index, BuildContext context) {
  final statusText = "Status: ";
  final activeText = "Active";

  return CardWidget(
    isBorderExist: true,
    childWidget: Container(
      decoration: BoxDecoration(
        color: ColorEnum.doctor.colorPath,
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Stack(
        children: [
          Positioned(
            child: _buildStatusCard(index, context, statusText, activeText),
            top: 5,
            right: 5,
          )
        ],
      ),
    ),
  );
}

CardWidget _buildStatusCard(
    int index, BuildContext context, String statusText, String activeText) {
  return CardWidget(
    color: index.isEven
        ? ColorEnum.voraciousWhite.colorPath
        : ColorEnum.zumthorapprox.colorPath,
    childWidget: Padding(
      padding: context.paddingLow,
      child: Row(
        children: [
          _buildStatusText(statusText, context),
          context.emptySizedWidthBoxLow,
          _buildActivityText(activeText, context, index)
        ],
      ),
    ),
  );
}

Text _buildActivityText(String activeText, BuildContext context, int index) {
  return Text(activeText,
      style: context.textTheme.titleMedium?.copyWith(
          color: index.isEven
              ? ColorEnum.cozySummerSunset.colorPath
              : ColorEnum.dodgerBlue.colorPath));
}

Text _buildStatusText(String statusText, BuildContext context) {
  return Text(statusText,
      style: context.textTheme.titleMedium
          ?.copyWith(color: ColorEnum.yankeesBlue.colorPath));
}

SizedBox _buildAnimalListView(BuildContext context) {
  return SizedBox(
    height: context.dynamicHeight(0.1),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CardWidget(
          childWidget: Image.asset(ImageConstants.instance.img_dogs.imagePath),
        ),
        CardWidget(
          childWidget:
              Image.asset(ImageConstants.instance.img_cats_active.imagePath),
        ),
        CardWidget(
          childWidget:
              Image.asset(ImageConstants.instance.img_parrots.imagePath),
        ),
        CardWidget(
          childWidget:
              Image.asset(ImageConstants.instance.img_squirrel.imagePath),
        ),
        CardWidget(
          childWidget: Image.asset(ImageConstants.instance.img_dogs.imagePath),
        ),
      ],
    ),
  );
}

Text _buildFindYourTextText(BuildContext context) {
  return Text(StringConstants.instance.findYourText,
      style: context.textTheme.displayLarge);
}

Text _buildLovelyPetsInAnywhereTextText(BuildContext context) {
  return Text(StringConstants.instance.lovelyPetsInAnywhereText,
      style: context.textTheme.displayMedium);
}

InputTextFieldWidget _buildSearchField() {
  return InputTextFieldWidget(
      isSearchField: true,
      prefixIcon: Icons.location_on_outlined,
      hintText: StringConstants.instance.searchLocationText,
      controller: searchController);
}
