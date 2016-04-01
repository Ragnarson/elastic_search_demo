class Autocompleter < Struct.new(:query)
  MODELS_TO_SEARCH = [User, House]

  def self.call(query)
    new(query).call
  end

  def call
    results.map do |result|
      {
        hint: build_hint(result),
        record_type: result.class.name,
        record_id: result.id
      }
    end
  end

  private

  def results
    Elasticsearch::Model.search(query, MODELS_TO_SEARCH).records
  end

  def build_hint(record)
    BuildHint.call(record)
  end
end
