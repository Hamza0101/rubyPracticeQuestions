# frozen_string_literal: true

# password generator in ruby
require 'byebug'

class PasswordGenerator # rubocop:disable Style/Documentation
  @length_of_password = 0

  @alphabets = 0
  @numeric = 0
  @special_characters = 0

  def set_function(alphabet, numeric, special_character)
    @alphabets = validate_length(alphabet)
    @numeric = validate_length(numeric)
    @special_characters = validate_length(special_character)
    @length_of_password = @alphabets + @numeric + @special_characters
  end

  def validate_length(length)
    length < 7 ? 7 : length
  end

  def alphabets_generator
    return -1 if @alphabets <= 0

    @alphabets -= 1
    rand(65..91)
  end

  def numeric_generator
    return -1 if @numeric.negative?

    @numeric -= 1
    rand(48..57)
  end

  def symbol_generator
    # byebug
    return -1 if @special_characters.negative?

    @special_characters -= 1
    rand(32..47)
  end

  def choice_function(choice)
    case choice
    when 0
      alphabets_generator
    when 1
      numeric_generator
    else
      symbol_generator
    end
  end

  def password_generator # rubocop:disable Metrics/MethodLength
    @generated_password = ''
    i = 0
    while i < @length_of_password
      choice = rand(0..2)

      # byebug #if choice_function(choice).chr.nil?
      pass = choice_function(choice)
      if pass.negative?
        i -= 1
      else
        @generated_password += pass.chr
      end

      # @generated_password[i] = @generated_password[i].chr
      i += 1
    end
  end

  def display_password
    i = 0
    while i < @generated_password.length
      print(@generated_password[i])
      i += 1
    end
    print("\n")
  end
end

def main
  my_password = PasswordGenerator.new
  my_password.set_function(4, 1, 1)
  my_password.password_generator
  my_password.display_password
end

main

# attr_accessor
# attr_reader
# attr_writer
