// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsControllerHash() =>
    r'b0fff71a94f11cb2920497730d0d81b3abb8ee99';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProductsController
    extends BuildlessAutoDisposeAsyncNotifier<ApiResult<List<ProductEntity>>> {
  late final String? vendor;

  FutureOr<ApiResult<List<ProductEntity>>> build(String? vendor);
}

/// See also [ProductsController].
@ProviderFor(ProductsController)
const productsControllerProvider = ProductsControllerFamily();

/// See also [ProductsController].
class ProductsControllerFamily
    extends Family<AsyncValue<ApiResult<List<ProductEntity>>>> {
  /// See also [ProductsController].
  const ProductsControllerFamily();

  /// See also [ProductsController].
  ProductsControllerProvider call(String? vendor) {
    return ProductsControllerProvider(vendor);
  }

  @override
  ProductsControllerProvider getProviderOverride(
    covariant ProductsControllerProvider provider,
  ) {
    return call(provider.vendor);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productsControllerProvider';
}

/// See also [ProductsController].
class ProductsControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ProductsController,
          ApiResult<List<ProductEntity>>
        > {
  /// See also [ProductsController].
  ProductsControllerProvider(String? vendor)
    : this._internal(
        () => ProductsController()..vendor = vendor,
        from: productsControllerProvider,
        name: r'productsControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$productsControllerHash,
        dependencies: ProductsControllerFamily._dependencies,
        allTransitiveDependencies:
            ProductsControllerFamily._allTransitiveDependencies,
        vendor: vendor,
      );

  ProductsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vendor,
  }) : super.internal();

  final String? vendor;

  @override
  FutureOr<ApiResult<List<ProductEntity>>> runNotifierBuild(
    covariant ProductsController notifier,
  ) {
    return notifier.build(vendor);
  }

  @override
  Override overrideWith(ProductsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProductsControllerProvider._internal(
        () => create()..vendor = vendor,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vendor: vendor,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ProductsController,
    ApiResult<List<ProductEntity>>
  >
  createElement() {
    return _ProductsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsControllerProvider && other.vendor == vendor;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vendor.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductsControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ApiResult<List<ProductEntity>>> {
  /// The parameter `vendor` of this provider.
  String? get vendor;
}

class _ProductsControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ProductsController,
          ApiResult<List<ProductEntity>>
        >
    with ProductsControllerRef {
  _ProductsControllerProviderElement(super.provider);

  @override
  String? get vendor => (origin as ProductsControllerProvider).vendor;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
