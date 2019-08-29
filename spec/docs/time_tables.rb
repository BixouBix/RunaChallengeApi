module Docs
  module TimeTables
    extend Dox::DSL::Syntax
    document :api do
      resource 'TimeTables' do
        endpoint '/time_tables'
        group 'TimeTables'
        desc 'time_tables.md'
      end
    end
    
    document :index do
      action 'Retrieves time tables collection'
    end
    
    document :show do
      action 'Retrieves specific time table'
    end
    
    document :by_user do
      action 'Retrieves a collection of time tables belonging to a specific user'
    end
    
    document :register do
      action 'Registers a user chekin/checkout'
    end
    
    document :update do
      action 'Updates a time table (admin only)'
    end
    
    document :destroy do
      action 'Deletes a time table (admin only)'
    end
  end
end