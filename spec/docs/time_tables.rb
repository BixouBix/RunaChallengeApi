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
    
    document :index_user do
      action 'Get all time tables (as user)'
    end
    
    document :index_admin do
      action 'Get all time tables (as admin)'
    end
    
    document :show_user do
      action 'Get time table (as user)'
    end
    
    document :show_admin do
      action 'Get time table (as admin)'
    end
    
    document :by_user do
      action 'Request user time tables'
    end

    document :checkin do
      action 'User checks in'
    end
    
    document :checkout do
      action 'User checks out'
    end
    
    document :update do
      action 'Update time table (as admin)'
    end
    
    document :delete do
      action 'Delete time table (as admin)'
    end
  end
end