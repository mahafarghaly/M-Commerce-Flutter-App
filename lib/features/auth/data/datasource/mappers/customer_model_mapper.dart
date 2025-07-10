
import '../../../domain/entities/customer.dart';
import '../../models/customer_model.dart';

extension CustomerModelMapper on CustomerModel {
  Customer toEntity() {
    return Customer(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      password: password,
      ordersCount: ordersCount,
      state: state,
      note: note
    );
  }

  static CustomerModel fromEntity(Customer entity) {
    return CustomerModel(
      id: entity.id,
      email: entity.email,
      firstName: entity.firstName,
      lastName: entity.lastName,
      password: entity.password,
      ordersCount: entity.ordersCount,
      state: entity.state,
      note: entity.note
    );
  }
}
