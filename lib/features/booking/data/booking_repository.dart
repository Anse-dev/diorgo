import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'booking_repository.g.dart';

class BookingRepository {
  BookingRepository(this.client);
  final http.Client client;

  Future<void> bookMeal(String mealId, String userId) async {
    final response = await client.post(
      Uri.parse('https://api.example.com/bookMeal'),
      body: {'mealId': mealId, 'userId': userId},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to book meal');
    }
  }

  Future<void> cancelBooking(String bookingId) async {
    final response = await client.delete(
      Uri.parse('https://api.example.com/cancelBooking/$bookingId'),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to cancel booking');
    }
  }
}

@riverpod
BookingRepository bookingRepository(BookingRepositoryRef ref) {
  return BookingRepository(http.Client());
}

@riverpod
Future<void> bookMeal(BookMealRef ref, String mealId, String userId) {
  return ref.watch(bookingRepositoryProvider).bookMeal(mealId, userId);
}

@riverpod
Future<void> cancelBooking(CancelBookingRef ref, String bookingId) {
  return ref.watch(bookingRepositoryProvider).cancelBooking(bookingId);
}
