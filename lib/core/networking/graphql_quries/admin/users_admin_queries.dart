class UsersAdminQueries {
  const UsersAdminQueries._();
  static const UsersAdminQueries _instance = UsersAdminQueries._();
  factory UsersAdminQueries() => _instance;

  Map<String, dynamic> getAllUsersQuery() {
    return {
      'query':'''
        {
          users{
            id
            name
            email
          }
        }
       '''
    };
  }
}
