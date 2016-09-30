module UsersHelper
  def height_form_column(record, options)
    "#{select_tag 'record[feet]', options_for_select((1..8).to_a, options[:object][:feet])} #{select_tag 'record[inches]', options_for_select((1..12).to_a, options[:object][:inches])}"
  end

  def height_column(record, column)
    "#{record.feet}' #{record.inches}\""
  end
end
