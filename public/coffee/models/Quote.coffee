attr = Ember.attr
hasMany = Ember.hasMany
belongsTo = Ember.belongsTo

AR.Quote = Ember.Model.extend
  
  id: attr()
  state: attr()
  agent: belongsTo "AR.Agent", {key: "agent_id"}
  client: belongsTo "AR.Client", {key: "client_id"}
  insurancetype: belongsTo "AR.Insurancetype", {key: "insurancetype_id"}
  #insuranceprovider: belongsTo "AR.Insuranceprovider", {key: "insurance_provider_id"}
  notes: attr()
  premium: attr()
  
  effectiveDate: attr(Date)
  expirationDate: attr(Date)
  policyNumber: attr()
  policyPremium: attr()
  createdAt: attr(Date)
  updatedAt: attr(Date)

AR.Quote.adapter = Ember.FixtureAdapter.create()