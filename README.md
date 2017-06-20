# editable-rails

Make ActiveRecord-objects editable from frontend.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'editable'
```

## Usage

`app/assets/javascripts/application.js`:

```javascript
// ...
//= require jquery
//= require editable
// ...
$(document).ready(function(){
  $(this).find("[data-editable]").each(function(){
    // apply aditable independantly. otherwise cant distinguish elements from within editable-plugin
    $(this).editable();
  });
});
// ...
```
