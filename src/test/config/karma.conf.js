module.exports = function (config) {
    config.set({

        basePath: '../',


        frameworks: ['ng-scenario'],


        files: [
            'src/test/javascript/functional/*.js',
            'src/test/javascript/unit/*.js'
        ],


        exclude: [

        ],

        reporters: ['progress'],


        port: 8000,

        colors: true,


        logLevel: config.LOG_INFO,


        autoWatch: true,

        proxies: {
            '/': 'http://localhost:8080/home'
        },

        browsers: ['Firefox'],

        plugins: [
            'karma-junit-reporter',
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-jasmine',
            'karma-ng-scenario'
        ],

        junitReporter: {
            outputFile: 'test_out/e2e.xml',
            suite: 'e2e'
        },

        captureTimeout: 60000,


        singleRun: false
    });
};
