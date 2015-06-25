# Like Sweet Potato Casserole

You're going to make a big sweet mashup.

Sorry. Carb Day coming. I'm distracted.

Make something interesting by combining two APIs.

# In Your API

> [API -- Application Programming Interface](http://en.wikipedia.org/wiki/Application_programming_interface)

Some APIs (or [Web Services](http://en.wikipedia.org/wiki/Web_service)) provide completely _public_ data, that requires no authentication. Others, like the Github API, have some public data and some protected by authentication. Some are only accessible by **authenticating**, and most require authentication so that we can create resources. One of the most
common authentication schemes is OAuth2.

You're free to use your own API finds, of course. Also bear in mind that
the bigger and more popular an API is, the better the chance that some
kind soul has wrapped its interface in a gem. Using those is fine.

The following is a large list of APIs that provide a mix of public services and services accessible via authentication:

## Social APIs

- meetup - http://www.meetup.com/meetup_api/
- klout - https://klout.com/s/developers/v2
- twitter - https://dev.twitter.com/
    - twitter "intents" (put interactive widgets on your page and have someone tweet/reply to you via twitter) - https://dev.twitter.com/docs/intents
    - twitter for websites (follow button, embed tweets on a page) - https://dev.twitter.com/docs/tfw
    - REST API (uses OAuth) - https://dev.twitter.com/docs/api/1.1
- facebook - https://developers.facebook.com/
- linkedin - https://developer.linkedin.com/apis
- foursquare - https://developer.foursquare.com/
- yelp - http://www.yelp.com/developers/documentation/v2/search_api
- github - https://developer.github.com/v3/

## Food-related APIs

- Yummly - https://developer.yummly.com/

## Government and Civil APIs

- Capitol Words - http://capitolwords.org/term/code/?search=1
- CDC - https://data.cdc.gov/ and http://wonder.cdc.gov/
- Federal Data.gov project - https://www.data.gov/developers/apis

## Weather APIs

- Forecast.io - https://developer.forecast.io/

## Google APIs

- https://developers.google.com/api-client-library/ruby/start/get_started 
- https://developers.google.com/apis-explorer/#p/

- maps, directions, geocoder, places, etc - https://developers.google.com/maps/documentation/webservices/
- feed - https://developers.google.com/feed/v1/devguide
- plus - https://developers.google.com/+/web/
- static maps - just a url for an image, e.g.:

    > http://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318&markers=color:red%7Clabel:C%7C40.718217,-73.998284

- streetview api - again just a url, e.g.: http://maps.googleapis.com/maps/api/streetview?size=400x400&location=40.720032,-73.988354&fov=90&heading=235&pitch=10
- tasks - https://developers.google.com/google-apps/tasks/v1/reference/tasks/update
- Google custom search engine - https://developers.google.com/custom-search/json-api/v1/overview

## Music and Video APIs

- Spotify - https://developer.spotify.com/
- Soundcloud - https://developers.soundcloud.com/
- Deezer - http://developers.deezer.com/
- Grooveshark - http://developers.grooveshark.com/
- Rdio - http://www.rdio.com/developers/
- YouTube - https://developers.google.com/youtube/v3/getting-started
- Vimeo - https://developer.vimeo.com/
- BandsInTown - http://www.bandsintown.com/api/overview
- Dolby Audio - http://developer.dolby.com/

## Image APIs

- Flickr - https://www.flickr.com/services/api/
- PlaceKitten - http://placekitten.com/
- PlaceBacn - http://placebacn.com/
- LoremPixel - http://lorempixel.com/

## File and Data Storage APIs

- Dropbox - https://www.dropbox.com/developers/datastore


- AWS - http://aws.amazon.com/sdk-for-browser/
- Firebase - https://www.firebase.com/how-it-works.html

- Meteor (has a deploy tool just like heroku, comes with front end and back end code) - http://docs.meteor.com/#top

## Payments, Credit Card Processing, and Shopping Carts

- Stripe - https://stripe.com/docs/api 
- Braintree - https://developers.braintreepayments.com/
- Paypal - https://developer.paypal.com/docs/api/
- Snipcart - https://snipcart.com/
- Gumroad - "Buy button right on your site" - https://gumroad.com/overlay
    - also, embed a product widget right on site - https://gumroad.com/embed
    - https://gumroad.com/api
- Helium - https://gethelium.com/

## Other / HackerNews / Startup-y APIs

- Producthunt - https://github.com/karan/Hook
- Trello - https://trello.com/docs/
- HackerNews - http://api.ihackernews.com/
- https://github.com/HackerNews/API
- Track Ships / Vessels - http://www.fleetmon.com/faq/public_api
- Wikipedia - http://www.mediawiki.org/wiki/API:Main_page
- Untappd - https://untappd.com/api/docs
- BreweryDB - http://www.brewerydb.com/developers
- 23andme - https://api.23andme.com/
- NYT - http://developer.nytimes.com/docs
- NPR - http://dev.npr.org/
- EasyPost - Shipping integration and postage ordering with FedEx/UPS/USPS/DHL - https://www.easypost.com/
- Wit - natural language processing - http://labs.wit.ai/demo/index.html
- Nest - https://developer.nest.com/documentation/control
- FlightAware - http://flightaware.com/commercial/flightxml/
- IMDB / OMDB - http://www.omdbapi.com/

## Dictionary / Words / Thesaurus APIs

- DictionaryAPI - http://dictionaryapi.com/ - example at http://whispering-island-7828.herokuapp.com/#magic

## GIFs

- https://github.com/giphy/GiphyAPI

## Real Estate APIs

- Trulia - http://developer.trulia.com/
- Zillow - http://www.zillow.com/howto/api/PropertyDetailsAPIOverview.htm
- http://www.getziptastic.com/

## Job APIs

- USA jobs - http://search.digitalgov.gov/developer/jobs.html
- http://www.authenticjobs.com/api/documentation/
- possible XML API: http://www.indeed.com/jsp/apiinfo.jsp
- API for LinkedIn Jobs: https://developer.linkedin.com/docs/
- Stack Overflow XML feed: http://careers.stackoverflow.com/jobs/feed?searchTerm=ruby&location=fl&range=160&distanceUnits=Miles

## Transportation APIs

- Uber - https://developer.uber.com/

## Real Devices

- The LEAP Motion - https://www.leapmotion.com/ - https://developer.leapmotion.com/documentation/skeletal/javascript/index.html
- Oculus - http://www.oculus.com/dk2/ - https://github.com/Instrument/oculus-bridge
- Tessel - https://tessel.io/ - https://tessel.io/docs
- Nest - https://nest.com/ - https://developer.nest.com/documentation/control - https://developer.nest.com/documentation/alert


