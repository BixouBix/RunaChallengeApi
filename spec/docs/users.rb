module Docs
  module Users
    extend Dox::DSL::Syntax
    document :api do
      resource 'Users' do
        endpoint '/users'
        group 'Users'
        desc 'users.md'
      end
    end
    
    document :index do
      action 'Get all users'
    end
    
    document :create do
      action 'Create a new user'
    end
    
    document :show do
      action 'Get a user'
    end
    
    document :update do
      action 'Update a user'
    end
    
    document :destroy do
      action 'Delete a user'
    end
  end
end