// Generated by CoffeeScript 1.6.2
define(['jquery', 'underscore', 'backbone'], function($, _, Backbone) {
  'use strict';  return Backbone.View.extend({
    id: 'userInfo',
    template: _.template($('#userInfoEditTemplate').html()),
    render: function() {
      this.$el.html(this.template({
        data: this.model.toJSON()
      }));
      return this;
    },
    events: {
      'click .save': 'saveInfo'
    },
    saveInfo: function() {
      var isErrorValidate, newInfo;

      newInfo = {
        name: this.$('.user-name').val(),
        age: parseInt(this.$('.user-age').val(), 10),
        job: this.$('.user-job').val(),
        sex: this.$('.user-sex').val()
      };
      isErrorValidate = this.model.validate(newInfo);
      if (isErrorValidate) {
        return this.showErrorValidate(isErrorValidate);
      } else {
        this.model.set({
          name: newInfo.name,
          age: newInfo.age,
          job: newInfo.job,
          sex: newInfo.sex
        });
        return window.location.hash = '#info/user/' + this.model.get('id');
      }
    },
    showErrorValidate: function(errors) {
      var error, _i, _len, _results;

      _results = [];
      for (_i = 0, _len = errors.length; _i < _len; _i++) {
        error = errors[_i];
        _results.push(alert(error));
      }
      return _results;
    }
  });
});
