// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$menuRepositoryHash() => r'75eba007ad3f2415614fb348ae6a831c3e633a28';

/// See also [menuRepository].
@ProviderFor(menuRepository)
final menuRepositoryProvider = AutoDisposeProvider<MenuRepository>.internal(
  menuRepository,
  name: r'menuRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$menuRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MenuRepositoryRef = AutoDisposeProviderRef<MenuRepository>;
String _$updateMenuItemHash() => r'eae0ca79e87a02de7cb26958ba40dacd54dc7417';

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

/// See also [updateMenuItem].
@ProviderFor(updateMenuItem)
const updateMenuItemProvider = UpdateMenuItemFamily();

/// See also [updateMenuItem].
class UpdateMenuItemFamily extends Family<AsyncValue<void>> {
  /// See also [updateMenuItem].
  const UpdateMenuItemFamily();

  /// See also [updateMenuItem].
  UpdateMenuItemProvider call(
    MenuItem menuItem,
  ) {
    return UpdateMenuItemProvider(
      menuItem,
    );
  }

  @override
  UpdateMenuItemProvider getProviderOverride(
    covariant UpdateMenuItemProvider provider,
  ) {
    return call(
      provider.menuItem,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateMenuItemProvider';
}

/// See also [updateMenuItem].
class UpdateMenuItemProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateMenuItem].
  UpdateMenuItemProvider(
    MenuItem menuItem,
  ) : this._internal(
          (ref) => updateMenuItem(
            ref as UpdateMenuItemRef,
            menuItem,
          ),
          from: updateMenuItemProvider,
          name: r'updateMenuItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateMenuItemHash,
          dependencies: UpdateMenuItemFamily._dependencies,
          allTransitiveDependencies:
              UpdateMenuItemFamily._allTransitiveDependencies,
          menuItem: menuItem,
        );

  UpdateMenuItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.menuItem,
  }) : super.internal();

  final MenuItem menuItem;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateMenuItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateMenuItemProvider._internal(
        (ref) => create(ref as UpdateMenuItemRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        menuItem: menuItem,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateMenuItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateMenuItemProvider && other.menuItem == menuItem;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, menuItem.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateMenuItemRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `menuItem` of this provider.
  MenuItem get menuItem;
}

class _UpdateMenuItemProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateMenuItemRef {
  _UpdateMenuItemProviderElement(super.provider);

  @override
  MenuItem get menuItem => (origin as UpdateMenuItemProvider).menuItem;
}

String _$deleteMenuItemHash() => r'f36f2a53c6a31efa5d0744de363f60d0995bc625';

/// See also [deleteMenuItem].
@ProviderFor(deleteMenuItem)
const deleteMenuItemProvider = DeleteMenuItemFamily();

/// See also [deleteMenuItem].
class DeleteMenuItemFamily extends Family<AsyncValue<void>> {
  /// See also [deleteMenuItem].
  const DeleteMenuItemFamily();

  /// See also [deleteMenuItem].
  DeleteMenuItemProvider call(
    MenuItem menuItem,
  ) {
    return DeleteMenuItemProvider(
      menuItem,
    );
  }

  @override
  DeleteMenuItemProvider getProviderOverride(
    covariant DeleteMenuItemProvider provider,
  ) {
    return call(
      provider.menuItem,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteMenuItemProvider';
}

/// See also [deleteMenuItem].
class DeleteMenuItemProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteMenuItem].
  DeleteMenuItemProvider(
    MenuItem menuItem,
  ) : this._internal(
          (ref) => deleteMenuItem(
            ref as DeleteMenuItemRef,
            menuItem,
          ),
          from: deleteMenuItemProvider,
          name: r'deleteMenuItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteMenuItemHash,
          dependencies: DeleteMenuItemFamily._dependencies,
          allTransitiveDependencies:
              DeleteMenuItemFamily._allTransitiveDependencies,
          menuItem: menuItem,
        );

  DeleteMenuItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.menuItem,
  }) : super.internal();

  final MenuItem menuItem;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteMenuItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteMenuItemProvider._internal(
        (ref) => create(ref as DeleteMenuItemRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        menuItem: menuItem,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteMenuItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteMenuItemProvider && other.menuItem == menuItem;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, menuItem.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteMenuItemRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `menuItem` of this provider.
  MenuItem get menuItem;
}

class _DeleteMenuItemProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteMenuItemRef {
  _DeleteMenuItemProviderElement(super.provider);

  @override
  MenuItem get menuItem => (origin as DeleteMenuItemProvider).menuItem;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
