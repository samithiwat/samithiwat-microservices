pull-all:
	docker pull ghcr.io/samithiwat/samithiwat-backend-gateway:dev
	docker pull ghcr.io/samithiwat/samithiwat-backend-user:dev
	docker pull ghcr.io/samithiwat/samithiwat-backend-role:dev
	docker pull ghcr.io/samithiwat/samithiwat-backend-organization:dev
	docker pull ghcr.io/samithiwat/samithiwat-backend-general:dev
	docker pull ghcr.io/samithiwat/samithiwat-backend-auth:dev
	docker image prune -f

compose-up:
	docker-compose --env-file .env.dev up -d


compose-down:
	docker-compose --env-file .env.dev down