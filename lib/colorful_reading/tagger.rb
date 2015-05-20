require "engtagger"

module ColorfulReading
  class Tagger
    def initialize
      @tagger = EngTagger.new
    end

    def tagging(text)
      facing_spaces = text.scan(/\A\s+/).first || ""
      tagged_text = @tagger.add_tags(text) || ""
      facing_spaces + tagged_text
    end
  end
end
