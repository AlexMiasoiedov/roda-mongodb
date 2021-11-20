require "roda"
require "./learning"

require 'mongoid'
Mongoid.load!(File.join(File.dirname(__FILE__), 'config', 'mongoid.yml'))

require 'dotenv'
Dotenv.load

class App < Roda
  route do |r|
    r.root do
      "welcome!!!"
    end

    r.run Learning
  end
end
