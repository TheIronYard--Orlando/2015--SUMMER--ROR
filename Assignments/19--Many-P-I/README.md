# Not Just *A*PI, *many* PI

A short list of tasks for today; make your own checkboxes.

* Join Meetup (if you haven't already)

* Join the Meetup API Testing Sandbox group (through the website)

* Take note of your own API key

* Send in an RSVP for "event o" (through irb)

* Post an event_comment for the same event (through irb)

* Join the University Ruby meetup group (through the website, if you haven't already)

* Send in an RSVP for tonight's meetup (through irb, if you haven't already)

* Post an event_comment for tonight's University Ruby meetup (through irb)

* Get into a favorite API from Mashape or StackOverflow or Meetup, grab a big collection of data, and parse it.

The problem I had in trying to post to the Meetup API was that I didn't read the HTTParty documentation closely enough.

The API wanted parameters like member_id and key, and I tried to put those in a hash as an argument to HTTParty.get
like 
```ruby
HTTParty.get("https://api.meetup.com/2/rsvp", 
member_id: "self", key: "SOME_LONG_PRIVATE_DATA", rsvp: "yes" event_id: 118)
```

-but that doesn't quite work. HTTParty wants my hash wrapped in its own hash:
```ruby
HTTParty.get("https://api.meetup.com/2/rsvp", query: { 
member_id: "self", key: "SOME_LONG_PRIVATE_DATA", rsvp: "yes" event_id: 118 
})
```

So, let that be a lesson for all of us.
