class CategoryQueries {
  const CategoryQueries._();
  static const CategoryQueries _instance = CategoryQueries._();
  factory CategoryQueries() => _instance;

  Map<String, dynamic> getCategoryProductsQuery(int id) {
    return {
      'query': '''
        {
          products(categoryId: $id) {
            title
            price
              images
              description
              price
            category {
              id
              name
            }
          }
        }
      '''
    };
  }
}
