import DS from 'ember-data';

export default DS.Model.extend({
  groceryList: DS.belongsTo('grocery-list', { async: true}),

  name: DS.attr('string'),
  quantity: DS.attr('number')
});
