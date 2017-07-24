class Event < ApplicationRecord
  enum status: {draft: 0, published: 1}
  enum privacy: {everyone: 0, cohort: 1, invite: 2}
  belongs_to :city
  belongs_to :group
  has_and_belongs_to_many :users
end
