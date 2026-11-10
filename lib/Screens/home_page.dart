import 'package:ecomerce_advanced/Services/api_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 99, 36, 137),
        centerTitle: true,
        title: Text(
          "Products",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: ApiServices.getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("Error ${snapshot.error}");
          }
          final products = snapshot.data!;

          return GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return Expanded(
                // to show the details
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 10.0,
                    child: SizedBox(
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            Text(
                              product.title,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(200),
                                ),
                                child: Image.network(
                                  product.imgUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                product.price.toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
