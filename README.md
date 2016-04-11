##ruby_prism_cucumber##

###About###
This is a starter set for a software test automation project using [ruby](https://www.ruby-lang.org/en/), [site_prism](https://github.com/natritmeyer/site_prism), [cucumber](https://cucumber.io/docs/reference/ruby), and [capybara](https://github.com/jnicklas/capybara).  *Site_prism* implements a *PageObject* framework that is more sophisticated than that supplied by the *page-object* gem. With *site_prism* you can break a page up into sections and share common sections across pages. Cucumber supports [Behavior Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development#Principles_of_BDD).  Cucumber **Features** map to **user stories** and group **Scenarios** which consist of **Given**, **When**, and **Then** statemensts.  Capaybara provides a higher level API that reduces the coding effort when compared to base selenium.

To get started, install ruby 2.3 (or latest). Next, create a copy of this project in a directory on your machine (e.g. download and extract the zip). The root directory should be a project name of your choosing.  Open a terminal and cd to your project root directory. Type **gem install bundler** then press enter. Next, type **bundle install** then press enter.  This will install the needed ruby gems.

##Hello World##
This project comes with a hello world feature file and supporting step definition, page, and other support files that are ready to run.  To execute the hello world feature cd to your project's root directory and type **cucumber** and press enter.  Dig down through the files to see examples that you can emulate.
