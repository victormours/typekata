module Secrets
  def self.[](key)
    ENV[key]
  end
end
