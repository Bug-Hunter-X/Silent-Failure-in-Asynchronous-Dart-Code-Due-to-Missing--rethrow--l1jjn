```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions. Rethrow to propagate the error.
    print('Error: $e');
    rethrow; 
  }
}

void main() async {
  try {
    await fetchData();
    print("Data fetched successfully");
  } catch (e) {
    print("An error occurred: $e");
  }
}
```