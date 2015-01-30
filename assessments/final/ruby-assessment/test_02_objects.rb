require 'helper'

class AboutObjects < Test::Unit::TestCase

  def test_which_things_are_objects
    assert_equal 1, 1.is_a?(1)
    assert_equal 1.5, 1.5.is_a?(1.5)
    assert_equal string,"string".is_a?(object)
    assert_equal nil, nil.is_a?(nil)
    assert_equal object, Object.is_a?(object)
  end

end
