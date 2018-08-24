require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  it "should assign @var" do
    get :index
    expect(assigns(:var)).to eq("Patel")
  end

  it "GET japanese should redirect welcome/index" do
    get :japanese
    expect(response).to redirect_to(welcome_index_url)
  end
end
