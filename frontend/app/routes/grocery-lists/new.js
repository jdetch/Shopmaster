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
      var promises = [];

      model.save().then(function(grocery_list){
        grocery_list.get('items').forEach(function(item) {
          promises.push(item.save());
        });
          return Ember.RSVP.all(promises).then(function () {
            _this.transitionTo('grocery-lists.index');
          }).catch(function () {
            console.log('one of the saves failed');
          });
        });
      }
    }

});
