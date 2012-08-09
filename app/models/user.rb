class User
  include MongoMapper::Document

  key :nick, String
  key :email, String
  key :user_link, String
  key :alliance, String
  key :alliance_link, String
  key :alliance_status, String
  
  many :castles

end
