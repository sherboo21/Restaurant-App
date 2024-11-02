String svgIconsName(String? icon) {
  return 'assets/icons/$icon.svg';
}

String pngImageName(String? image) {
  return 'assets/images/$image.png';
}

String jsonFileName(String? file) {
  return 'assets/animations/$file.json';
}

class AppIcons {
  static String get homeIcon => svgIconsName('home');

  static String get addIcon => svgIconsName('add');

  static String get editIcon => svgIconsName('edit');

  static String get removeIcon => svgIconsName('remove');

  static String get profileIcon => svgIconsName('profile');

  static String get receiptIcon => svgIconsName('receipt');

  static String get searchIcon => svgIconsName('search');

  static String get arrowDownIcon => svgIconsName('arrowDown');

  static String get lineIcon => svgIconsName('line');

  static String get search2Icon => svgIconsName('search2');

  static String get arrowBackIcon => svgIconsName('arrowBack');

  static String get menuIcon => svgIconsName('menu');

  static String get closeIcon => svgIconsName('close');
}

class AppImages {
  static String get chickenImage => pngImageName('chicken');

  static String get locationImage => pngImageName('location');

  static String get noodlesImage => pngImageName('noodles');

  static String get offerImage => pngImageName('offer');

  static String get pastaImage => pngImageName('pasta');

  static String get pizzaImage => pngImageName('pizza');

  static String get rateImage => pngImageName('rate');

  static String get saladImage => pngImageName('salad');

  static String get sushiImage => pngImageName('sushi');
}

class AppAnimations {
  static String get appErrorAnimation => jsonFileName('appError');
}
