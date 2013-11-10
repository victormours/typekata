class Kata < ActiveRecord::Base
  validates :name, presence: true
  validates :text, presence: true
  validates :language, presence: true

  belongs_to :language
end
