require "colorize"

module ColorfulReading
  class Colors
    COLORS = {
      nn: :green,
      pr: :blue,
      vb: :red,
      jj: :yellow,
      rb: :blue,
      de: :magenta,
      in: :magenta,
      cc: :cyan,
      w:  :cyan,
    }

    def self.colorize(tagged_text)
      COLORS.each do |prefix, color|
        tagged_text.gsub!(/<#{prefix}\w*>(.+?)<\/#{prefix}\w*>/) do
          $1.colorize(color)
        end
      end
      tagged_text.gsub!(/<\w+>([^<]+)<\/\w+>/) { $1 }
      tagged_text
    end
  end
end
