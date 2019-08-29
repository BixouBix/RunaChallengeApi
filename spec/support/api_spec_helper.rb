module ApiSpecHelper
  def json
    JSON.parse(response.body)
  end
  
  def login(user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end
  
  def is_successfull
    expect(status).to eq(200)
  end
end