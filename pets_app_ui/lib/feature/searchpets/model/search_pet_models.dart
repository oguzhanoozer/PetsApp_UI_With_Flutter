class SearchPetModel {
  final String? name;
  final String? locationName;

  SearchPetModel({this.name, this.locationName});

  static List<SearchPetModel> itemList() {
    return [
      SearchPetModel(name: "Jack Vega", locationName: "Moenhaven"),
      SearchPetModel(name: "Winnie Glover", locationName: "Desireemouth"),
      SearchPetModel(name: "Lydia Henry", locationName: "Langchester"),
      SearchPetModel(name: "Phoebe Hines", locationName: "South Ceceliamouth"),
      SearchPetModel(name: "Louisa Wood", locationName: "North Susan"),
      SearchPetModel(name: "Mattie Clark", locationName: "Electaview"),
      SearchPetModel(name: "Rena McCarthy", locationName: "Hermanfurt"),
    ];
  }
}
