#
# class Person; end
#
# describe 'TestCheckedAttribute' do
#   before do
#     add_checked_attribute(Person, age)
#     @bob = Person.new
#   end
#
#   it 'test_accepts_valid_values' do
#     @bob.age = 20
#     expect(@bob.age).to eq(20)
#   end
#
#   it 'test_refuses_nil_values' do
#     assert_raises RuntimeError, 'Invalid attribute' do
#       @bob.age = nil
#     end
#   end
#
#   it 'test_refuses_false_values' do
#     assert_raises RuntimeError, 'Invalid attribute' do
#       @bob.age = false
#     end
#   end
# end
require 'test/unit'
class Person; end
class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age)
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = nil
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = false
    end
  end
end

def add_checked_attribute(klass, attribute)
  klass.class_eval do
    define_method "#{attribute}=" do |value|
      raise 'Invalid attribute' unless value
      instance_variable_set("@#{attribute}", value)
    end

    define_method attribute do
      instance_variable_get "@#{attribute}"
    end
  end
end
