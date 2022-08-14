// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$Asset _$Fragment$AssetFromJson(Map<String, dynamic> json) =>
    Fragment$Asset(
      id: json['id'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      name: json['name'] as String,
      preview: json['preview'] as String,
      focalPoint: json['focalPoint'] == null
          ? null
          : Fragment$Asset$focalPoint.fromJson(
              json['focalPoint'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$AssetToJson(Fragment$Asset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'name': instance.name,
      'preview': instance.preview,
      'focalPoint': instance.focalPoint?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$Asset$focalPoint _$Fragment$Asset$focalPointFromJson(
        Map<String, dynamic> json) =>
    Fragment$Asset$focalPoint(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Asset$focalPointToJson(
        Fragment$Asset$focalPoint instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      '__typename': instance.$__typename,
    };

Variables$Query$GetAllProducts _$Variables$Query$GetAllProductsFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$GetAllProducts(
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Variables$Query$GetAllProductsToJson(
        Variables$Query$GetAllProducts instance) =>
    <String, dynamic>{
      'take': instance.take,
    };

Query$GetAllProducts _$Query$GetAllProductsFromJson(
        Map<String, dynamic> json) =>
    Query$GetAllProducts(
      products: Query$GetAllProducts$products.fromJson(
          json['products'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetAllProductsToJson(
        Query$GetAllProducts instance) =>
    <String, dynamic>{
      'products': instance.products.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products _$Query$GetAllProducts$productsFromJson(
        Map<String, dynamic> json) =>
    Query$GetAllProducts$products(
      items: (json['items'] as List<dynamic>)
          .map((e) => Query$GetAllProducts$products$items.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetAllProducts$productsToJson(
        Query$GetAllProducts$products instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items
    _$Query$GetAllProducts$products$itemsFromJson(Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items(
          id: json['id'] as String,
          name: json['name'] as String,
          slug: json['slug'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Query$GetAllProducts$products$items$featuredAsset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          assets: (json['assets'] as List<dynamic>)
              .map((e) => Query$GetAllProducts$products$items$assets.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          collections: (json['collections'] as List<dynamic>)
              .map((e) =>
                  Query$GetAllProducts$products$items$collections.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllProducts$products$itemsToJson(
        Query$GetAllProducts$products$items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'featuredAsset': instance.featuredAsset?.toJson(),
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'collections': instance.collections.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items$featuredAsset
    _$Query$GetAllProducts$products$items$featuredAssetFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items$featuredAsset(
          name: json['name'] as String,
          id: json['id'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllProducts$products$items$featuredAssetToJson(
        Query$GetAllProducts$products$items$featuredAsset instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'preview': instance.preview,
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items$assets
    _$Query$GetAllProducts$products$items$assetsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items$assets(
          id: json['id'] as String,
          name: json['name'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllProducts$products$items$assetsToJson(
        Query$GetAllProducts$products$items$assets instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'preview': instance.preview,
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items$collections
    _$Query$GetAllProducts$products$items$collectionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items$collections(
          id: json['id'] as String,
          name: json['name'] as String,
          assets: (json['assets'] as List<dynamic>)
              .map((e) => Query$GetAllProducts$products$items$collections$assets
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllProducts$products$items$collectionsToJson(
        Query$GetAllProducts$products$items$collections instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items$collections$assets
    _$Query$GetAllProducts$products$items$collections$assetsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items$collections$assets(
          id: json['id'] as String,
          name: json['name'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetAllProducts$products$items$collections$assetsToJson(
            Query$GetAllProducts$products$items$collections$assets instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'preview': instance.preview,
          '__typename': instance.$__typename,
        };

Variables$Query$SearchProducts _$Variables$Query$SearchProductsFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$SearchProducts(
      input: Input$SearchInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Query$SearchProductsToJson(
        Variables$Query$SearchProducts instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

Query$SearchProducts _$Query$SearchProductsFromJson(
        Map<String, dynamic> json) =>
    Query$SearchProducts(
      search: Query$SearchProducts$search.fromJson(
          json['search'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchProductsToJson(
        Query$SearchProducts instance) =>
    <String, dynamic>{
      'search': instance.search.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search _$Query$SearchProducts$searchFromJson(
        Map<String, dynamic> json) =>
    Query$SearchProducts$search(
      items: (json['items'] as List<dynamic>)
          .map((e) => Query$SearchProducts$search$items.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      totalItems: json['totalItems'] as int,
      facetValues: (json['facetValues'] as List<dynamic>)
          .map((e) => Query$SearchProducts$search$facetValues.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchProducts$searchToJson(
        Query$SearchProducts$search instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalItems': instance.totalItems,
      'facetValues': instance.facetValues.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$items _$Query$SearchProducts$search$itemsFromJson(
        Map<String, dynamic> json) =>
    Query$SearchProducts$search$items(
      productId: json['productId'] as String,
      slug: json['slug'] as String,
      productName: json['productName'] as String,
      description: json['description'] as String,
      priceWithTax: Query$SearchProducts$search$items$priceWithTax.fromJson(
          json['priceWithTax'] as Map<String, dynamic>),
      productAsset: json['productAsset'] == null
          ? null
          : Query$SearchProducts$search$items$productAsset.fromJson(
              json['productAsset'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchProducts$search$itemsToJson(
        Query$SearchProducts$search$items instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'slug': instance.slug,
      'productName': instance.productName,
      'description': instance.description,
      'priceWithTax': instance.priceWithTax.toJson(),
      'productAsset': instance.productAsset?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$items$priceWithTax
    _$Query$SearchProducts$search$items$priceWithTaxFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$items$priceWithTax(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchProducts$search$items$priceWithTaxToJson(
        Query$SearchProducts$search$items$priceWithTax instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$items$priceWithTax$$PriceRange
    _$Query$SearchProducts$search$items$priceWithTax$$PriceRangeFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$items$priceWithTax$$PriceRange(
          $__typename: json['__typename'] as String,
          min: json['min'] as int,
          max: json['max'] as int,
        );

Map<String,
    dynamic> _$Query$SearchProducts$search$items$priceWithTax$$PriceRangeToJson(
        Query$SearchProducts$search$items$priceWithTax$$PriceRange instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'min': instance.min,
      'max': instance.max,
    };

Query$SearchProducts$search$items$productAsset
    _$Query$SearchProducts$search$items$productAssetFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$items$productAsset(
          id: json['id'] as String,
          preview: json['preview'] as String,
          focalPoint: json['focalPoint'] == null
              ? null
              : Query$SearchProducts$search$items$productAsset$focalPoint
                  .fromJson(json['focalPoint'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchProducts$search$items$productAssetToJson(
        Query$SearchProducts$search$items$productAsset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'preview': instance.preview,
      'focalPoint': instance.focalPoint?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$items$productAsset$focalPoint
    _$Query$SearchProducts$search$items$productAsset$focalPointFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$items$productAsset$focalPoint(
          x: (json['x'] as num).toDouble(),
          y: (json['y'] as num).toDouble(),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$SearchProducts$search$items$productAsset$focalPointToJson(
        Query$SearchProducts$search$items$productAsset$focalPoint instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$facetValues
    _$Query$SearchProducts$search$facetValuesFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$facetValues(
          count: json['count'] as int,
          facetValue:
              Query$SearchProducts$search$facetValues$facetValue.fromJson(
                  json['facetValue'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchProducts$search$facetValuesToJson(
        Query$SearchProducts$search$facetValues instance) =>
    <String, dynamic>{
      'count': instance.count,
      'facetValue': instance.facetValue.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$facetValues$facetValue
    _$Query$SearchProducts$search$facetValues$facetValueFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$facetValues$facetValue(
          id: json['id'] as String,
          name: json['name'] as String,
          facet:
              Query$SearchProducts$search$facetValues$facetValue$facet.fromJson(
                  json['facet'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchProducts$search$facetValues$facetValueToJson(
        Query$SearchProducts$search$facetValues$facetValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'facet': instance.facet.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$facetValues$facetValue$facet
    _$Query$SearchProducts$search$facetValues$facetValue$facetFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$facetValues$facetValue$facet(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$SearchProducts$search$facetValues$facetValue$facetToJson(
        Query$SearchProducts$search$facetValues$facetValue$facet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Query$GetProductDetail _$Variables$Query$GetProductDetailFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$GetProductDetail(
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$Variables$Query$GetProductDetailToJson(
        Variables$Query$GetProductDetail instance) =>
    <String, dynamic>{
      'slug': instance.slug,
    };

Query$GetProductDetail _$Query$GetProductDetailFromJson(
        Map<String, dynamic> json) =>
    Query$GetProductDetail(
      product: json['product'] == null
          ? null
          : Query$GetProductDetail$product.fromJson(
              json['product'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetProductDetailToJson(
        Query$GetProductDetail instance) =>
    <String, dynamic>{
      'product': instance.product?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product _$Query$GetProductDetail$productFromJson(
        Map<String, dynamic> json) =>
    Query$GetProductDetail$product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => Query$GetProductDetail$product$variants.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      featuredAsset: json['featuredAsset'] == null
          ? null
          : Fragment$Asset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>),
      assets: (json['assets'] as List<dynamic>)
          .map((e) => Fragment$Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
      collections: (json['collections'] as List<dynamic>)
          .map((e) => Query$GetProductDetail$product$collections.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetProductDetail$productToJson(
        Query$GetProductDetail$product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'featuredAsset': instance.featuredAsset?.toJson(),
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'collections': instance.collections.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product$variants
    _$Query$GetProductDetail$product$variantsFromJson(
            Map<String, dynamic> json) =>
        Query$GetProductDetail$product$variants(
          id: json['id'] as String,
          name: json['name'] as String,
          options: (json['options'] as List<dynamic>)
              .map((e) =>
                  Query$GetProductDetail$product$variants$options.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          price: json['price'] as int,
          priceWithTax: json['priceWithTax'] as int,
          sku: json['sku'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetProductDetail$product$variantsToJson(
        Query$GetProductDetail$product$variants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'options': instance.options.map((e) => e.toJson()).toList(),
      'price': instance.price,
      'priceWithTax': instance.priceWithTax,
      'sku': instance.sku,
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product$variants$options
    _$Query$GetProductDetail$product$variants$optionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetProductDetail$product$variants$options(
          code: json['code'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetProductDetail$product$variants$optionsToJson(
        Query$GetProductDetail$product$variants$options instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product$collections
    _$Query$GetProductDetail$product$collectionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetProductDetail$product$collections(
          id: json['id'] as String,
          slug: json['slug'] as String,
          breadcrumbs: (json['breadcrumbs'] as List<dynamic>)
              .map((e) => Query$GetProductDetail$product$collections$breadcrumbs
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetProductDetail$product$collectionsToJson(
        Query$GetProductDetail$product$collections instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'breadcrumbs': instance.breadcrumbs.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product$collections$breadcrumbs
    _$Query$GetProductDetail$product$collections$breadcrumbsFromJson(
            Map<String, dynamic> json) =>
        Query$GetProductDetail$product$collections$breadcrumbs(
          id: json['id'] as String,
          name: json['name'] as String,
          slug: json['slug'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetProductDetail$product$collections$breadcrumbsToJson(
            Query$GetProductDetail$product$collections$breadcrumbs instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'slug': instance.slug,
          '__typename': instance.$__typename,
        };
