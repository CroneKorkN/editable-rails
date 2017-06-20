require "editable/version"

module Editable
  module Rails
    class Engine < ::Rails::Engine
    end
  end

  module EditableHelper
    def editable(
        object,
        method,
        display:      :name,
        display_with: nil,
        tag:          :span,
        trigger:      :auto,
        label:        :name
      )

      value           = object.send(method)
      model           = object.class.model_name.singular
      id              = object.send object.class.primary_key
      url             = url_for(object)
      identifier      = "#{method}_#{model}_#{id}"
      datatype        = object.class.columns_hash[method.to_s].type
      display_value   = display_with ? send(display_with, value) : value

      "<#{tag.to_s} class=\"editable\"\
      data-editable=\"#{identifier}\"\
      data-editable-model=\"#{model}\"\
      data-editable-id=\"#{id}\"\
      data-editable-method=\"#{method}\"\
      data-editable-datatype=\"#{datatype}\"\
      data-editable-value=\"#{value}\"\
      data-editable-url=\"#{url}\"\
      data-editable-display-with=\"#{display_with}\">
        #{display_value}
      </#{tag.to_s}>
      ".html_safe
    end
  end
end

ActiveSupport.on_load( :action_view ){ include Editable::EditableHelper }
