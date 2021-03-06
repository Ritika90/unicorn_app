set :application, "myorint_App"
set :repository,  "git@github.com:Ritika90/unicorn_app.git"
set :deploy_to, "/myprint_app"
set :scm, :git
set :branch, "master"
set :use_sudo, false
set :rails_env, "production"
set :deploy_via, :copy
default_run_options[:pty] = true
server "www.example.com", :app, :web, :db, :primary => true
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
role :web, "web.example.com"
role :app, "app.example.com"
role :db, "db.somethingelse.com", :primary => true
# role :web, "your web-server here"                          # Your HTTP server, Apache/etc
# role :app, "your app-server here"                          # This may be the same as your `Web` server
# role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end