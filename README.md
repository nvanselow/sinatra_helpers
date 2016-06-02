# Sinatra Helpers
Dealing with forms in Sinatra has been tricky, so I created the modules here to help make it a little less painful. It currently only
helps create `<select>`, but others will probably be added in the future.

There are some more complex functions available in [Sinatra::FormHelpers](http://www.rubydoc.info/github/BenFenner/sinatra-formhelpers-ng/Sinatra/FormHelpers)

## SelectHelper

**Purpose:** This helper creates a select box with an array of options. It will also select a specific option if a current one is provided.

*Instructions:*

1. Download the `input_helper.rb` file from the `modules` folder and include it in your project

2. In your main Sinatra app (usually `server.rb`), make sure to `require_relative "input_helper.rb"` (depending on where you save the file,
require_relative may need to include a path (e.g., `require_relative "helpers/input_helper.rb"`)

3. In the main Sinatra app (usually `server.rb`), add the following line at the top somewhere - `include InputHelper`

See below for different methods to use to create your form.

### Select List (Dropdown)

4. In your view (e.g., `new.erb`), you can now use the following:

```
<%= create_select(name_of_select, options, currently_selected_option) %>
```
(*Note:* Options is an array of strings in the current version)

(*Note:* Make sure to use the snow cones (`<%=`) with the equal sign)

### Radio buttons

4. In your view (e.g., `new.erb`), you can now use the following:

```
<%= create_radio_buttons(name_of_select, options, currently_selected_option) %>
```
(*Note:* ID will be set to the same as the option)

(*Note:* Options is an array of strings in the current version)

(*Note:* Make sure to use the snow cones (`<%=`) with the equal sign)
