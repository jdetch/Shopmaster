import DS from 'ember-data';

export default DS.Model.extend({
  items: DS.hasMany('item', { async: true } ),

  name: DS.attr('string'),
  description: DS.attr('string')
});
