User.ensure_index(:nick)
User.ensure_index [[:email, 1]], :unique => true
Castle.ensure_index [[:castle_link, 1]], :unique => true
Castle.ensure_index(:castle_name)
