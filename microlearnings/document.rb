# frozen_string_literal: true

require "roda"

class Microlearnings::Document < Roda
  route do |r|
    r.get do
      ['1', '2', '3'].join(', ')
    end

    r.get Integer do |id|
      id.to_s
    end
  end
end

