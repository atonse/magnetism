require 'digest/md5'

class Site < ActiveRecord::Base
  include CurrentObject

  validates_presence_of :name, :domain, :theme_id
  validates_uniqueness_of :name, :domain
  validates_inclusion_of :production, :in => [true, false]
  validates_numericality_of :theme_id

  attr_accessible :name, :domain, :production, :theme_id

  has_many :pages, :dependent => :destroy
  has_many :assets, :dependent => :destroy

  belongs_to :homepage, :class_name => 'Page'
  belongs_to :theme

  def key
    Digest::MD5.new(id).to_s
  end
end
