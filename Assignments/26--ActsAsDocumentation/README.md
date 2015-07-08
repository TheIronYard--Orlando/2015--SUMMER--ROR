# ActsAsDocumentation

There is a lot of documentation, of varying qualities, in the Rails source code itself. That documentation has been
extracted into a searchable site, api.rubyonrails.org. When you visit that site, you'll see a list of classes on the
left side of the page. Many of those have no documentation, and some of the remainder are esoteric, but there are a
bunch that have information that would be valuable now. Many of those are things we've talked about, but hopefully
reading will give a new perspective on how some things work. There are also some classes that have methods
that we haven't talked about and/or could bear further discussion (indicated with the `+ methods` notation). 
Read over these, and come in tomorrow with a list of 10 things you learned and 10 things you don't understand:

* ActionController::Base
* ActionController::Helpers
* ActionController::RequestForgeryProtection
* ActionDispatch::Routing
* ActionDispatch::Flash < Object
* ActionDispatch::Flash::FlashHash < Object
  * + methods
* ActionDispatch::Routing::UrlFor
* ActionDispatch::Routing::Mapper::Resources
  * + methods
* ActionDispatch::Routing::Mapper::Scoping
* ActionView::Base < Object (the ERB section, not Builder)
* ActionView::Helpers::DateHelper
  * + methods
* ActionView::Helpers::FormHelper
  * + methods
* ActionView::Helpers::FormOptionsHelper
* ActionView::Helpers::TextHelper
  * + methods
* ActionView::Helpers::UrlHelper
  * + methods
* ActionView::Layouts
* ActionView::PartialRenderer < ActionView::AbstractRenderer
* ActionView::RecordIdentifier
* ActiveSupport::NumberHelper
  * + methods
* DateAndTime::Calculations
* ActionView::Helpers::OutputSafetyHelper

## Gems

Outside of Rails there are a lot of commonly used gems, some of which turned up in the Rails Rumble projects.
Since the Rails documentation part of this got pretty long (and I stopped after ActionView!), I'll provide 
this list just for reference.

### Pagination

kaminari, will_paginate

### File upload

carrierwave, paperclip, dragonfly

### authorization

cancancan, pundit

### templating

haml, slim

### protecting secrets

dotenv, figaro

### Other

friendly_id - replace id's in URLs with nicer looking constructs based on string attributes

ffaker (yes, 2 f's) - fast way to generate lots of fake seed data

active_admin - slick interface for the admin section of a site

better_errors - informative error page for Rails apps

whenever - cron job scheduling

[and many more](http://www.quora.com/What-are-the-gems-every-Ruby-on-Rails-developer-should-know)

