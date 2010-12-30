class Theme < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :sites
  has_many :templates
end