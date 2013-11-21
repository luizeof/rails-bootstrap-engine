#!/bin/bash
clear

rm *.gem

gem build rails-bootstrap-engine.gemspec

gem install *.gem -l

