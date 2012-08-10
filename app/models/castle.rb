class Castle
  include MongoMapper::Document

  key :castle_name, String, :required => true
  key :castle_link, String
  key :castle_status, String
  key :reservation_date, Time, :required => true
  key :user_id, ObjectId
  
    
  belongs_to :user

end
