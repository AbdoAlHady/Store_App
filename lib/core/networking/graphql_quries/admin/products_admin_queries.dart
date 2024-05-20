class ProductsAdminQueries {
  const ProductsAdminQueries._();
  static const ProductsAdminQueries _instance = ProductsAdminQueries._();
  factory ProductsAdminQueries() => _instance;

  Map<String, dynamic> getAllProductsQuery() {
    return {
      'query':'''
        query {
          products {
            id
            title
            description
            price
            images
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
