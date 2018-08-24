require 'rails_helper'

RSpec.describe AnimeBlogsController, type: :controller do
  it "GET index" do
    get :index
    expect(response).to render_template(:index)
    expect(response).to have_http_status(:ok)
  end

  it "POST create" do
    post 'create', params:{anime_blog:{anime_name: 'Another'}}
    expect(response).to redirect_to(anime_blog_path(assigns(:blog)))
    expect(assigns(:blog)).to be_an_instance_of(AnimeBlog)
  end

end
