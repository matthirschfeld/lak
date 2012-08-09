class User
  include MongoMapper::Document

  key :nick, String
  key :email, String
  key :user_link, String
  key :alliance, String
  key :alliance_link, String
  key :alliance_status, String
  
  validates :nick, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    
  many :castles
  
  before_save { |user| user.email = email.downcase }

end
