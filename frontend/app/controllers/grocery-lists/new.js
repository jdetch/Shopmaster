import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    addItem: function() {
      var item = this.store.createRecord('item');
      var grocery_list = this.get('model');

      grocery_list.get('items').pushObject(item);
    }
  }

});
