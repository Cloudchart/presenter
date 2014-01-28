module Presenter
  module Helpers

    module View
      def present(object, klass = nil)
        klass ||= "#{object.class}Presenter".constantize
        presenter = klass.new(object, self)
        yield presenter if block_given?
        presenter
      end

    end

    module Controller
      def present(object, klass = nil)
        klass ||= "#{object.class}Presenter".constantize
        klass.new(object, view_context)
      end

    end
    
  end
end
