require_relative './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise "Migrations are pending. Run 'rake db:migrate' to resolvethe issue"
end

use Rack::MethodOverride
use OwnerController
use WalkController
run ApplicationController
