# frozen_string_literal: true

module PandaDoc
  module Objects
    class Person < Base
      attribute? :id, Types::Coercible::String.optional
      attribute? :email, Types::Coercible::String
      attribute? :first_name, Types::Coercible::String.optional
      attribute? :last_name, Types::Coercible::String.optional
      attribute? :membership_id, Types::Coercible::String.optional
    end
  end
end