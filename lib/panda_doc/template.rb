# frozen_string_literal: true

module PandaDoc
  module Template
    extend self

    def details(uuid)
      respond(ApiClient.request(:get, "/templates/#{uuid}/details"))
    end

    private

    def respond(response, type: :template)
      puts response.body
      failure(response)
      SuccessResult.new(ResponseFactory.build(type).new(response.body))
    end

    def failure(response)
      fail FailureResult.new(response) unless response.success?
    end

  end
end