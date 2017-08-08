# Rubocop Template

My `.rubocop.yml` template as a separated ruby gem.

## Thanks

This gem was inspired by [percy-style](https://github.com/percy/percy-style). Check it out, and read an article: [Share RuboCop rules across all of your repos](https://blog.percy.io/share-rubocop-rules-across-all-of-your-repos-f3281fbd71f8).

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'rubocop-template'
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'rubocop-template'
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  rubocop-template: default.yml
inherit_from: .rubocop_todo.yml
```

Now, use rubocop through `bundle exec`:

```bash
$ bundle exec rubocop --auto-gen-config
$ bundle exec rubocop -a
```

Also you do not need to include rubocop gem directly in your application's dependences. Rubocop-template will include a specific version of `rubocop` automatically.
