# -----------------------------------------
# Dev Doctor
# Reset dev environment to a working state
# Example use: bash dev_doctor.sh
# -----------------------------------------
printf "\n"

echo "Restarting all containers..."
docker restart $(docker ps -a -q -f name="dev_")
echo ""

echo "Forcing a fresh database migration..."
docker exec dev_app php artisan migrate:fresh --force
echo ""

# permissions checks? From laravel docs:
# "Directories within the storage and the bootstrap/cache directories should be writable by your web server or Laravel will not run"

# any post build tests? maybe service checks (ping services from dev_app)

printf "\n"
echo "Dev doctor complete...see if it's working now."
