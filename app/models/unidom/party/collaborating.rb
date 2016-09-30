# Collaborating 是参与者以特定的角色进行协作。

class Unidom::Party::Collaborating < ActiveRecord::Base

  self.table_name = 'unidom_collaboratings'

  include Unidom::Common::Concerns::ModelExtension

  validates :name, presence: true, length: { in: 2..self.columns_hash['name'].limit }

  belongs_to :collaboration, polymorphic: true
  belongs_to :collaborator,  polymorphic: true

  scope :collaboration_is, ->(collaboration) { where collaboration: collaboration }
  scope :collaborated_by,  ->(collaborator)  { where collaborator:  collaborator  }

end
