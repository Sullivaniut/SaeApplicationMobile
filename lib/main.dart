import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://qlyrxrjwrkvpmgdibzbj.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseXJ4cmp3cmt2cG1nZGliemJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAzMTcwNDAsImV4cCI6MjAyNTg5MzA0MH0.aPC10mnTdvEHMhhunFHVye7msR3nJb0U9EIg_a3wEpc',
  );
  runApp(const MyApp());
}

// Get a reference your Supabase client
final base = Supabase.instance.client;