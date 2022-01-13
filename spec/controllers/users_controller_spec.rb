require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe UsersController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Article. As you add validations to Article, be sure to adjust the attributes here as well.
    let(:valid_attributes) {
      # { 
      #   :title => "Test title!", 
      #   :description => "This is a test description", 
      #   :status => "draft" 
      # }
      { 
        :first_name => "Wilbur", 
        :last_name => "Soot", 
        :email => "wilburnoreply@gmail.com",
        :avatar => "https://pbs.twimg.com/profile_images/1293692544409362432/vXe5yYzN_400x400.jpg"
      }
    }

    let(:valid_session) { {} }

    describe "GET users#index" do
        it "returns a success response" do
            get :index, params: {}, session: valid_session
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        
          end
    end
    describe "POST users#create" do
        it "returns a success response" do
            post :create, params: {user: valid_attributes}, session: valid_session
            # expect(response).to have_http_status(:success)
            expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
          end
    end
    describe "PUT users#update" do
        it "returns a success response" do
            User.create! valid_attributes.merge(id: 1)
            put :update, 
            params: {
              user: {
                first_name: "Niall",
                last_name: "Comas",
                email: "businessforpyro@gmail.com"
              },
              id: 1
            }, 
            session: valid_session
            # expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
    # describe "GET #index" do
    #     it "returns a success response" do
    #         User.create! valid_attributes
    #         get :index, params: {}, session: valid_session
    #         expect(response).to be_successful # be_successful expects a HTTP Status code of 200
    #         # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
    #     end
    # end

    
end