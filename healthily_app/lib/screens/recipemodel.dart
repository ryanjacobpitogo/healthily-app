class AccM {
   String username;
   String password;
   String token;



  AccM(
      { required this.username,
       required this.password,
       required this.token,
    });


get usern => username;
get usep => password;
get tok => token;

}