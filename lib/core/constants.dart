/// CineStream — App-wide constants and configuration.
library;



/// Application metadata.
class AppConstants {
  AppConstants._();

  static const String appName = 'CineStream';
  static const String appTagline = 'Your movies & TV, everywhere.';
  static const String appVersion = '0.1.0';
  static const String githubUrl = 'https://github.com/usmanbutt-dev/CineStream';

  /// Default number of concurrent downloads.
  static const int defaultConcurrentDownloads = 2;

  /// Background sync interval in minutes.
  static const int syncIntervalMinutes = 15;

  /// Extension repo fetch timeout in seconds.
  static const int repoFetchTimeoutSeconds = 30;

  /// Search debounce duration in milliseconds.
  static const int searchDebounceMs = 500;

  /// Default extension repository URL (official CineStream extensions).
  static const String defaultExtensionRepoUrl =
      'https://raw.githubusercontent.com/usmanbutt-dev/cinestream-extensions/master/index.json';

  /// Legal disclaimer shown to users.
  static const String disclaimer =
      'CineStream does not provide, host, or distribute any media content. '
      'All content is sourced through third-party extensions created and '
      'maintained by the community. Users are responsible for ensuring they '
      'access content through legal means. CineStream developers are not '
      'responsible for content accessed through extensions.';
}

/// Library entry status values.
class LibraryStatus {
  LibraryStatus._();

  static const String watching = 'watching';
  static const String planToWatch = 'plan_to_watch';
  static const String completed = 'completed';
  static const String onHold = 'on_hold';
  static const String dropped = 'dropped';

  static const List<String> all = [
    watching,
    planToWatch,
    completed,
    onHold,
    dropped,
  ];

  /// Human-readable label for a status value.
  static String label(String status) {
    return switch (status) {
      watching => 'Watching',
      planToWatch => 'Plan to Watch',
      completed => 'Completed',
      onHold => 'On Hold',
      dropped => 'Dropped',
      _ => status,
    };
  }
}

/// Download task status values.
class DownloadStatus {
  DownloadStatus._();

  static const String queued = 'queued';
  static const String downloading = 'downloading';
  static const String paused = 'paused';
  static const String completed = 'completed';
  static const String failed = 'failed';
}
