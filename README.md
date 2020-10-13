# Bloc_Pattern

A new Flutter project using Bloc pattern.

A BLoC stands as a middleman between a source of data in your app (e.g an API response) and widgets that need the data. It receives streams of 
events/data from the source, handles any required business logic and publishes streams of data changes to widgets that are interested in them.

A BLoC has two simple components: Sinks and Streams, both of which are provided by a StreamController. You add streams of event/data input into 
a Sink and listen to them as streams of data output through a Stream.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
