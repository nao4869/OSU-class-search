class Review < ActiveRecord::Base
    # rails5から、belongs_toに対して、required:trueがデフォルトで設定されているからみたいです。
    
    #RELATIONSHIPS
    belongs_to :course

    #VALIDATIONS
    validates :reviews_content, 
      presence: true, 
      length: {minimum: 10, maximum: 2000}

    validates :difficulty, 
      presence: true

    validates :benefit, 
      presence: true

    validates :time_spent, 
      presence: true

    #FORMATTING
    before_validation :format_difficulty

    def format_difficulty
      case self.difficulty
      when "1 - Very Easy"
        self.difficulty = 1
      when "2 - Somewhat Easy"
        self.difficulty = 2
      when "3 - Average"
        self.difficulty = 3
      when "4 - Challenging"
        self.difficulty = 4
      when "5 - Very Difficult"
        self.difficulty = 5
      end
    end

    def format_benefit
      case self.benefit
      when "1 - Not Beneficial"
        self.benefit = "1"
      when "2 - Hardly Beneficial"
        self.benefit = "2"
      when "3 - Somewhat Beneficial"
        self.benefit = "3"
      when "4 - Beneficial"
        self.benefit = "4"
      when "5 - Very Beneficial"
        self.benefit = "5"
      end
    end
end