We will use a familiar article app to help illustrate how `flash` can be used to display messages.

### Learning Goals

* Understand the difference between `flash` and `flash.now`
* Learn how to dynamically populate an error and success message

### Setup

```no-highlight
et get flash-messages
cd flash-messages
bundle exec bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

### Flash Setup

The "flash hash" is a ruby hash that we can store information in-between requests (essentially making HTTP less stateless!).
Essentially, we can store a variable in a ruby hash that exists only for 1-2 request/response cycles.
Once those cycles have completed, our flash hash will cleared so that information doesn't get stale.

Imagine we want to give our user two different experiences:
- if they fill out a form correctly, we want to show a nice success message
- if they fill out our form INCORRECTLY, we want to show an error message

With the flash hash, we can simply pass in a `flash[:notice]` message with either a successful or error message.

```ruby
post "/articles/new" do
    @article = Article.new(params[:title].....)

    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect  "/articles"
    else
      flash.now[:error] = 'You messed up the form. Please fill out all fields correctly'
      erb :'articles/new'
    end
  end
```

The flash hash is very much a normal hash, so we can store information in it in the standard Ruby way.

For our happy path `flash[:notice] = 'Article was successfully created.'` adds the success message to the hash

Then, if we have the following html in our `layout.erb` (layout) page...

```erb
<% if flash.any? %>
  <div class="flash">
    <% flash.each do |name, msg| %>
       <div class="callout <%= "#{name}" %>">
         <%= msg %>
       </div>
    <% end %>
  </div>
<% end %>
```

...the message will be properly displayed within a div with a dynamically generated class name.

This effectively shows any flash key value you pair that you send to be shown. Its important that it be on the layout page in order for it to show up regardless of where you redirect the user.

Then it will display that message at the top of the page. Once we click away, the flash hash will be cleared and we no longer will see our message.

Note that our sad path was slightly different.

```ruby
post "/articles/new" do
    @article = Article.new(params[:title].....)

    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect  "/articles"
    else
      flash.now[:error] = 'You messed up the form. Please fill out all fields correctly'
      erb :'articles/new'
    end
  end
```

We use `flash.now`. Essentially, we are telling the flash hash "don't wait for another request cycle to show the message, instead show the flash message on the response of the current request."

Finally, we could have our error generated dynamically from ActiveRecord validations if we change the error flash like so.

flash[:error] = @article.errors.full_messages.to_sentence

And thats all you need to know!

### Summary

Using flash can be a great way to give users descriptive feedback when submitting a form online. It is important to make sure that `flash` and `flash.now` are both being used at the appropriate times to avoid a poor user experience.

### External Resources

[FlashHash API Doc](https://api.rubyonrails.org/classes/ActionDispatch/Flash/FlashHash.html)

Brief on sessions: https://www.justinweiss.com/articles/how-rails-sessions-work/ (only the first 2-3 sections)
