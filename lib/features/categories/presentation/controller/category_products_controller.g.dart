// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_products_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoryProductsControllerHash() =>
    r'b19eae8e1b34afbe96edbff6a4ce65a869d9c590';

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

abstract class _$CategoryProductsController
    extends BuildlessAutoDisposeAsyncNotifier<ApiResult<List<ProductEntity>>> {
  late final int id;

  FutureOr<ApiResult<List<ProductEntity>>> build(int id);
}

/// See also [CategoryProductsController].
@ProviderFor(CategoryProductsController)
const categoryProductsControllerProvider = CategoryProductsControllerFamily();

/// See also [CategoryProductsController].
class CategoryProductsControllerFamily
    extends Family<AsyncValue<ApiResult<List<ProductEntity>>>> {
  /// See also [CategoryProductsController].
  const CategoryProductsControllerFamily();

  /// See also [CategoryProductsController].
  CategoryProductsControllerProvider call(int id) {
    return CategoryProductsControllerProvider(id);
  }

  @override
  CategoryProductsControllerProvider getProviderOverride(
    covariant CategoryProductsControllerProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'categoryProductsControllerProvider';
}

/// See also [CategoryProductsController].
class CategoryProductsControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          CategoryProductsController,
          ApiResult<List<ProductEntity>>
        > {
  /// See also [CategoryProductsController].
  CategoryProductsControllerProvider(int id)
    : this._internal(
        () => CategoryProductsController()..id = id,
        from: categoryProductsControllerProvider,
        name: r'categoryProductsControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$categoryProductsControllerHash,
        dependencies: CategoryProductsControllerFamily._dependencies,
        allTransitiveDependencies:
            CategoryProductsControllerFamily._allTransitiveDependencies,
        id: id,
      );

  CategoryProductsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<ApiResult<List<ProductEntity>>> runNotifierBuild(
    covariant CategoryProductsController notifier,
  ) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(CategoryProductsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CategoryProductsControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    CategoryProductsController,
    ApiResult<List<ProductEntity>>
  >
  createElement() {
    return _CategoryProductsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryProductsControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CategoryProductsControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ApiResult<List<ProductEntity>>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _CategoryProductsControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          CategoryProductsController,
          ApiResult<List<ProductEntity>>
        >
    with CategoryProductsControllerRef {
  _CategoryProductsControllerProviderElement(super.provider);

  @override
  int get id => (origin as CategoryProductsControllerProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
