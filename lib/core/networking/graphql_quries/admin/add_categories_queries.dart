import 'package:store_app/features/admin/add_categories/data/models/create_category_request_body.dart';

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
}
