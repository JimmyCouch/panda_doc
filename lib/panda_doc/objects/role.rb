# frozen_string_literal: true

module PandaDoc
  module Objects
    class Role < Base
      attribute :id, Types::Strict::String
      attribute :name, Types::Strict::String
      attribute :signing_order, Types::Coercible::Integer.optional
      attribute? :preassigned_person, Types::String.optional
    end
  end
end