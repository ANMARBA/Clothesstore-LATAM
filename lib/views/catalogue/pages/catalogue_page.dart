import 'package:clothesstore_latam/views/home/pages/products_home_page.dart';
import 'package:clothesstore_latam/views/home/widgets/carousel_home.dart';
import 'package:clothesstore_latam/views/home/widgets/main_banner_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;
import 'package:clothesstore_latam/views/catalogue/catalogue.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CatalogueProductsProvider>(
      create: (_) => CatalogueProductsProvider(),
      builder: (BuildContext contextProvider, _) {
        return SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext sliverContext, __) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                      sliverContext),
                  sliver: SliverAppBarCatalogue(provider: contextProvider),
                ),
              ];
            },
            body: Builder(
              builder: (BuildContext context) {
                return CustomScrollView(
                  slivers: <Widget>[
                    SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                    ),
                    SliverFillRemaining(
                      child: Center(
                        child: SingleChildScrollView(
                          child: FutureBuilder<List<Product>>(
                            future: Provider.of<CatalogueProductsProvider>(
                                    contextProvider)
                                .viewProducts(),
                            builder: (_, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                final List<Product> products = snapshot.data;
                                if (products.isNotEmpty) {
                                  return ListView.separated(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    separatorBuilder: (context, index) =>
                                        const Divider(
                                            color: Colors.white, height: 15),
                                    itemCount: products.length,
                                    itemBuilder: (__, int indexProduct) =>
                                        ViewImageProduct(
                                            product: products[indexProduct]),
                                  );
                                } else {
                                  return SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: const Center(
                                      child:
                                          Text('No hay productos disponibles.'),
                                    ),
                                  );
                                }
                              } else {
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: const Center(
                                      child:
                                          CircularProgressIndicator.adaptive()),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
