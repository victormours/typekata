module Views
  class Katas::Show < ActionView::Mustache
    def text
      @kata.text
    end

    def name
      @kata.name
    end

    def language
      @kata.language.name
    end
  end
end
