# StepRender
It is very easy to enable lazy loading of partial with scroll in views.

You only use `step_render` method instead of `render` method.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'step_render'
```

And then execute:
```bash
$ bundle
```

## Usage

1. Load javascript library

This plugin depends on [lazysizes](https://github.com/aFarkas/lazysizes).
If you do not import lazysizes to your application, load `import_step_render` method in required view.

#### Example

```html:application.html.erb
<head>
  ~~~
  ~~~
  <%= import_step_render %>
  ~~~
</head>
```

2. Use `step_render` method instead of `render` method

Replace `render` helper method used to rendering the partial with `step_render`.
Partial must be specified as an absolute path.

#### Example

```html:app/views/top/index.html.erb
<%= step_render 'top/partial_name' %>
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
