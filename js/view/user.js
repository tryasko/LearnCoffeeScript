// Generated by CoffeeScript 1.6.2
define(['jquery', 'underscore', 'backbone'], function($, _, Backbone) {
  'use strict';  return Backbone.View.extend({
    tagName: 'li',
    template: _.template($('#userTemplate').html()),
    initialize: function() {
      this.render();
      this.model.on('change:name', this.render, this);
      return this.model.on('select:current', this.select, this);
    },
    render: function() {
      this.$el.html(this.template({
        data: this.model.toJSON()
      }));
      return this;
    },
    select: function() {
      return this.$el.addClass('selected');
    }
  });
});
