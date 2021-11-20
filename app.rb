require "roda"
require "./microlearning"

class App < Roda
  route do |r|
    r.root do
      "welcome!!!"
    end

    r.run Microlearning
  end
end

