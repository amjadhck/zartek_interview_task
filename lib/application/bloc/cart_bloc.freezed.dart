// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  Initialize initial() {
    return const Initialize();
  }

  ClearCart clearcart() {
    return const ClearCart();
  }

  AddToCart addtocart() {
    return const AddToCart();
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearcart,
    required TResult Function() addtocart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearcart,
    TResult Function()? addtocart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearcart,
    TResult Function()? addtocart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initial,
    required TResult Function(ClearCart value) clearcart,
    required TResult Function(AddToCart value) addtocart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initial,
    TResult Function(ClearCart value)? clearcart,
    TResult Function(AddToCart value)? addtocart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initial,
    TResult Function(ClearCart value)? clearcart,
    TResult Function(AddToCart value)? addtocart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'CartEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearcart,
    required TResult Function() addtocart,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearcart,
    TResult Function()? addtocart,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearcart,
    TResult Function()? addtocart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initial,
    required TResult Function(ClearCart value) clearcart,
    required TResult Function(AddToCart value) addtocart,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initial,
    TResult Function(ClearCart value)? clearcart,
    TResult Function(AddToCart value)? addtocart,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initial,
    TResult Function(ClearCart value)? clearcart,
    TResult Function(AddToCart value)? addtocart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initialize implements CartEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $ClearCartCopyWith<$Res> {
  factory $ClearCartCopyWith(ClearCart value, $Res Function(ClearCart) then) =
      _$ClearCartCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $ClearCartCopyWith<$Res> {
  _$ClearCartCopyWithImpl(ClearCart _value, $Res Function(ClearCart) _then)
      : super(_value, (v) => _then(v as ClearCart));

  @override
  ClearCart get _value => super._value as ClearCart;
}

/// @nodoc

class _$ClearCart implements ClearCart {
  const _$ClearCart();

  @override
  String toString() {
    return 'CartEvent.clearcart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearcart,
    required TResult Function() addtocart,
  }) {
    return clearcart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearcart,
    TResult Function()? addtocart,
  }) {
    return clearcart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearcart,
    TResult Function()? addtocart,
    required TResult orElse(),
  }) {
    if (clearcart != null) {
      return clearcart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initial,
    required TResult Function(ClearCart value) clearcart,
    required TResult Function(AddToCart value) addtocart,
  }) {
    return clearcart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initial,
    TResult Function(ClearCart value)? clearcart,
    TResult Function(AddToCart value)? addtocart,
  }) {
    return clearcart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initial,
    TResult Function(ClearCart value)? clearcart,
    TResult Function(AddToCart value)? addtocart,
    required TResult orElse(),
  }) {
    if (clearcart != null) {
      return clearcart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartEvent {
  const factory ClearCart() = _$ClearCart;
}

/// @nodoc
abstract class $AddToCartCopyWith<$Res> {
  factory $AddToCartCopyWith(AddToCart value, $Res Function(AddToCart) then) =
      _$AddToCartCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddToCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $AddToCartCopyWith<$Res> {
  _$AddToCartCopyWithImpl(AddToCart _value, $Res Function(AddToCart) _then)
      : super(_value, (v) => _then(v as AddToCart));

  @override
  AddToCart get _value => super._value as AddToCart;
}

/// @nodoc

class _$AddToCart implements AddToCart {
  const _$AddToCart();

  @override
  String toString() {
    return 'CartEvent.addtocart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddToCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearcart,
    required TResult Function() addtocart,
  }) {
    return addtocart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearcart,
    TResult Function()? addtocart,
  }) {
    return addtocart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearcart,
    TResult Function()? addtocart,
    required TResult orElse(),
  }) {
    if (addtocart != null) {
      return addtocart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initial,
    required TResult Function(ClearCart value) clearcart,
    required TResult Function(AddToCart value) addtocart,
  }) {
    return addtocart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initial,
    TResult Function(ClearCart value)? clearcart,
    TResult Function(AddToCart value)? addtocart,
  }) {
    return addtocart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initial,
    TResult Function(ClearCart value)? clearcart,
    TResult Function(AddToCart value)? addtocart,
    required TResult orElse(),
  }) {
    if (addtocart != null) {
      return addtocart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements CartEvent {
  const factory AddToCart() = _$AddToCart;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _Initial call(
      {required Map<String, CartItem> cartItems,
      required VoidCallback addToCart,
      required int itemCount,
      required int productCount,
      required double totalAmount,
      required bool isLoading,
      required bool isError}) {
    return _Initial(
      cartItems: cartItems,
      addToCart: addToCart,
      itemCount: itemCount,
      productCount: productCount,
      totalAmount: totalAmount,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  Map<String, CartItem> get cartItems => throw _privateConstructorUsedError;
  VoidCallback get addToCart => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, CartItem> cartItems,
      VoidCallback addToCart,
      int itemCount,
      int productCount,
      double totalAmount,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? addToCart = freezed,
    Object? itemCount = freezed,
    Object? productCount = freezed,
    Object? totalAmount = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<String, CartItem>,
      addToCart: addToCart == freezed
          ? _value.addToCart
          : addToCart // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: productCount == freezed
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, CartItem> cartItems,
      VoidCallback addToCart,
      int itemCount,
      int productCount,
      double totalAmount,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? addToCart = freezed,
    Object? itemCount = freezed,
    Object? productCount = freezed,
    Object? totalAmount = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_Initial(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<String, CartItem>,
      addToCart: addToCart == freezed
          ? _value.addToCart
          : addToCart // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      productCount: productCount == freezed
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.cartItems,
      required this.addToCart,
      required this.itemCount,
      required this.productCount,
      required this.totalAmount,
      required this.isLoading,
      required this.isError});

  @override
  final Map<String, CartItem> cartItems;
  @override
  final VoidCallback addToCart;
  @override
  final int itemCount;
  @override
  final int productCount;
  @override
  final double totalAmount;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'CartState(cartItems: $cartItems, addToCart: $addToCart, itemCount: $itemCount, productCount: $productCount, totalAmount: $totalAmount, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.cartItems, cartItems) &&
            (identical(other.addToCart, addToCart) ||
                other.addToCart == addToCart) &&
            const DeepCollectionEquality().equals(other.itemCount, itemCount) &&
            const DeepCollectionEquality()
                .equals(other.productCount, productCount) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cartItems),
      addToCart,
      const DeepCollectionEquality().hash(itemCount),
      const DeepCollectionEquality().hash(productCount),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {required Map<String, CartItem> cartItems,
      required VoidCallback addToCart,
      required int itemCount,
      required int productCount,
      required double totalAmount,
      required bool isLoading,
      required bool isError}) = _$_Initial;

  @override
  Map<String, CartItem> get cartItems;
  @override
  VoidCallback get addToCart;
  @override
  int get itemCount;
  @override
  int get productCount;
  @override
  double get totalAmount;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
