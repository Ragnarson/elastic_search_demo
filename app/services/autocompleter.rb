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
    case record.class.to_s
    when "User" then "Name: #{record.name}, Country: #{record.country}, City: #{record.city}"
    when "House" then "City: #{record.city}, Information: #{record.information}"
    end
  end
end
