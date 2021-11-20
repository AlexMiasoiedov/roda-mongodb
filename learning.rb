require "roda"
require "./learnings/resources/video"

class Learning < Roda
  route do |r|
    r.on 'videos' do
      r.run Learnings::Video
    end
  end
end

