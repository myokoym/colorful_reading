require "engtagger"

module ColorfulReading
  class Tagger
    def initialize
      @tagger = EngTagger.new
    end

    def tagging(text)
      @tagger.add_tags(text)
    end
  end
end
