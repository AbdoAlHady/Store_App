import 'package:store_app/features/customer/search/data/model/search_request_body.dart';

class SearchQueries {
  const SearchQueries._();
  static const SearchQueries _instance = SearchQueries._();
  factory SearchQueries() => _instance;

  Map<String, dynamic> searchProductQuery({required SearchRequestBody body}) {
    return {
      'query':r'''
          query SearchProduct($price_min:Int,$price_max: Int, $title: String)    {
            products(price_min:$price_min, price_max: $price_max,title: $title) {
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

    ''',
      'variables': {
        'price_min': body.productMin,
        'price_max': body.productMax,
        'title': body.productName,
      }
    };
  }
}
