class UserResultBuilder < ResultBuilderBase
  def autocomplete_hint
    "Name: #{record.name}, Country: #{record.country}, City: #{record.city}"
  end
end
