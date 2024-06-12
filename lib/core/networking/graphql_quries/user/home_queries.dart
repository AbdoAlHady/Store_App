class Homequeries {
  const Homequeries._();
  static const Homequeries _instance = Homequeries._();
  factory Homequeries() => _instance;

  Map<String, dynamic> bannersQuery() {
    return {
      'query': '''
          {
            products{
              title
              images
              }
          }

      '''
    };
  }
}
