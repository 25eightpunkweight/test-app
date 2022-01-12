class TestClass
  def get_users(params)
    response = RestClient.get('reqres.in/api/users', {params: {page: params['page']}}).body
    JSON.parse(response)
  end

end