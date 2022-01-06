# frozen_string_literal: true

module PandaDoc
  module Objects
    class Template < Base
      attribute :id, Types::String
      attribute :name, Types::String
      attribute :metadata, Types::Params::Hash.optional | Types::Coercible::String.optional
      attribute :pricing, Types::Params::Hash.optional | Types::Coercible::String.optional
      attribute :tags, Types::Params::Array.optional
      attribute :roles, Types::Array.of(Objects::Role)
      attribute :version, Types::String.optional
      attribute :content_placeholders, Types::Params::Array.optional
      attribute :images, Types::Params::Array.optional
      attribute :created_by, Objects::Recipient
      attribute :date_created, Types::Params::DateTime
      attribute :date_modified, Types::Params::DateTime
      attribute :tokens, Types::Array.of(Objects::Token)
      attribute :fields, Types::Array.of(Objects::Field)
    end
  end
end
