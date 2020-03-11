class Course < ApplicationRecord
    
    #RELATIONSHIPS
    belongs_to :major
    has_many :reviews, dependent: :destroy

    accepts_nested_attributes_for :reviews,
                                   allow_destroy: true,
                                   reject_if: lambda {|attributes| attributes['reviews_content'].blank?}


    # VALIDATIONS
    validates :coursename, 
      presence: true, 
      uniqueness: { case_sensitive: false, scope: :major_id, message: "already exists for this institution and major" },
      length: {minimum: 5, maximum: 50}

    validates :course_content, 
      presence: true, 
      length: {minimum: 10, maximum: 500} 

    validates_inclusion_of :proctoredexams, :in => ["Yes", "No"]


    #FORMATTING
    before_save :fill_in_prerequisite
    before_save :fill_in_groupwork
    before_save :fill_in_textbook

    def fill_in_prerequisite
      if !self.prerequisite.present?
        self.prerequisite = "None"
      end
    end

    def fill_in_groupwork
      if !self.groupwork.present?
        self.groupwork = "None"
      end
    end

    def fill_in_textbook
      if !self.textbook.present?
        self.textbook = "None"
      end
    end

end
