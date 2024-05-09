import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/sign_up_request_body.dart';

class AuthQueries {
  const AuthQueries._();
  static const AuthQueries _instance = AuthQueries._();

  factory AuthQueries() {
    return _instance;
  }

  Map<String, dynamic> loginMapQuery(LoginRequestBody body) {
    return {
      'query': r'''
          mutation Login($email: String!, $password: String!) {
            login(email: $email, password: $password) {
              access_token
              refresh_token
            }
          }
        ''',
      'variables': {
        'email': body.email,
        'password': body.password,
      },
    };
  }

  Map<String, dynamic> signUpMapQuery(SignUpRequestBody body) {
    return {
      'query': r'''
       mutation SignUp($name: String!, $email: String!, $password: String!, $avatar: String!) {
	          addUser(
		            data: {
		              name: $name
		              email: $email
		            	password: $password
                  role:customer
			            avatar:$avatar
	    }) {
		    id
		    name
	    }
      ''',
      'variables': {
        'name': body.name,
        'email': body.email,
        'password': body.password,
        'avatar': body.avatar,
      },
    };
  }
}
