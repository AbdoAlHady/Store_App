import 'package:store_app/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:store_app/features/admin/add_categories/data/models/update_category_request_body.dart';

class CategoriesQueries {
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

  Map<String, dynamic> addCategoriesQuery(
      {required CreateCategoryRequestBody body}) {
    return {
      "query": r'''
                  mutation CreateCategory($name: String!, $image : String!) {
                     addCategory(
                           data: { name: $name, image: $image }
                     ) {
                        id
                        name
                        image
                      }
                  }
            
      ''',
      'variables': {
        'name': body.name,
        'image': body.image,
      },
    };
  }

  // Delete category query
  Map<String, dynamic> deleteCategoryQuery({required String categoryId}) {
    return {
      'query': r'''
           mutation DeleteCategory( $id: ID!){
	            deleteCategory(id: $id)
          }
      ''',
      'variables': {
        'id': categoryId,
      },
    };
  }

  // Update category query
  Map<String, dynamic> updateCategory(UpdateCategoryRequestBody body) {
    return {
      'query': r'''
      mutation UpdateCategory($id: ID!, $name: String!, $image : String!) {
      	updateCategory(id: $id, changes: { name: $name, image: $image}) {
          id
        }
      }

    ''',
      'variables': {
        'id': body.id,
        'name': body.name ?? "",
        'image': body.image ?? "",
      }
    };
  }
}
