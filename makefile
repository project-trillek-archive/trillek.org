SOURCE_DIR=./source
COMPASS_DIR=${SOURCE_DIR}/assets
DESTINATION_DIR=./build
JEKYLL_ARGS=--source ${SOURCE_DIR} --destination ${DESTINATION_DIR}
DEPLY_SCRIPT=./deploy.sh

default: jekyll

compass:
	bundle exec compass compile ${COMPASS_DIR}

jekyll: compass
	bundle exec jekyll build ${JEKYLL_ARGS}

compass-server:
	bundle exec compass watch ${COMPASS_DIR}

jekyll-server:
	bundle exec jekyll serve --watch ${JEKYLL_ARGS}

deploy: jekyll
	./deploy.sh