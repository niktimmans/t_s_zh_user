class ApiPath {
  static const envName = String.fromEnvironment(
    'SR_ENV_NAME',
    defaultValue: 'dev',
  );
  static const baseUrl = envName == 'prod'
      ? 'https://api.streak.us/'
      : 'https://$envName.hiddenroom.net/';

  static const shows = 'v1/shows/';

  static const myShows = 'v1/shows/my';
  static const liveShows = 'v1/shows?state=LIVE';
  static const upcomingShows = 'v1/shows?state=SCHEDULED';

  static const marketStoreProducts = 'v1/shows/products/';
}
