import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';

// Tell mockito to generate a MockClient
@GenerateMocks([http.Client])
import 'albumrepo_test.mocks.dart';
