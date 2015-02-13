import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    addItem: function() {
      var item = this.store.createRecord('item');
      var groceryList = this.get('model');

      groceryList.get('items').pushObject(item);
    }
  }

});
