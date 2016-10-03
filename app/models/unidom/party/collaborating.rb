# Collaborating 是参与者以特定的角色进行协作。

class Unidom::Party::Collaborating < ActiveRecord::Base

  self.table_name = 'unidom_collaboratings'

  include Unidom::Common::Concerns::ModelExtension

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

  belongs_to :collaboration, polymorphic: true
  belongs_to :collaborator,  polymorphic: true

  scope :collaboration_is, ->(collaboration) { where collaboration: collaboration }
  scope :collaborated_by,  ->(collaborator)  { where collaborator:  collaborator  }

  def self.collaborate!(collaboration: nil, collaborator: nil, name: collaborator.try(:name), role_code: nil, priority: 1, grade: 1, description: nil, instruction: nil, opened_at: Time.now)
    query         = collaboration_is(collaboration).collaborated_by(collaborator).role_coded_as(role_code).valid_at(now: opened_at).alive
    attributes    = { name: name, priority: priority, grade: grade, description: description, instruction: instruction }
    collaborating = query.first_or_initialize attributes
    if collaborating.new_record?
      collaborating.opened_at = opened_at
    else
      collaborating.attributes = attributes
    end
    collaborating.save!
    collaborating
  end

end
