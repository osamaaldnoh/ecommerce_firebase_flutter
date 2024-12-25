class Users
{
  String name ,phone ,password ,image ,address;

  Users({required this.name,required this.phone,required this.password,required this.image,required this.address});


factory Users.fechAdd(Map<String,dynamic> use)
=> Users(
      name: use['name'],
      phone: use['phone'],
      password: use['password'],
      image: use['image'],
      address: use['address']
  );
}