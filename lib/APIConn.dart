import 'package:http/http.dart' as http;
import 'dart:async';


class APIConn{
  static Future getFood(){
    return http.get("https://jsonplaceholder.typicode.com/posts");
  }

}