class Major < ApplicationRecord
  
  # RELATIONSHIPS
  belongs_to :institution
  has_many :courses, dependent: :destroy
  has_many :reviews, through: :courses
  accepts_nested_attributes_for :courses,
                                   allow_destroy: true

  # VALIDATIONS
  validates :majorname, 
    presence: true, 
    uniqueness: { case_sensitive: false, scope: :institution_id, message: "already exists for this institution" },
    length: {minimum: 2, maximum: 100}

  # FORMATTING
  before_save { self.majorname = self.majorname.downcase.titleize }

end
