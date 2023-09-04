enum Flavor {
  dev,
  stg,
  prd,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'CACF_dev';
      case Flavor.stg:
        return 'CACF_stg';
      case Flavor.prd:
        return 'CACF';
      default:
        return 'title';
    }
  }

}
