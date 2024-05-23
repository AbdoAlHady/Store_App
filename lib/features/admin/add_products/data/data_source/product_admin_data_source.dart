import 'package:store_app/core/networking/api_service.dart';
import 'package:store_app/features/admin/add_products/data/models/create_product_request_body.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';
import 'package:store_app/features/admin/add_products/data/models/update_product_request_body.dart';
import '../../../../../core/networking/graphql_quries/admin/products_admin_queries.dart';

class ProductAdminDataSource {
  final ApiService _apiService;

  ProductAdminDataSource(this._apiService);
  // Get All Products
  Future<GetAllProductsResponse> getAllAdminProducts() async {
    final response = await _apiService.getAllProducts(ProductsAdminQueries().getAllProductsQuery());
    return response;
  }
  // Create Product
  Future<void>cerateProduct(CreateProductRequestBody body)async{
    final response= await _apiService.createProduct(ProductsAdminQueries().createProductQuery(body));
    return response;

  }
  // Delete Product
  Future<void>deleteProduct(String id)async{
    final response= await _apiService.deleteProduct(ProductsAdminQueries().deleteProductQuery(id));
    return response;
  }

  // Update Product
  Future<void>updateProduct(UpdateProductRequestBody body)async{
    final response= await _apiService.createProduct(ProductsAdminQueries().updateProductQuery(body));
    return response;
  }
}
