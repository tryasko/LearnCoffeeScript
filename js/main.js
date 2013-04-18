// Generated by CoffeeScript 1.6.2
(function() {
  'use strict';  requirejs.config({
    urlArgs: +new Date(),
    paths: {
      'jquery': 'lib/jquery',
      'underscore': 'lib/underscore',
      'backbone': 'lib/backbone'
    },
    shim: {
      'jquery': {
        exports: '$'
      },
      'underscore': {
        exports: '_'
      },
      'backbone': {
        deps: ['jquery', 'underscore'],
        exports: 'Backbone'
      }
    }
  });

  requirejs(['app']);

}).call(this);
