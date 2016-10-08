module Unidom::Party::Concerns::AsCollaborator

  extend ActiveSupport::Concern

  included do |includer|

    has_many :collaboratings, class_name: 'Unidom::Party::Collaborating', as: :collaborator

  end

  module ClassMethods
  end

end
