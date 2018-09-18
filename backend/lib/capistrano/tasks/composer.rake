namespace :composer do

  desc "Run composer install task"
  task :install do
    on roles(:web) do
      within release_path do
        execute :composer, "install"
      end
    end
  end

  desc "Run composer update task"
  task :update do
    on roles(:web) do
      within release_path do
        execute :composer, "update"
      end
    end
  end

  desc "Run composer dump-autoload task"
  task :dump_autoload do
    on roles(:web) do
      within release_path do
        execute :composer, "dump-autoload"
      end
    end
  end
end
