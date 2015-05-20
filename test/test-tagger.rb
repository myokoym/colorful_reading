require "colorful_reading/tagger"

class TaggerTest < Test::Unit::TestCase
  include ColorfulReading

  def setup
    @tagger = Tagger.new
  end

  def test_tagging
    assert_equal("<nnp>Ruby</nnp>", @tagger.tagging("Ruby"))
  end
end
