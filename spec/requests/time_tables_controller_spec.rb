require 'rails_helper'

RSpec.describe TimeTablesController, type: :request do
  include Docs::TimeTables::Api
  
  let(:users) { create_list(:user, 5) }
  let(:time_tables) { create_list(:time_table, 5, user_id: users.sample.id) }
  let(:time_table) { time_tables.sample }
  let(:admin) { create(:user, is_admin: true) }
  let(:test_user) { create(:user) }
  let(:user_time_tables) { create_list(:time_table, 10, user_id: test_user.id) }
  let(:user_time_table) { user_time_tables.sample }
  

  describe 'GET /time_tables' do
    context 'user is not signed in' do
      before { get "/time_tables", as: :json }
      
      it 'returns status 401' do
        expect(status).to eq(401)
      end
      
      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end
    
    context 'user is signed in' do
      include Docs::TimeTables::IndexUser
      before do
        user_time_tables
        sign_in test_user
        get "/time_tables", as: :json
      end
      
      it 'returns status 200' do
        is_successfull
      end
      
      it 'returns time tables for user', :dox do
        expect(json['time_tables'].count).to eq(user_time_tables.count)
      end
    end
    
    context 'admin is signed in' do
      include Docs::TimeTables::IndexAdmin
      before do
        time_tables
        user_time_tables
        sign_in admin
        get "/time_tables", as: :json
      end
      
      it 'returns status 200' do
        is_successfull
      end
      
      it 'returns all time tables', :dox do
        expect(json['time_tables'].count).to eq(time_tables.count + user_time_tables.count)
      end
    end
  end
  
  describe 'GET /time_tables/:id' do
    context 'user is not signed in' do
      before { get "/time_tables/#{time_tables.sample.id}", as: :json }
      

      it 'returns status 401' do
        expect(status).to eq(401)
      end

      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end

    context 'user is signed in' do
      before do
        user_time_table
        sign_in test_user
      end

      context 'the time table belongs to the user' do
        include Docs::TimeTables::ShowUser
        before { get "/time_tables/#{user_time_table.id}", as: :json }

        it 'returns status 200' do
          is_successfull
        end

        it 'returns the time table', :dox do
         expect(json['id']).to eq(user_time_table.id)
        end
      end

      context 'the time table does not belong to the user' do
        before { get "/time_tables/#{time_table.id}", as: :json }

        it 'returns status 403' do
          expect(status).to eq(403)
        end

        it 'renders access denied message' do
          expect(json['Access denied']).to match(/You don\'t have access to this resource/)
        end

        it 'does not return time table' do
          expect(json['time_tables']).to be(nil)
        end
      end
    end

    context 'admin is signed in' do
      include Docs::TimeTables::ShowAdmin
      before { sign_in admin }

      context 'the time table exists' do
        before { get "/time_tables/#{time_table.id}", as: :json }

        it 'returns status 200' do
          is_successfull
        end

        it 'returns time table', :dox do
          expect(json['id']).to eq(time_table.id)
        end
      end

      context 'the time table does not exist' do
        before { get "/time_tables/0", as: :json }

        it 'returns status 404' do
          expect(status).to eq(404)
        end

        it 'returns error message' do
          expect(json['error']).to match(/TimeTable not found/)
        end
      end
    end
  end
  
  describe 'GET /time_tables/by_user/:user_id' do
    include Docs::TimeTables::ByUser
    context 'user is not signed in' do
      before { get "/time_tables/by_user/#{test_user.id}", as: :json }

      it 'returns status 401' do
        expect(status).to eq(401)
      end

      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end

    context 'user is signed in' do
      before { sign_in test_user }

      context 'the user requested is valid' do
        before do
          user_time_tables
          get "/time_tables/by_user/#{test_user.id}", as: :json
        end

        it 'returns status 200' do
          is_successfull
        end

        it 'returns the users time tables' do
          expect(json['time_tables'].count).to eq(user_time_tables.count) 
        end
      end

      context 'the user requested is invalid' do
        before { get "/time_tables/by_user/#{users.sample.id}", as: :json }

        it 'returns status 403' do
          expect(status).to eq(403)
        end

        it 'renders access denied message' do
          expect(json['Access denied']).to match(/You don\'t have access to this resource/)
        end
      end
    end

    context 'admin is signed in' do
      before { sign_in admin }

      context 'the user exists' do
        before do
          user_time_tables
          get "/time_tables/by_user/#{test_user.id}", as: :json
        end

        it 'returns status 200' do
          is_successfull
        end

        it 'returns user time tables', :dox do
          expect(json['time_tables'].count).to eq(user_time_tables.count)
        end
      end

      context 'the user has no time tables' do
        before { get "/time_tables/by_user/#{users.sample.id}", as: :json }

        it 'returns status 200' do
          is_successfull
        end

        it 'returns an empty array' do
          expect(json['time_tables']).to be_empty
        end
      end

      context 'the user does not exist' do
        before { get "/time_tables/by_user/0", as: :json }

        it 'returns status 404' do
          expect(status).to eq(404)
        end

        it 'returns error message' do
          expect(json['error']).to match(/User not found/)
        end
      end
    end
  end
  
  describe 'POST /time_tables' do
    context 'user is not signed in' do
      before do
        post '/time_tables', as: :json
      end

      it 'returns status 401' do
        expect(status).to eq(401)
      end

      it 'renders error message' do
        expect(json['error']).to match(/You need to sign in or sign up before continuing/)
      end
    end

    context 'user is signed in' do
      before { sign_in test_user }

      context 'the user has an open time table' do
        include Docs::TimeTables::Checkout
        let(:test_table) { create(:time_table, checkin: DateTime.now - 1.hour, user: test_user, checkout: nil, status: 0, seconds: nil) }
        before do
          test_table
          post '/time_tables', as: :json
        end

        it 'returns status 200' do
          is_successfull
        end

        it 'returns time table with checkout' do
          expect(json['checkout']).not_to be(nil)
        end

        it 'returns closed time table' do
          expect(json['status']).to eq('closed')
        end

        it 'returns time table with seconds elapsed', :dox do
          expect(json['seconds']).to be_between(3598, 3602)
        end
      end

      context 'the user does not have an open time table' do
        include Docs::TimeTables::Checkin
        before { post '/time_tables', as: :json }

        it 'returns status 200' do
          is_successfull
        end

        it 'creates an open time table', :dox do
          expect(json['checkin']).not_to be(nil)
          expect(json['checkout']).to be(nil)
          expect(json['time']).to be(nil)
        end
      end
    end
  end
  
  describe 'PUT/PATCH /time_tables/:id' do
    context 'user is not signed in' do
      before { put "/time_tables/#{user_time_table.id}", params: { checkin: DateTime.now }, as: :json }

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
        put "/time_tables/#{user_time_table.id}", params: { checkin: DateTime.now }, as: :json
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
        @checkin = DateTime.now - 1.hour
        @checkout = DateTime.now
        sign_in admin
      end

      context 'time table exists' do
        context 'checkin and checkout are updated' do
          include Docs::TimeTables::Update
          before { put "/time_tables/#{user_time_table.id}", params: { checkin: @checkin, checkout: @checkout }, as: :json }

          it 'returns status 200' do
            is_successfull
          end

          it 'updates check tim
        endes', :dox do
            expect(DateTime.parse(json['checkin']).to_i).to eq(@checkin.to_i)
            expect(DateTime.parse(json['checkout']).to_i).to eq(@checkout.to_i)
          end

          it 'returns a closed time table' do
            expect(json['status']).to eq('closed')
          end
        end

        context 'checkin is updated' do
          context ''
          before { put "/time_tables/#{user_time_table.id}", params: { checkin: @checkin, checkout: nil }, as: :json }

          it 'returns status 200' do
            is_successfull
          end

          it 'updates check times' do
            expect(DateTime.parse(json['checkin']).to_i).to eq(@checkin.to_i)
          end

          it 'returns a closed time table' do
            expect(json['status']).to eq('open')
          end
        end
      end

      context 'time table does not exist' do
        before { put "/time_tables/0", params: { checkin: @checkin, checkout: @checkout }, as: :json }
        it 'returns status 404' do
          expect(status).to eq(404)
        end

        it 'returns error message' do
          expect(json['error']).to match(/TimeTable not found/)
        end
      end
    end
  end
  
  describe 'DELETE #destroy' do
    include Docs::TimeTables::Delete
    context 'user is not signed in' do
      before { delete "/time_tables/#{user_time_table.id}", as: :json }

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
        delete "/time_tables/#{user_time_table.id}", as: :json
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

      context 'time table exists' do
        before { delete "/time_tables/#{user_time_table.id}", as: :json }

        it 'returns status 200' do
          is_successfull
        end

        it 'renders success message', :dox do
          expect(json['message']).to match(/Time table was deleted successfully/)
        end
      end

      context 'time table does not exist' do
        before { delete "/time_tables/0", as: :json }

        it 'returns status 404' do
          expect(status).to eq(404)
        end

        it 'returns error message' do
          expect(json['error']).to match(/TimeTable not found/)
        end
      end
    end
  end
end