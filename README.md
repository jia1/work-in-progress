# work-in-progress

Team Reporting System
- Reports are categorised by the 4 departments/functions
- Comment system supported
- Email notification (feature is still in early development)
- Download Reports as CSV or Excel (with or without filtering)

Instructions
1. **git clone https://github.com/jiayeerawr/work-in-progress.git**
  - Run steps 2 and 3 for your repository if it will be public so that you will not push private files
  - Otherwise, skip them so that your private files may be pushed to your server
2. Update **.gitignore** to ignore the following files (in addition to existing **.gitignore**)
  - app/controllers/application_controller.rb
  - app/mailers/comments_mailer.rb
  - config/application.yml
  - config/secrets.yml
3. Untrack files with **git rm -r --cached .**
4. **app/controllers/application_controller.rb**
  - Update the values for *name* and *password* for the HTTP authentication
5. **app/mailers/comments_mailer.rb**
  - Update the values for *from* GMAIL, *to* and *subject*
6. **config/application.yml**
  - Update the *username* and *password* for the *from* GMAIL account
7. Please refer to [Wiki](https://github.com/jiayeerawr/work-in-progress/wiki) for the additional steps to configure your GMAIL. Remember to restart your local server when you are testing!
8. [Deploy to Heroku](https://devcenter.heroku.com/articles/git)
