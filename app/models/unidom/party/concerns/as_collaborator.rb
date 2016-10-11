module Unidom::Party::Concerns::AsCollaborator

  extend ActiveSupport::Concern

  included do |includer|

    has_many :collaboratings, class_name: 'Unidom::Party::Collaborating', as: :collaborator

    def collaborate!(on: nil, as: nil, at: Time.now, name: nil, priority: 0, grade: 0)
      collaborating = collaboratings.collaboration_is(on).role_coded_as(as).valid_at(now: at).alive.first
      if collaborating.present?
        collaborating.attributes = { name: name, priority: priority, grade: grade }
        collaborating.save!
      else
        collaborating = collaboratings.create! collaboration: on, role_code: as, name: name, priority: priority, grade: grade, opened_at: at
      end
      collaborating
    end

    def collaborate?(on: nil, as: nil, at: Time.now, priority: nil, grade: nil)
      query = collaboratings
      query = query.collaboration_is on       if on.present?
      query = query.role_coded_as    as       if as.present?
      query = query.priority_is      priority if priority.present?
      query = query.grade_is         grade    if grade.present?
      query.valid_at(now: at).alive.exists?
    end

  end

  module ClassMethods
  end

end
