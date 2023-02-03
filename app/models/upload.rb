class Upload < ApplicationRecord
  has_one :general
  has_many :compliances
  has_many :constructions
  has_many :dhw_generators
  has_many :doors
  has_many :glasses
  has_many :hvac_systems
  has_many :rec_projects
  has_many :rec_users
  has_many :walls
  has_many :windows
  has_many :zones
end
