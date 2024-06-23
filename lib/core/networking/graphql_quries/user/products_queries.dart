class ProductsQueries {
  const ProductsQueries._();
  static const ProductsQueries _instance = ProductsQueries._();
  factory ProductsQueries() => _instance;

  // Product Details Query
  Map<String, dynamic> productDetailsQuery(int productId) {
    return {
      'query': '''
           {
          product(id: $productId) {
            title
            price
            images
                description
          }
        },''',
    };
  }

  // View All Products Query
  Map<String, dynamic> viewAllProductsQuery(int offeset) {
    return {
      'query': '''
              {
                products(limit: 6, offset: $offeset){
                 title
                 price
                 images
                description
                id
                category{
                  id
                   name
                   }
                ,}
              }
         ''',
    };
  }
}
