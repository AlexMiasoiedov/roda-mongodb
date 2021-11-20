require "roda"
require "./microlearnings/video"
require "./microlearnings/document"
require "./microlearnings/article"

class Microlearning < Roda
  route do |r|
    r.on 'videos' do
      r.run Microlearnings::Video
    end

    r.on 'documents' do
      r.run Microlearnings::Document
    end

    r.on 'articles' do
      r.run Microlearnings::Article
    end
  end
end

