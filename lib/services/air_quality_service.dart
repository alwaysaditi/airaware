// Placeholder for fetching EPA data (you’ll later connect this to the API)
class AirQualityService {
  Future<Map<String, dynamic>> getCurrentAQ(String city) async {
    // For now, return mock data
    await Future.delayed(Duration(seconds: 1));
    return {
      'location': city,
      'pm25': 12.0,
      'no2': 18.0,
      'status': 'Good',
    };
  }
}
