module Unidom::Party::Concerns::AsCollaboration

  extend ActiveSupport::Concern

  included do |includer|

    has_many :collaboratings, class_name: 'Unidom::Party::Collaborating', as: :collaboration

  end

  module ClassMethods
  end

end
