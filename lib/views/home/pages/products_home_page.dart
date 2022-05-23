import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:clothesstore_latam/commons/widgets/view_product.dart';
import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;
import 'package:clothesstore_latam/providers/providers.dart'
    show HomeProductsProvider;

class ProductsHome extends StatelessWidget {
  const ProductsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'PRODUCTOS MÁS BUSCADOS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeProductsProvider(),
          builder: (BuildContext contextProvider, __) {
            var homeProductsProvider =
                Provider.of<HomeProductsProvider>(contextProvider);
            return FutureBuilder<List<Product>>(
              future: homeProductsProvider.viewProducts(),
              builder: (_, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  final List<Product> products = snapshot.data;
                  if (products.isNotEmpty) {
                    return Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        separatorBuilder: (context, index) =>
                            const Divider(color: Colors.black),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: products.length,
                        itemBuilder: (__, int indexProduct) =>
                            ViewProduct(product: products[indexProduct]),
                      ),
                    );
                  } else {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: const Center(
                        child: Text('No hay productos disponibles.'),
                      ),
                    );
                  }
                } else {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: const Center(
                        child: CircularProgressIndicator.adaptive()),
                  );
                }
              },
            );
          },
        ),
      ],
    );
  }
}
