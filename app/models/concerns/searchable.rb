require "elasticsearch/model"

module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model

    after_commit do
      __elasticsearch__.index_document
    end
  end
end
