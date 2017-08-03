require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def test_does_rocket_have_a_name
      #arrange
    rocket = new_rocket
      #act
    result = rocket.name
      #assert
    assert result
  end

  def test_rocket_given_a_name
      #arrange
    rocket = Rocket.new(name: 'nadia')
      #act
    result = rocket.name
      #assert
    assert_equal(result, 'nadia')
  end

  def test_does_rocket_have_a_colour
    #arrange
    rocket = new_rocket
    #act
    result = rocket.colour
    #assert
    assert result
  end

  def test_does_rocket_have_a_colour
    #arrange
    rocket = Rocket.new(colour: 'pink')
    #act
    result = rocket.colour
    #assert
    assert_equal(result, 'pink')
  end

  def test_is_not_rocket_flying
    #arrange
    rocket = new_rocket
    #act
    rocket.flying?
    #assert
    assert rocket.flying? != true
  end

  def test_is_rocket_flying
    #arrange
    rocket = Rocket.new(flying: true)
    #act
    rocket.flying?
    #assert
    assert rocket.flying? == true
  end

  def test_lift_off_flying
    #arrange
    rocket = new_rocket
    #act
    result = rocket.lift_off
    #assert
    assert(result, true)
  end

  def test_lift_off_flying
    #arrange
    rocket = Rocket.new(flying: true)
    #act
    result = rocket.lift_off
    #assert
    assert_equal(result, false)
  end

  def test_land
      #arrange
    rocket = new_rocket
      #act
    result = rocket.land
      #assert
    assert_equal(result, false)
  end

  def test_land_the_rocket
      #arrange
    rocket = new_rocket
      #act
    rocket.lift_off
    result = rocket.land
      #assert
    assert_equal(result, true)
  end

  def test_status
      #arrange
    rocket = Rocket.new(name: 'nadia')
      #act
    result = rocket.status
      #assert
    assert_equal(result, 'Rocket nadia is ready for lift off!')
  end

  def test_status
      #arrange
    rocket = Rocket.new(name: 'nadia')
      #act
    rocket.lift_off
    result = rocket.status
      #assert
    assert_equal(result, 'Rocket nadia is flying through the sky!')
  end



  def new_rocket
    rocket = Rocket.new
  end


end
