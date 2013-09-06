module Views
  class Katas::New < ActionView::Mustache
    def form
      simple_form_for @kata do |f|
        f.input :name
        f.input :description
        f.input :text
        f.button :submit
      end
    end
  end
end
