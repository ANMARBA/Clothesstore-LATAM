import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:clothesstore_latam/providers/catalogue_products/catalogue_products.dart';

class SliverAppBarCatalogue extends StatelessWidget {
  final BuildContext provider;
  const SliverAppBarCatalogue({
    Key? key,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var catalogueProductsProvider =
        Provider.of<CatalogueProductsProvider>(provider);
    return SliverAppBar(
      flexibleSpace: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Text(
              'Buscar',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.white,
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Busca productos, marcas y más',
                prefixIconConstraints: BoxConstraints(minWidth: 60),
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.all(20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
              onSubmitted: (search) =>
                  catalogueProductsProvider.searchProducts(search),
            ),
          ),
        ],
      ),
      toolbarHeight: 130,
      pinned: true,
      backgroundColor: Colors.grey[200],
      shadowColor: Colors.transparent,
    );
  }
}
