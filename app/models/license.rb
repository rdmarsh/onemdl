class License < ActiveRecord::Base
  include PublicActivity::Common
  
  before_validation :strip_blanks
  
  # belongs to
  belongs_to :license_type
  belongs_to :organisation



  
  # has many
  has_many :devices, dependent: :restrict_with_error
  
  # # has many through
  # has_many :network_uses, through: :network_interfaces
  
  # accepts nested
  # accepts_nested_attributes_for :network_interfaces, allow_destroy: true
  
  # validations
  validates :key, presence: true
  validates :quantity, presence: true
  validates_numericality_of :quantity, :only_integer => true, :greater_than_or_equal_to => 0
  

  
  before_destroy :protect_unknown_none
  
  private
  
  def protect_unknown_none
    !name.downcase.eql?("unknown") and !name.downcase.eql?("none")
  end
  
  protected
  
  def strip_blanks
     self.quantity = self.quantity.strip
  end
  
end
