class ProductDetailsQueries {
  const ProductDetailsQueries._();
  static const ProductDetailsQueries _instance = ProductDetailsQueries._();
  factory ProductDetailsQueries() => _instance;

  // Product Details Query
  Map<String, dynamic> productDetailsQuery(int productId) {
    return {
      'query': '''
          	product(id: $productId) {
            title
            price
            images
            description
          }
        }
      ''',
      'variables': {
        'id': productId,
      }
    };
  }
  
}