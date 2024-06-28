// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookingRepositoryHash() => r'5a6a0a0082e752c1678c7087a290533fc5f3b0e5';

/// See also [bookingRepository].
@ProviderFor(bookingRepository)
final bookingRepositoryProvider =
    AutoDisposeProvider<BookingRepository>.internal(
  bookingRepository,
  name: r'bookingRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bookingRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BookingRepositoryRef = AutoDisposeProviderRef<BookingRepository>;
String _$bookMealHash() => r'd59f8f342ca5f071fe9dfe728511b0b256b1fc26';

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

/// See also [bookMeal].
@ProviderFor(bookMeal)
const bookMealProvider = BookMealFamily();

/// See also [bookMeal].
class BookMealFamily extends Family<AsyncValue<void>> {
  /// See also [bookMeal].
  const BookMealFamily();

  /// See also [bookMeal].
  BookMealProvider call(
    String mealId,
    String userId,
  ) {
    return BookMealProvider(
      mealId,
      userId,
    );
  }

  @override
  BookMealProvider getProviderOverride(
    covariant BookMealProvider provider,
  ) {
    return call(
      provider.mealId,
      provider.userId,
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
  String? get name => r'bookMealProvider';
}

/// See also [bookMeal].
class BookMealProvider extends AutoDisposeFutureProvider<void> {
  /// See also [bookMeal].
  BookMealProvider(
    String mealId,
    String userId,
  ) : this._internal(
          (ref) => bookMeal(
            ref as BookMealRef,
            mealId,
            userId,
          ),
          from: bookMealProvider,
          name: r'bookMealProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookMealHash,
          dependencies: BookMealFamily._dependencies,
          allTransitiveDependencies: BookMealFamily._allTransitiveDependencies,
          mealId: mealId,
          userId: userId,
        );

  BookMealProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mealId,
    required this.userId,
  }) : super.internal();

  final String mealId;
  final String userId;

  @override
  Override overrideWith(
    FutureOr<void> Function(BookMealRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookMealProvider._internal(
        (ref) => create(ref as BookMealRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mealId: mealId,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _BookMealProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookMealProvider &&
        other.mealId == mealId &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mealId.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookMealRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `mealId` of this provider.
  String get mealId;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _BookMealProviderElement extends AutoDisposeFutureProviderElement<void>
    with BookMealRef {
  _BookMealProviderElement(super.provider);

  @override
  String get mealId => (origin as BookMealProvider).mealId;
  @override
  String get userId => (origin as BookMealProvider).userId;
}

String _$cancelBookingHash() => r'b6660d87c6c1b9d8e6a2a0dd19832d04f3c9e1e9';

/// See also [cancelBooking].
@ProviderFor(cancelBooking)
const cancelBookingProvider = CancelBookingFamily();

/// See also [cancelBooking].
class CancelBookingFamily extends Family<AsyncValue<void>> {
  /// See also [cancelBooking].
  const CancelBookingFamily();

  /// See also [cancelBooking].
  CancelBookingProvider call(
    String bookingId,
  ) {
    return CancelBookingProvider(
      bookingId,
    );
  }

  @override
  CancelBookingProvider getProviderOverride(
    covariant CancelBookingProvider provider,
  ) {
    return call(
      provider.bookingId,
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
  String? get name => r'cancelBookingProvider';
}

/// See also [cancelBooking].
class CancelBookingProvider extends AutoDisposeFutureProvider<void> {
  /// See also [cancelBooking].
  CancelBookingProvider(
    String bookingId,
  ) : this._internal(
          (ref) => cancelBooking(
            ref as CancelBookingRef,
            bookingId,
          ),
          from: cancelBookingProvider,
          name: r'cancelBookingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cancelBookingHash,
          dependencies: CancelBookingFamily._dependencies,
          allTransitiveDependencies:
              CancelBookingFamily._allTransitiveDependencies,
          bookingId: bookingId,
        );

  CancelBookingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookingId,
  }) : super.internal();

  final String bookingId;

  @override
  Override overrideWith(
    FutureOr<void> Function(CancelBookingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CancelBookingProvider._internal(
        (ref) => create(ref as CancelBookingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookingId: bookingId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CancelBookingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CancelBookingProvider && other.bookingId == bookingId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookingId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CancelBookingRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `bookingId` of this provider.
  String get bookingId;
}

class _CancelBookingProviderElement
    extends AutoDisposeFutureProviderElement<void> with CancelBookingRef {
  _CancelBookingProviderElement(super.provider);

  @override
  String get bookingId => (origin as CancelBookingProvider).bookingId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
