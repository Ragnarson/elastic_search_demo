class HouseResultBuilder < ResultBuilderBase
  def autocomplete_hint
    "City: #{record.city}, Information: #{record.information}"
  end
end
