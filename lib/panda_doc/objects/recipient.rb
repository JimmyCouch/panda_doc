# frozen_string_literal: true

module PandaDoc
  module Objects
    class Recipient < Person
      attribute? :recipient_type, Types::Coercible::String
      attribute? :has_completed, Types::Params::Bool
      attribute? :role, Types::Coercible::String.optional
      attribute? :type, Types::Coercible::String.optional
      attribute? :roles, Types::Array.of(Types::Coercible::String)
      attribute? :contact_id, Types::Coercible::String.optional
      attribute? :shared_link, Types::Coercible::String.optional
    end
  end
end