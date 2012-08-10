class User
  include MongoMapper::Document

  key :nick, String, :required => true, :index => true
  key :email, String, :required => true, :unique => true, :index => true
  key :user_link, String, :unique => true, :index => true
  key :alliance, String
  key :alliance_link, String
  key :alliance_status, String
  
  many :castles
  
  validates :nick, length: { maximum: 50 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    
  before_save { |user| user.email = email.downcase }

end
