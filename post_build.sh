# -----------------------------------------
# Dev Environment Post Build Script
# This tries to start all MC related containers and runs artisan migrate
# Example use: bash post_build.sh
# -----------------------------------------
printf "\n"

echo "Confirming all containers are online..."
docker start $(docker ps -a -q -f name="dev_")
echo ""

echo "Generating application key..."
docker exec dev_app php artisan key:generate
echo ""

echo "Running database migrations..."
docker exec dev_app php artisan migrate
echo ""

# permissions chekcks? From laravel docs:
# "Directories within the storage and the bootstrap/cache directories should be writable by your web server or Laravel will not run"

# add seeeding here

# any post build tests? maybe service checks (ping services from dev_app)

echo "Post build script complete!"
