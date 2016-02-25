# Person 是个人。

class Unidom::Party::Person < ActiveRecord::Base

  self.table_name = 'unidom_people'

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

  #has_many :source_party_linkings,   class_name: 'Party::PartyLinking',  as:     :source_party
  #has_many :linked_shops_as_source,  through:    :source_party_linkings, source: :target_party, source_type: 'Party::Shop'
  #has_many :linked_people_as_source, through:    :source_party_linkings, source: :target_party, source_type: 'Party::Person'

  #has_many :target_party_linkings,   class_name: 'Party::PartyLinking',  as:     :target_party
  #has_many :linked_shops_as_target,  through:    :source_party_linkings, source: :source_party, source_type: 'Party::Shop'
  #has_many :linked_people_as_target, through:    :source_party_linkings, source: :source_party, source_type: 'Party::Person'

  #has_many :allocatings,      class_name: 'Property::Allocating', as:     :allocatee
  #has_many :allocated_tables, through:    :allocatings,           source: :allocated, source_type: 'Property::Table'

  #has_many :receptions,     class_name: 'Visitor::Reception', as:     :party
  #has_many :recepted_users, through:    :receptions,          source: :visitor, source_type: 'Visitor::User'

  #has_many :contact_subscriptions,      class_name: 'Contact::ContactSubscription', as:     :subscriber
  #has_many :china_mobile_phone_numbers, through:    :contact_subscriptions,         source: :contact, source_type: 'Contact::ChinaMobilePhoneNumber'

  has_many :target_linkings, class_name: 'Party::PartyLinking', as:     :source_party
  #has_many :target_people,   through:    :target_linkings,      source: :target_party, source_type: 'Party::Person'
  #has_many :target_shops,    through:    :target_linkings,      source: :target_party, source_type: 'Party::Shop'

  has_many :source_linkings, class_name: 'Party::PartyLinking', as:     :target_party
  #has_many :source_people,   through:    :source_linkings,      source: :source_party, source_type: 'Party::Person'
  #has_many :source_shops,    through:    :source_linkings,      source: :source_party, source_type: 'Party::Shop'

  include Unidom::Common::Concerns::ModelExtension

end
