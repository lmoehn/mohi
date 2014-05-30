[![Code Climate](https://codeclimate.com/repos/5386c38f6956801fa1007c40/badges/7c2dd755dacdafd5b8b9/gpa.png)](https://codeclimate.com/repos/5386c38f6956801fa1007c40/feed)
[![Build Status](https://travis-ci.org/lmoehn/mohi.svg?branch=4-1-stable)](https://travis-ci.org/lmoehn/mohi)


# Monarch High School Ultimate (mohi)
-------------------------------------

Trying to organize, track and keep up-to-date information flowing for the 80+ students of the Monarch High
Ultimate program is a daunting task. Getting teenagers to hand in paperwork signed by their parents, ordering
uniforms, tracking payments, arranging carpools and making sure players are at practices and games are just a
few of the things the coaches and volunteers have to manage. Oh, and on top of all that, the coaches are spending
hours of their free time teaching these kids the greatest game ever . . . ultimate frisbee!

## Background

What this site hopes to do is whittle away at the most time-consuming areas of managing the team, slowly
replacing the spreadsheets and manual processes with an easy to use, updated systems. Along the way a few
additional 'features' might be added to serve as learning tools in helping the programmer (me) develop
some real-world experience. Let the good times roll!


## Important Links

* [Pivotal Tracker](https://www.pivotaltracker.com/n/projects/1069530)
* [Heroku Staging](http://mohi-staging.herokuapp.com)

## Setup

Please follow the steps below to get this site set up for local development.

1. Clone this repo
1. `$bundle` to install gems
1. `$rake db:create` to create your test and development databases
1. `$rake db:migrate` to migrate your test and development databases
1. `$rspec` to run tests
1. `$rails s` to start local server (`$rails s -p #` to specify port)
1. in browser visit `localhost:3000` (or specified port) to view on local server
