# frozen_string_literal: true

module PandaDoc
  module Objects
    class Recipient < Person
      attribute? :recipient_type, Types::Coercible::String
      attribute? :has_completed, Types::Params::Bool
      attribute? :role, Types::Coercible::String.optional
      attribute? :type, Types::Coercible::String.optional
      attribute? :signing_order, Types::Coercible::Integer.optional
    end
  end
end
