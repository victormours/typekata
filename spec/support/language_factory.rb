module LanguageFactory
  def self.create(attributes=default_attributes)
    Language.create!(attributes)
  end

  private

  def self.default_attributes
    {
      name: "javascript"
    }
  end
end
