# Hello DevOps!

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

This is a very basic Hello World application, that you will deploy to a Heroku server

## Fork this Repo

* Create an account on GitHub if you haven't one already.
* Fork this repo. Forking means to make a copy into your own repository, so you can make changes without affecting the original repository.
* Give your repo a name, e.g. *devops-training-steve*.

## Sign up to Heroku

* Create an account on Heroku [here](https://signup.heroku.com/).

## Create an App

* Go to your apps in your dashboard [here](https://dashboard.heroku.com/apps).
* Click on *New* and *Create New App*.
* Give your app a name (globally unique), and select region to be Europe
* Click *Create App*.

## Configure your App

* Ensure you are in the Deploy tab on your app page.
* In the *Deployment Method* option, click on *GitHub*.
* Connect to GitHub using your credentials, select your user, and search for your repo name e.g. *devops-training-steve*.
* Click on *Search*.
* In the results page, by your repository, click on *Connect*.

## Deploy your App

* On connected, two further sections should appear: *Automatic deploys* and *Manual deploy*.
* In *Automatic deploys*, ensure the master branch is selected in the dropdown, and click on *Enable Automatic Deploys*.
* In *Manual deploy*, ensure the master branch is selected, and click *Deploy Branch*. This will deploy the code to an app for you.

## View your App

* You will see a build log generating. This is logging out the current deployment, where Heroku recognises a NodeJS application, creates a runtime environment, installs dependencies, and starts the app.
* If successful, it will tell you that *Your app was successfully deployed*.
* You can view your live application by clicking *View*
* Your app will appear at a url similar to test-devops-steve.herokuapp.com. This is live on the Internet. 
* Congratulations! You have successfully deployed your application.

## Change your App

* You have set up an auomatic deployment, so if there is a commit on the master branch, it will run the release process.
* Head to the Activity tab in your app page, and it will display what has gone on with your app. You should see a successful build and deployment.
* In GitHub, you can use the online editor to change *src/App.js* in your repo. Go to the file, and click on the Pencil icon to edit.
* Make a simple change to the text. Once you're happy, scroll down to the bottom and click *Commit changes*. Ensure you are committing directly to the master branch.

## Check your Build

* Back in the Activity tab in your app page, you should see a new entry which says 'Build in Progress'.
* You can view the build log, which will be similar to how it was when you first deployed.
* Once successful, it will tell you "Build succeeded".
* It will have another entry for the deployment, and will say "Deployed" once the app is ready.
* In the top right of the page, you can click *Open app*, and verify that your changes have been made and released.
* Congratulations! You have used your pipeline to deploy your application after a change.

## Challenges

If you've got to the end and fancy a challenge, why don't you try these exercises?

* Create a pipeline
  * Add your app to the staging environment, and create a blank app in the production environment.
  * You can then promote your staging app to production by clicking on *Promote to Production*. 
  * Make a change, verify that it has built and deployed in staging, and promote the change to production again.
* Find a way to run your App.test.js as part of your pipeline. Unfortunately Heroku charges you to add tests to its pipeline, so you can consider the following options:
  * Using GitHooks with Husky to run the tests on a push to master.
  * Using the ChecksAPI in GitHub to run the tests on a commit.
  * See below.
* Set up a test run in CircleCI, the config.yml file is already created for you. Maybe you can deploy to Heroku using CircleCI?
