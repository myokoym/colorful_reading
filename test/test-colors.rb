require "colorful_reading/colors"

class ColorsTest < Test::Unit::TestCase
  include ColorfulReading

  class ColorizeTest < self
    def test_nn
      assert_equal("\e[0;32;49mdata\e[0m", Colors.colorize("<nn>data</nn>"))
    end

    def test_nnp
      assert_equal("\e[0;32;49mVenice\e[0m", Colors.colorize("<nnp>Venice</nnp>"))
    end
  end
end
