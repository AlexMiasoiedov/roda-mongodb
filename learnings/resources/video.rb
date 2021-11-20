# frozen_string_literal: true

require "roda"
require "./learnings/models/video"

module Learnings
  class Video < Roda
    route do |r|
      r.is do
        Video.all.to_json
      end

      r.is Integer do |id|
        video = Video.find(id)
        video.attributes.to_json
      end
    end
  end
end

