## Nicabarómetro (What is it?)

This is a simple app built with Rails for educational purpose. We try to show some of the amazing features of Rails framework and also introduce people with one of the many practical uses for web apps.

## Development / Contribute

### First time

The app use some rake task to get info from the weather API, so you need run rake task capturedata to get the data or update it.
    $ rake capturedata:all

## Deployment

The app has been built to be deployed to OpenShift. First of all, i suggest to read the documentation about Ruby applications in OpenShift [Here](https://www.openshift.com/developers/ruby). And then, you must keep in mind the following aspects:

* I assume you already have installed rhc for OpenShift deploys and application management, else...
    
    $ sudo gem install rhc
    $ gem update rhc 

* Now you can create your own app in OpenShift

    $ rhc app create nicabarometro ruby-1.9

* The app use PostgreSQl as database engine, so let's add a postgres cartridge to our app

    $ rhc cartridge add postgresql-9.2 -a nicabarometro
    
* And finally, you need to add the cron cartridge used to update the data and keep it in the app database to avoid excessive amount of requests to the weather API.  
    
    $ rhc cartridge add cron-1.4 -a nicabarometro
 
========================

#Todo List

*Firefox Port => Add-On
*Chrome Port => Desktop, Extension
*Mobile Port.
*Dominio Propio.




