# Color Variables
NORMAL='\033[0;39m'
BLACK='\033[0;30m'
DARK_GRAY='\033[1;30m'
RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
GREEN='\033[0;32m'
LIGHT_GREEN='\033[1;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHT_BLUE='\033[1;34m'
PURPLE='\033[0;35m'
LIGHT_PURPLE='\033[1;35m'
CYAN='\033[0;36m'
LIGHT_CYAN='\033[1;36m'
LIGHT_GRAY='\033[0;37m'
WHITE='\033[1;37m'
NC=\033[0m # No Color

# Application Variables
APP_NAME=$(shell poetry version | cut -d' ' -f1)
APP_VERSION=$(shell poetry version -s)
DB_CONNECTION_STRING=$(shell dotenv get DB_CONNECTION_STRING)
EXPECTED_FILE=$(shell dotenv get EXPECTED_FILE)
TARGET_TABLE=$(shell dotenv get TARGET_TABLE)
WATCH_PATH=$(shell dotenv get WATCH_PATH)
STAGING_PATH=$(shell dotenv get STAGING_PATH)
PROCESSED_PATH=$(shell dotenv get PROCESSED_PATH)
DEPLOYMENT_COMMAND=$(shell read choice)

help:
	@echo "\n📖️${GREEN}Help${NC}"
	@echo "🎨️${BLUE}make format${NC} \t- Formats the codebase"
	@echo "🏃${BLUE}make run${NC} \t\t- Runs the application"
	@echo "🧪️${BLUE}make test${NC} \t\t- Runs the test suite"
	@echo "🧹️${BLUE}make clean${NC} \t- Cleans up test artifacts"
	@echo "🛠️ ${BLUE}make build${NC} \t- Builds the container"
	@echo "🚀️${BLUE}make deploy${NC} \t- Deploys the container"
	@echo "🔄️${BLUE}make update${NC} \t- Updates submodules"
	@echo ""
format:
	@echo "\n🎨️ ${GREEN}Formatting Codebase${NC}\n"
	isort --profile black ./src
	black ./src
run:
	@echo "\n🏃🏻‍♂️️ ${GREEN}Running Application${NC}\n"
	poetry run python3 src/main.py
test:
	@echo "\n🧪️ ${GREEN}Running Test Suite${NC}\n"
	pre-commit install
	pre-commit autoupdate
	poetry run python3 -m pytest
	@echo "\n🧪️ ${GREEN}Cleaning Up Test Suite Artifacts${NC}\n"
	@$(MAKE) clean
	@echo "\n🧪️ ${GREEN}Test Suite Execution Completed${NC}\n"
clean:
	@echo "\n🧹️ ${GREEN}Cleaning Up${NC}\n"
	rm -rf **/.pytest_cache
	rm -rf .pytest_cache
	rm -rf **/__pycache__
	@echo "\n🧹️ ${GREEN}Cleaned${NC}\n"
build:
	@echo "\n🛠️ ${GREEN}Beginning Build Process${NC}\n"
	@if (! docker stats --no-stream ); then open /Applications/Docker.app; while (! docker stats --no-stream ); do echo "Waiting for Docker to launch..." && sleep 1; done; fi
	poetry update
	poetry export --without-hashes --format requirements.txt --output requirements.txt
	@echo "\n🛠️ ${GREEN}Attempting To Build Container${NC}\n"
	docker build -t bryan-jenks-home-lab/${APP_NAME}:${APP_VERSION} .
	@echo "\n🛠️ ${GREEN}Attempting To Run Container${NC}\n"
	docker run -d \
		-e DB_CONNECTION_STRING=${DB_CONNECTION_STRING} \
		-e EXPECTED_FILE=${EXPECTED_FILE} \
		-e TARGET_TABLE=${TARGET_TABLE} \
		-e WATCH_PATH=/data/inbound \
		-e STAGING_PATH=/data/outbound \
		-e PROCESSED_PATH=/data/processed \
		-v ${WATCH_PATH}:/data/inbound \
		-v ${STAGING_PATH}:/data/outbound \
		-v ${PROCESSED_PATH}:/data/processed \
		bryan-jenks-home-lab/${APP_NAME}:${APP_VERSION}
	@echo "\n🛠️ ${GREEN}Build Process Completed${NC}\n"
deploy:
	@echo "\n🚀️ ${GREEN}Beginning Deployment Process${NC}\n"
	./common/utilities/version-bump.sh
	@echo "\n🚀️ ${GREEN}Deployment Process Completed${NC}\n"
update:
	git submodule update --remote
