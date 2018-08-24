require 'rails_helper'

RSpec.describe AnimeBlogsController, type: :controller do

  before(:each) do
    @anime_blog = AnimeBlog.new(anime_name: 'Another')
    @anime_blog.save
  end


  it "GET index" do
    get :index
    expect(response).to render_template(:index)
  end

  it "POST create" do
    post 'create', params:{anime_blog:{anime_name: 'Another'}}
    expect(response).to redirect_to(anime_blog_path(@anime_blog.id+1))
    expect(assigns(:blog)).to be_an_instance_of(AnimeBlog)
  end

end
