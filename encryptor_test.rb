require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'key_generator'
require_relative 'encryptor'
require_relative 'enigma'
require 'pry'

class EncryptorTest < Minitest::Test

  def test_can_encrypt_a_string
    e = Encryptor.new("string", 12345)
    e.encrypt_message

    assert_equal "4fotz5", e.encrypted_message
  end

  def test_can_encrypt_a_string_with_no_key_given
    e = Encryptor.new("string")
    e.encrypt_message

    assert_equal "4fotz5", e.encrypted_message
  end

end
  #
  #   assert_equal 12345, kg.key
  #   assert_equal 12, kg.a_key_offset
  #   assert_equal 23, kg.b_key_offset
  #   assert_equal 34, kg.c_key_offset
  #   assert_equal 45, kg.d_key_offset
  # end
  #
  # def test_can_generate_key_offsets_from_key_all
  #   kg = KeyGenerator.new(12345)
  #   kg.generate_key_offsets
  #
  #   assert_equal 12, kg.a
  #   assert_equal 23, kg.b
  #   assert_equal 34, kg.c
  #   assert_equal 45, kg.d
  # end
