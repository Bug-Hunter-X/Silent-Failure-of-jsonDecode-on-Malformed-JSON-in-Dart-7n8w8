```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  This is where the error happens if the JSON is malformed
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle errors
    print('Error: $e');
    rethrow; // Re-throw to be handled by higher layers.
  }
}
```