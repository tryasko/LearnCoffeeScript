// Generated by CoffeeScript 1.6.2
(function() {
  'use strict';  define(['jquery', 'underscore', 'backbone'], function($, _, Backbone) {
    return Backbone.View.extend({
      id: 'userInfo',
      template: _.template($('#userInfoTemplate').html()),
      render: function() {
        this.$el.html(this.template({
          data: this.model.toJSON()
        }));
        return this;
      }
    });
  });

}).call(this);