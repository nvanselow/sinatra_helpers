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
end
