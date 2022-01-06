# frozen_string_literal: true

module PandaDoc
  module Objects
    class Template < Base
      attribute :id, Types::String
      attribute :date_created, Types::Params::DateTime
      attribute :date_modified, Types::Params::DateTime
      attribute? :tokens, Types::Array.of(Objects::Token)
      attribute? :fields, Types::Array.of(Objects::Field)
    end
  end
end
