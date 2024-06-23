import 'package:store_app/features/customer/search/data/model/search_request_body.dart';

class SearchQueries {
  const SearchQueries._();
  static const SearchQueries _instance = SearchQueries._();
  factory SearchQueries() => _instance;

  Map<String, dynamic> searchProductQuery({required SearchRequestBody body}) {
    return {
      'query':'''
          {
            products(price_min:${body.productMin} , price_max: ${body.productMax},title:${body.productName}) {
              title
              price
              images
              description
              id
              category{
                name
                id
              }
            }
          }

    '''
    };
  }
}
