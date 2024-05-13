class  CategoriesQueries{
  const CategoriesQueries._();
  static const CategoriesQueries _instance = CategoriesQueries._();
  factory CategoriesQueries() => _instance;

  Map<String, dynamic> getAllCategoriesQuery() {
    return {
      "query": ''' 
            {
              categories{
                id
                name
                image
              }
            }
      ''',
    };
  }
}