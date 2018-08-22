class WelcomeController < ApplicationController
  def index
    @var = 'Patel'
    @hello = t('hello')
    @create = t('create')
    @view = t('view')
  end

  def japanese
    I18n.locale = 'ja'
    redirect_to welcome_index_url
  end

  def english
    I18n.locale = 'en'
    redirect_to welcome_index_url
  end
end
