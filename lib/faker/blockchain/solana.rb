# frozen_string_literal: true

module Faker
  class Blockchain
    class Solana < Base
      class << self
        ##
        # Produces a random Solana wallet address: 32 random bytes base58-encoded.
        #
        # @return [String]
        #
        # @example
        #   Faker::Blockchain::Solana.address
        #     #=> "DRpbCBMxVnDK7maPM5tGv6MvB3v1sRMC86PZ8okm21hy"
        #
        # @faker.version next
        def address
          Faker::Base58.encode(Faker::Config.random.bytes(32))
        end
      end
    end
  end
end
