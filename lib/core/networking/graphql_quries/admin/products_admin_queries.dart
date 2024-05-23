import '../../../../features/admin/add_products/data/models/create_product_request_body.dart';
import '../../../../features/admin/add_products/data/models/update_product_request_body.dart';

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
          mutation CreateProduct($title: String!, $price: Float!, $description:String!, $categoryId: Float!,$imagesList:[String!]!  ) {
              addProduct(
                data: {
                  title: $title,
                  price: $price
                  description: $description
                  categoryId: $categoryId
                  images: $imagesList
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
        'imagesList': body.images,
      },
    };
  }

  // Delete Product
  Map<String, dynamic> deleteProductQuery(String productId) {
    return {
      'query': r'''
         mutation DeleteProduct($productId: ID!){
            	deleteProduct(id: $productId)
          }
        ''',
      'variables': {
        'productId': productId,
      },
    };
  }
  // Update Product
  Map<String, dynamic> updateProductQuery(UpdateProductRequestBody body) {
    return {
      'query': r'''
         mutation UpdateProduct($id: ID!, $title: String!, $price: Float!, $description:String!, $categoryId: Float!,$images:[String!]! ){
              updateProduct(id: $id, changes: { title: $title, price: $price, description: $description, categoryId: $categoryId, images: $images}) {
                title
                
              }
        }

        ''',
      'variables': {
        'id': body.id,
        'title': body.title,
        'price': body.price,
        'description': body.description,
        'categoryId': body.categoryId,
        'images': body.images,
      },
    };
  }
}
