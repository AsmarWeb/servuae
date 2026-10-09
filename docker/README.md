# ServUAE Docker Starter

These files are the initial Docker development setup for the ServUAE Laravel application. They do not include the Laravel framework scaffold itself.

## Prerequisites

- Docker Desktop or Docker Engine with the Compose plugin
- A Laravel application scaffold in the repository root

## Setup

1. Copy `.env.example` to `.env`.
2. Set local-only passwords in `.env`.
3. Build and start the services:

   ```bash
   docker compose up -d --build
   ```

4. Generate the Laravel application key:

   ```bash
   docker compose exec app php artisan key:generate
   ```

5. Run migrations:

   ```bash
   docker compose exec app php artisan migrate
   ```

6. Open `http://localhost:8080`.

## Frontend assets

Start the Vite development server using the optional profile:

```bash
docker compose --profile frontend up node
```

Vite should be configured to use the host `0.0.0.0` and port `5173`.

## Useful commands

```bash
docker compose ps
docker compose logs -f app nginx mysql
docker compose exec app php artisan about
docker compose exec app php artisan test
docker compose down
```

To remove the database volume and all local database data, run:

```bash
docker compose down -v
```

Use that last command only when you intentionally want to delete the local database.

## Important notes

- Do not commit `.env` or production credentials.
- The default passwords are placeholders for local development only. Change them before starting the stack.
- Do not expose the MySQL port publicly in production.
- This is a development setup, not a production deployment configuration.
- The Docker image installs Composer dependencies only when `composer.json` is present. Create the Laravel scaffold before expecting Artisan commands to work.
