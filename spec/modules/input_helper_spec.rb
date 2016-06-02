require 'spec_helper'

class DummyClass
  include InputHelper
end

describe InputHelper do
  let(:select_name) { 'my_select' }
  let(:options) { ['option 1', 'option 2'] }
  let(:selected) { 'option 2' }
  let(:helper) { DummyClass.new }

  describe ".create_select" do
    it "creates a select with options" do
      select_string = "<select name=\"my_select\" id=\"my_select\"><option value=\"option 1\">option 1</option><option value=\"option 2\" selected>option 2</option></select>"

      expect(helper.create_select(select_name, options, selected)).to eq(select_string)
    end
  end

  describe ".create_radio_buttons" do
    it "creates a list of radio buttons" do
      radio_string = "<input type=\"radio\" name=\"my_select\" id=\"my_select\" value=\"option 1\" /> option 1<br /><input type=\"radio\" name=\"my_select\" id=\"my_select\" value=\"option 2\" checked /> option 2<br />"

      expect(helper.create_radio_buttons(select_name, options, selected)).to eq(radio_string)
    end
  end
end
