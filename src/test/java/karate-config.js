function fn() {
    karate.configure('connectTimeout', 120000);
    karate.configure('readTimeout', 120000);
    var config = {
        baseUrl: 'http://127.0.0.1:'
    }
    return config;
}