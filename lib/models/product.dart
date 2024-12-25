class Product
{
  String pname, description, price, image, category, pid, date, time ;

  Product({required this.pname,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.pid,
    required this.date,
    required this.time,
  });

  factory Product.fromJson(Map<String,dynamic> product)
  => Product(pname: product['pname'],
        description: product['description'],
        price: product['price'],
        image: product['image'],
        category: product['category'],
        pid: product['pid'],
        date: product['date'],
        time: product['time'],
    );
}