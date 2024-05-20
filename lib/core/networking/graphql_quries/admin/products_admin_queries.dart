import '../../../../features/admin/add_products/data/models/create_product_request_body.dart';

class ProductsAdminQueries {
  const ProductsAdminQueries._();
  static const ProductsAdminQueries _instance = ProductsAdminQueries._();
  factory ProductsAdminQueries() => _instance;

  Map<String, dynamic> getAllProductsQuery() {
    return {
      'query': '''
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

  Map<String, dynamic> createProductQuery(CreateProductRequestBody body) {
    return {
      'query': r'''
       mutation CreateProduct($title:String!,$price:Float!,$description:String!,$categoryId:Int!,$images:[String!]!){ ){
            addProduct(
                  data: {
                    title: $title
                    price: $price
                    description: $description
                    categoryId: $categoryId
                    images: $images
                  }
          ) {
            title
          }
        }
      ''',
      'variables': {
        'title': body.title,
        'price': body.price,
        'description': body.description,
        'categoryId': body.categoryId,
        'images': body.images
      }
    };
  }
}
