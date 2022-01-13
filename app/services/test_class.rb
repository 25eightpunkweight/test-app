class TestClass
  def populate_users
    response = RestClient.get('reqres.in/api/users').body
    JSON.parse(response)['data'].each do |fetched_user| 
      User.create(fetched_user)
    end
    # sanity check because sometimes it loses track of the primary key sequence
    ActiveRecord::Base.connection.reset_pk_sequence!('users') 
  end

end