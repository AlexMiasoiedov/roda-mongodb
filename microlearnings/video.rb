# frozen_string_literal: true

require "roda"

module Microlearnings
  class Video < Roda
    route do |r|
      r.is do
        ['1', '2', '3'].join(', ')
      end

      r.is Integer do |id|
        id.to_s
      end
    end
  end
end

