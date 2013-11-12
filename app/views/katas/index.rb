module Views
  class Katas::Index < ActionView::Mustache
    def katas
      @katas.map do |kata|
        {
          path: kata_path(kata.id),
          name: kata.name,
          difficulty: "normal",
          description: "A simple kata"
        }
      end
    end

    def featured_kata_path
      kata_path(Kata.last)
    end
  end
end
