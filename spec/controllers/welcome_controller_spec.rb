require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  setup do 
    @user = User.create!(name: 'name', email: 'email.@email.com')
    @user2 = User.create!(name: 'name2', email: 'email2@email.com')
  end

  it "should render the index view without a user" do 
    get :index
    expect(response).to eq(:success)
  end

  it "should render the dashboard view with the angular template" do 
    sign_in @user 
    get :dashboard
    expect(response).to render_template(:dashboard)
    expect(response).to render_template(layout: "layouts/angular")
  end

  it "should redirect from dashboard view to index without a user" do 
    get :dashboard
    expect(response).to eq(:redirect)
  end 
end
