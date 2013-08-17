module Views
  class Katas::Index < ActionView::Mustache
    def katas
      @katas.map do |kata|
        {
          id: kata.id,
          name: kata.name,
          difficulty: "normal",
          description: "A test kata"
        }
      end
    end
  end
end
