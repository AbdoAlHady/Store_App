class UsersAdminQueries {
  const UsersAdminQueries._();
  static const UsersAdminQueries _instance = UsersAdminQueries._();
  factory UsersAdminQueries() => _instance;

  // Get all users query
  Map<String, dynamic> getAllUsersQuery() {
    return {
      'query': '''
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

  // Delete user query
  Map<String, dynamic> deleteUser(String userId) {
    return {
      'query': r'''
             mutation DeleteUser($id: ID!){
              deleteUser(id: $id)
            }
       ''',
      'variables': {
        'id': userId,
      }
    };
  }
}
