rails-bootstrap-engine
======================

Ruby on Rails Engine for Twitter Bootstrap






## Using rails-bootstrap-engine

### Step 1

Install the gem:

```gem install rails-bootstrap-engine```

### Step 2

Add rails-bootstrap-engine to your GemFile:

```gem 'rails-bootstrap-engine'````

### Step 3

On your ```config/application.rb```, add the Following Line:

``config.railties_order = [RailsBootstrapEngine::Engine, :main_app, :all]``

### Step 4
On your ```app/assets/javascripts/application.js```, add the Following Line:

``//= require rails-bootstrap-engine``

