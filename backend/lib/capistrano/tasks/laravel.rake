namespace :laravel do

  desc "Run Artisan migrate task"
  task :migrate do
    on roles(:web) do
      within release_path do
        execute :php, "artisan migrate --path=database/migrations", "--force"
      end
    end
  end

  desc "Run Artisan db:seed task"
  task :seed do
    on roles(:web) do
      within release_path do
        execute :php, "artisan db:seed"
      end
    end
  end

  desc "Run Artisan cache:clear task"
  task :clear_cache do
    on roles(:web) do
      within release_path do
        execute :php, "artisan cache:clear"
      end
    end
  end

  desc "Run Artisan config:cache task"
  task :clear_config do
    on roles(:web) do
      within release_path do
        execute :php, "artisan config:cache"
      end
    end
  end

  desc "Run Artisan clear-compiled & optimize task"
  task :optimize do
    on roles(:web) do
      within release_path do
        execute :php, "artisan clear-compiled"
        execute :php, "artisan optimize"
      end
    end
  end

  desc "Create Storage directories & Set permissions task"
  task :permissions do
    on roles(:web) do
      within release_path do

        execute :chmod, "-R ug+rwx storage"
        execute :chmod, "-R ug+rwx bootstrap/cache"
        execute :chown, "-RH centos:apache storage"
        execute :chown, "-RH centos:apache bootstrap/cache"
      end
    end
  end
end
