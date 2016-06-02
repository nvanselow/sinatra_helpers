module InputHelper
  def create_select(name, options, selected = nil)
    input_string = "<select name=\"#{name}\" id=\"#{name}\">"

    options.each do |option|
      input_string << "<option value=\"#{option}\""
      input_string << "#{selected?(selected, option)}>"
      input_string << "#{option}</option>"
    end
    input_string << "</select>"

    input_string
  end

  def create_radio_buttons(name, options, selected = nil)
    input_string = ""

    options.each do |option|
      input_string << radio_button_string(name, option, selected)
    end

    input_string
  end

  private

  def selected?(current_value, option_value)
    " selected" if current_value == option_value
  end

  def radio_button_string(name, option, selected = nil)
    radio_string = "<input type=\"radio\" "
    radio_string << "name=\"#{name}\" "
    radio_string << "id=\"#{option}\" "
    radio_string << "value=\"#{option}\" "
    radio_string << "checked " if selected == option
    radio_string << "/> #{option}<br />"
    radio_string
  end
end
