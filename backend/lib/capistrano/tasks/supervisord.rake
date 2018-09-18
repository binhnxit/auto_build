namespace :supervisord do

  desc "Run supervisord restart task"
  task :restart do
    on roles(:web) do
      execute :supervisord, "restart"
    end
  end

  desc "Run supervisord reload task"
  task :reload do
    on roles(:web) do
      execute :supervisord, "reload"
    end
  end
end
