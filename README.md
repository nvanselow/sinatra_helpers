# Sinatra Helpers
Dealing with forms in Sinatra has been tricky, so I created the modules here to help make it a little less painful. It currently only
helps create `<select>`, but others will probably be added in the future.

## SelectHelper

**Purpose:** This helper creates a select box with an array of options. It will also select a specific option if a current one is provided.

*Instructions:*

1. Download the `input_helper.rb` file from the `modules` folder and include it in your project

2. In your main Sinatra app (usually `server.rb`), make sure to `require_relative "input_helper.rb"` (depending on where you save the file,
require_relative may need to include a path (e.g., `require_relative "helpers/input_helper.rb"`)

3. In the main Sinatra app (usually `server.rb`), add the following line at the top somewhere - `include InputHelper`

4. In your view (e.g., `new.erb`), you can now use the following:

```
<%= create_select(name_of_select, options, currently_selected_option) %>
```
(*Note:* Options is an array of strings in the current version)
(*Note:* Make sure to use the snowcones with the equal sign)
