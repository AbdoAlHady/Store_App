class DashboardQueries {
  const DashboardQueries._();
  static const DashboardQueries _instance = DashboardQueries._();
  factory DashboardQueries() => _instance;


  // Products
  Map<String, dynamic> numberOfProductMapQuery() {
    return {
      'query': '''
             {
                products{
                  title
                }
              }
              
      '''
    };
  }

  // Categories
  Map<String, dynamic> numberOfCategoryMapQuery() {
    return {
      'query': '''
              {
                categories{
                  name
                }
            }
              
      '''
    };
  }

  // Users
  Map<String, dynamic> numberOfUserMapQuery() {
    return {
      'query': '''
              {
                users{
                  name
                }
            }
               
      '''
    };
  }
}
