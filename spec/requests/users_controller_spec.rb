require 'rails_helper'

RSpec.describe UsersController, type: :request do
  include Docs::Users::Api
  
  let(:users) { create_list(:user, 5) }
  let(:admin) { create(:user, is_admin: true) }
  let(:test_user) { users.sample }
  let(:user_params) { {
    first_name: 'FirstName', 
    last_name: 'LastName', 
    email: 'example@example.com',
    password: 'SomePassword'
    } }
    
  describe 'GET /users' do
    include Docs::Users::Index
    context 'user is not signed in' do
      before { get "/users", as: :json }
      
      it 'returns status 401' do
        expect(status).to eq(401)
      end
      
      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end
    
    context 'user is signed in' do
      before do
        sign_in test_user
        get "/users", as: :json
      end
      
      it 'returns status 403' do
        expect(status).to eq(403)
      end

      it 'renders access denied message' do
        expect(json['Access denied']).to match(/You don\'t have access to this resource/)
      end
    end
    
    context 'admin is signed in' do
      before do
        users
        sign_in admin
        get "/users", as: :json
      end
      
      it 'returns status 200' do
        is_successfull
      end
      
      it 'returns all users', :dox do
        expect(json['users'].count).to eq(users.count + 1)
      end
    end
  end

  describe 'GET /users/:id' do
    include Docs::Users::Show
    context 'user is not signed in' do
      before { get "/users/#{test_user.id}", as: :json }
      
      it 'returns status 401' do
        expect(status).to eq(401)
      end
      
      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end
    
    context 'user is signed in' do
      before do
        sign_in test_user
        get "/users/#{test_user.id}", as: :json
      end
      
      it 'returns status 403' do
        expect(status).to eq(403)
      end

      it 'renders access denied message' do
        expect(json['Access denied']).to match(/You don\'t have access to this resource/)
      end
    end
    
    context 'admin is signed in' do
      before { sign_in admin }
      
      context 'user exists' do
        before { get "/users/#{test_user.id}", as: :json }
        it 'returns status 200' do
          is_successfull
        end
        
        it 'returns user', :dox do
          expect(json['id']).to eq(test_user.id)
        end
      end
      
      context 'user does not exist' do
        before { get "/users/0", as: :json }

        it 'returns status 404' do
          expect(status).to eq(404)
        end

        it 'returns error message' do
          expect(json['error']).to match(/User not found/)
        end
      end
    end
  end

  describe 'POST /users' do
    include Docs::Users::Create
    context 'user is not signed in' do
      before { post "/users", params: user_params, as: :json }
      
      it 'returns status 401' do
        expect(status).to eq(401)
      end
      
      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end
    
    context 'user is signed in' do
      before do
        sign_in test_user
        post "/users", params: user_params, as: :json
      end
      
      it 'returns status 403' do
        expect(status).to eq(403)
      end

      it 'renders access denied message' do
        expect(json['Access denied']).to match(/You don\'t have access to this resource/)
      end
    end
    
    context 'admin is signed in' do
      before do
        sign_in admin
        post "/users", params: user_params, as: :json
      end
      
      it 'returns status 200' do
        is_successfull
      end
      
      it 'creates a new user', :dox do
        expect(json['first_name']).to eq(user_params[:first_name])
        expect(json['last_name']).to eq(user_params[:last_name])
        expect(json['email']).to eq(user_params[:email])
      end
    end
  end

  describe 'PUT/PATCH /users/:id' do
    include Docs::Users::Update
    context 'user is not signed in' do
      before { put "/users/#{test_user.id}", params: user_params, as: :json }
      
      it 'returns status 401' do
        expect(status).to eq(401)
      end
      
      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end
    
    context 'user is signed in' do
      before do
        sign_in test_user
        put "/users/#{test_user.id}", params: user_params, as: :json
      end
      
      it 'returns status 403' do
        expect(status).to eq(403)
      end

      it 'renders access denied message' do
        expect(json['Access denied']).to match(/You don\'t have access to this resource/)
      end
    end
    
    context 'admin is signed in' do
      before { sign_in admin }
      
      context 'user exists' do
        before { put "/users/#{test_user.id}", params: user_params, as: :json }
        
        it 'returns status 200' do
          is_successfull
        end
        
        it 'updates user', :dox do
          expect(json['id']).to eq(test_user.id)
          expect(json['first_name']).to eq(user_params[:first_name])
          expect(json['last_name']).to eq(user_params[:last_name])
          expect(json['email']).to eq(user_params[:email])
        end
      end
      
      context 'user does not exist' do
        before { put "/users/0", params: user_params, as: :json }
        
        it 'returns status 404' do
          expect(status).to eq(404)
        end

        it 'returns error message' do
          expect(json['error']).to match(/User not found/)
        end
      end
    end
  end

  describe 'DELETE /users/:id' do
    include Docs::Users::Destroy
    context 'user is not signed in' do
      before { delete "/users/#{test_user.id}", as: :json }
      
      it 'returns status 401' do
        expect(status).to eq(401)
      end
      
      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end
    
    context 'user is signed in' do
      before do
        sign_in test_user
        delete "/users/#{test_user.id}", as: :json
      end
      
      it 'returns status 403' do
        expect(status).to eq(403)
      end

      it 'renders access denied message' do
        expect(json['Access denied']).to match(/You don\'t have access to this resource/)
      end
    end
    
    context 'admin is signed in' do
      before { sign_in admin }
      
      context 'user exists' do
        before { delete "/users/#{test_user.id}", as: :json }
        
        it 'returns status 200' do
          is_successfull
        end
        
        it 'renders success message', :dox do
          expect(json['message']).to match(/User was deleted successfully/)
        end
      end
      
      context 'user does not exist' do
        before { delete "/users/0", as: :json }
        
        it 'returns status 404' do
          expect(status).to eq(404)
        end

        it 'returns error message' do
          expect(json['error']).to match(/User not found/)
        end
      end
    end
  end
end
