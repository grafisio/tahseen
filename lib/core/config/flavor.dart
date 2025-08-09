enum Flavor { dev, staging, prod }

class AppFlavor {
  const AppFlavor._();

  static Flavor get current {
    final value = const String.fromEnvironment('FLAVOR', defaultValue: 'dev');
    switch (value.toLowerCase()) {
      case 'prod':
        return Flavor.prod;
      case 'staging':
        return Flavor.staging;
      case 'dev':
      default:
        return Flavor.dev;
    }
  }
}


