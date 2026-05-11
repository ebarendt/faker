# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerSolana < Test::Unit::TestCase
  def setup
    @tester = Faker::Blockchain::Solana
  end

  def test_address
    assert_match(/\A[1-9A-HJ-NP-Za-km-z]{32,44}\z/, @tester.address)
  end

  def test_deterministic_address
    Faker::Config.random = Random.new(42)
    v = @tester.address
    Faker::Config.random = Random.new(42)

    assert_equal v, @tester.address
  end
end
