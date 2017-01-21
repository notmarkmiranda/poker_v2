require "rails_helper"

RSpec.describe UsersController, type: :controller do
  it "GET sign-up" do
    get :new
    expect(response).to render_template(:new)
  end

  it "assigns @user" do
    get :new
    expect(assigns[:user]).to be_a_new(User)
  end
end
