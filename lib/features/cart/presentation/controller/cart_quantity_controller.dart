import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_quantity_controller.g.dart';

@riverpod
class CartQuantity extends _$CartQuantity {
  @override
  Map<int, int> build() {
    return {};
  }

  void increase(int variantId, int maxQuantity) {
    final current = state[variantId] ?? 1;
    if (current < maxQuantity) {
      state = {
        ...state,
        variantId: current + 1,
      };
    }
  }

  void decrease(int variantId) {
    final current = state[variantId] ?? 1;
    if (current > 1) {
      state = {
        ...state,
        variantId: current - 1,
      };
    }
  }

  int getQuantity(int variantId) {
    return state[variantId] ?? 1;
  }
}
