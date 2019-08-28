require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'TimeTables' do
  header 'Accept', 'application/json'
  
  let(:users) { create_list(:user, 5) }
  let(:time_tables) { create_list(:time_table, 5, user_id: users.sample.id) }
  let(:time_table) { time_tables.sample }
  let(:admin) { create(:user, is_admin: true) }
  let(:test_user) { create(:user) }
  let(:user_time_tables) { create_list(:time_table, 10, user_id: test_user.id) }
  let(:user_time_table) { user_time_tables.sample }
  

  describe 'GET #index' do
    get "/time_tables" do
      context 'user is not signed in' do
        before do
          do_request
        end
        
        it 'returns status 401' do
          expect(status).to eq(401)
        end
        
        it 'renders error message' do
          expect(json['error']).to match(/You need to sign in or sign up before continuing/)
        end
      end
      
      context 'user is signed in' do
        before do
          user_time_tables
          sign_in test_user
          do_request
        end
        
        it 'returns status 200' do
          is_successfull
        end
        
        it 'returns time tables for user' do
          expect(json['time_tables'].count).to eq(user_time_tables.count)
        end
      end
      
      context 'admin is signed in' do
        before do
          time_tables
          user_time_tables
          sign_in admin
          do_request
        end
        
        it 'returns status 200' do
          is_successfull
        end
        
        it 'returns all time tables' do
          expect(json['time_tables'].count).to eq(time_tables.count + user_time_tables.count)
        end
      end
    end    
  end
  
  describe 'GET #show' do
    get '/time_tables/:id' do
      context 'user is not signed in' do
        before do
          do_request(id: time_tables.sample.id)
        end
        
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
        end
        
        context 'the record belongs to the user' do
          before do
            do_request(id: user_time_table.id)
          end
          
          it 'returns status 200' do
            is_successfull
          end
          
          it 'returns the record' do
           expect(json['id']).to eq(user_time_table.id)
          end
        end
        
        context 'the record does not belong to the user' do
          before do
            do_request(id: time_table.id)
          end
          
          it 'returns status 403' do
            expect(status).to eq(403)
          end
          
          it 'renders access denied message' do
            expect(json['Access denied']).to match(/You don\'t have access to this resource/)
          end
          
          it 'does not return record' do
            expect(json['time_tables']).to be(nil)
          end
        end
      end
      
      context 'admin is signed in' do
        before do
          sign_in admin
        end
        
        context 'the record exists' do
          before do
            do_request(id: time_table.id)
          end
          
          it 'returns status 200' do
            is_successfull
          end
          
          it 'returns time table' do
            expect(json['id']).to eq(time_table.id)
          end
        end
        
        context 'the record does not exist' do
          before do
            do_request(id: 0)
          end
          
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
  
  describe 'GET #by_user' do
    get '/time_tables/by_user/:user_id' do
      context 'user is not signed in' do
        before do
          do_request(user_id: test_user.id)
        end
        
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
        end
        
        context 'the user requested is valid' do
          before do
            user_time_tables
            do_request(user_id: test_user.id)
          end
          
          it 'returns status 200' do
            is_successfull
          end
          
          it 'returns the users records' do
            expect(json['time_tables'].count).to eq(user_time_tables.count) 
          end
        end
        
        context 'the user requested is invalid' do
          before do
            do_request(user_id: users.sample.id)
          end
          
          it 'returns status 403' do
            expect(status).to eq(403)
          end
          
          it 'renders access denied message' do
            expect(json['Access denied']).to match(/You don\'t have access to this resource/)
          end
        end
      end
      
      context 'admin is signed in' do
        before do
          sign_in admin
        end
        
        context 'the user exists' do
          before do
            user_time_tables
            do_request(user_id: test_user.id)
          end
          
          it 'returns status 200' do
            is_successfull
          end
          
          it 'returns user records' do
            expect(json['time_tables'].count).to eq(user_time_tables.count)
          end
        end
        
        context 'the user has no records' do
          before do
            do_request(user_id: users.sample.id)
          end
          
          it 'returns status 200' do
            is_successfull
          end
          
          it 'returns an empty array' do
            expect(json['time_tables']).to be_empty
          end
        end
        
        context 'the user does not exist' do
          before do
            do_request(user_id: 0)
          end
          
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
  
  describe 'POST #register' do
    post '/time_tables' do
      context 'user is not signed in' do
        before do
          do_request
        end
        
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
        end
        
        context 'the user has an open record' do
          let(:test_table) { create(:time_table, checkin: DateTime.now - 1.hour, user: test_user, checkout: nil, status: 0, seconds: nil) }
          before do
            test_table
            do_request
          end
          
          it 'returns status 200' do
            is_successfull
          end
          
          it 'returns record with checkout' do
            expect(json['checkout']).not_to be(nil)
          end
          
          it 'returns closed record' do
            expect(json['status']).to eq('closed')
          end
          
          it 'returns record with seconds elapsed' do
            expect(json['seconds']).to eq(3600)
          end
        end
        
        context 'the user does not have an open record' do
          before do
            do_request
          end
          
          it 'returns status 200' do
            is_successfull
          end
          
          it 'creates an open record' do
            expect(json['checkin']).not_to be(nil)
            expect(json['checkout']).to be(nil)
            expect(json['time']).to be(nil)
          end
        end
      end
    end
  end
  
  describe 'PUT/PATCH #update' do
    put '/time_tables/:id' do
      context 'user is not signed in' do
        before do
          do_request(id: user_time_table.id)
        end
        
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
          do_request(id: user_time_table.id)
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
        
        context 'record exists' do
          context 'checkin and checkout are updated' do
            before do
              do_request(id: user_time_table.id, checkin: @checkin, checkout: @checkout)
            end
            
            it 'returns status 200' do
              is_successfull
            end
            
            it 'updates check times' do
              expect(DateTime.parse(json['checkin']).to_i).to eq(@checkin.to_i)
              expect(DateTime.parse(json['checkout']).to_i).to eq(@checkout.to_i)
            end
            
            it 'returns a closed record' do
              expect(json['status']).to eq('closed')
            end
          end
          
          context 'checkin is updated' do
            context ''
            before do
              do_request(id: user_time_table.id, checkin: @checkin, checkout: nil)
            end
            
            it 'returns status 200' do
              is_successfull
            end
            
            it 'updates check times' do
              expect(DateTime.parse(json['checkin']).to_i).to eq(@checkin.to_i)
            end
            
            it 'returns a closed record' do
              expect(json['status']).to eq('open')
            end
          end
        end
        
        context 'record does not exist' do
          before do
            do_request(id: 0, checkin: @checkin, checkout: @checkout)
          end
          
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
  
  describe 'DELETE #destroy' do
    delete '/time_tables/:id' do
      context 'user is not signed in' do
        before do
          do_request(id: user_time_table.id)
        end
        
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
          do_request(id: user_time_table.id)
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
        end
        
        context 'record exists' do
          before do
            do_request(id: user_time_table.id)
          end
          
          it 'returns status 200' do
            is_successfull
          end
          
          it 'renders success message' do
            expect(json['message']).to match(/Time table was deleted successfully/)
          end
        end
        
        context 'record does not exist' do
          before do
            do_request(id: 0)
          end
          
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
end