import Ember from 'ember';

export default Ember.Route.extend({
  setupController: function(controller, model) {
    controller.set('model', model);
  },

  model: function() {
    return this.store.createRecord('grocery-list');
  },

  actions: {
    save: function() {
      var model = this.get('controller.model');

      var _this = this;
      model.save();
      _this.transitionTo('grocery-lists.index');
    }
  }

});