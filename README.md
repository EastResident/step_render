# StepRender
It is very easy to enable lazy loading of partial with scroll in views.

You only use `step_render` method instead of `render` method.

Likewise, you can lazy load a fragment cache.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'step_render'
```

And then execute:
```bash
$ bundle
```

## Usage 1: Lazy Load Partial

### 1. Load javascript library

This plugin depends on [lazysizes](https://github.com/aFarkas/lazysizes).
If you do not import lazysizes to your application, load `import_step_render` method in required view.

#### Example

`application.html.erb`
```html
<head>
  ~~~
  ~~~
  <%= import_step_render %>
  ~~~
</head>
```

### 2. Use `step_render` method instead of `render` method

Replace `render` helper method used to rendering the partial with `step_render`.
Partial must be specified as an absolute path.

#### Example

`app/views/top/index.html.erb`
```html
<%= step_render 'top/partial_name' %>
```

## Usage 2: Lazy Load fragment cache

### 1. Load javascript library

### 2. Use `step_cache` method instead of `cache` method

Replace `cache` helper method used to fragment cache with `step_render`.

#### Example

`app/views/top/index.html.erb`
```html
<%= step_cache 'cache_key', skip_digest: true, expires_in: 24.hours %>
  ~~~
  ~~~html tags
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
