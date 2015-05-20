require "colorful_reading/tagger"

class TaggerTest < Test::Unit::TestCase
  include ColorfulReading

  def setup
    @tagger = Tagger.new
  end

  class TaggingTest < self
    def test_nnp
      assert_equal("<nnp>Ruby</nnp>", @tagger.tagging("Ruby"))
    end

    def test_facing_spaces
      assert_equal(" <nnp>Ruby</nnp>", @tagger.tagging(" Ruby"))
    end
  end
end
