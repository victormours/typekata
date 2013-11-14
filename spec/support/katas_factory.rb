module KataFactory
  def self.create(attributes=default_attributes)
    Kata.create!(attributes)
  end

  private

  def self.default_attributes
    {
      name: "My kata",
      description: "A kata fabricated for testing",
      text: "puts 'Hello world!'",
      language: Language.last || LanguageFactory.create
    }
  end

  def language

  end
end
