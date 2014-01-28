module Presenter
  class Railtie < Rails::Railtie
    initializer 'presenter.helpers' do
      ActionView::Base.send :include, Helpers::View
      ActionController::Base.send :include, Helpers::Controller
    end

  end
end
