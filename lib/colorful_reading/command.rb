require "colorful_reading/tagger"
require "colorful_reading/colors"

module ColorfulReading
  class Command
    def self.run
      tagger = Tagger.new

      ARGF.readlines.each do |text|
        text.chomp!
        tagged_text = tagger.tagging(text)
        if tagged_text
          puts Colors.colorize(tagged_text)
        else
          puts text
        end
      end
    end
  end
end
