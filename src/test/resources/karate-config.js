function fn() {
  var config = {};

  // Base URLs for different modules
  config.baseUrl = 'https://jsonplaceholder.typicode.com';   // example public API
  config.uiBaseUrl = 'https://example.com';                  // dummy UI base

  // You can add environment logic if needed
  var env = karate.env; // get system property 'karate.env'
  karate.log('Running in environment:', env);

  if (env == 'dev') {
    config.baseUrl = 'https://dev-api.example.com';
  } else if (env == 'qa') {
    config.baseUrl = 'https://qa-api.example.com';
  }

  return config;
}
