import 'package:flutter/material.dart';
import 'package:modelhandling/screen/chat_screen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://mtuorttyfjjojntbqozl.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im10dW9ydHR5Zmpqb2pudGJxb3psIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1NzUzNjgsImV4cCI6MjA4ODE1MTM2OH0.Z_dHKEcDMhiWFSG7QLSb9nYGWpSPy-MvVoL0kNgiCeU",
  );

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // app root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ChatPage(username: 'Chris2per',),
    );
  }
}