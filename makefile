SOURCE_DIR=./source
COMPASS_DIR=${SOURCE_DIR}/assets
DESTINATION_DIR=./build
JEKYLL_ARGS=--source ${SOURCE_DIR} --destination ${DESTINATION_DIR}
DEPLY_SCRIPT=./deploy.sh

default: jekyll

compass:
	compass compile ${COMPASS_DIR}

jekyll: compass
	jekyll build ${JEKYLL_ARGS}

compass-server:
	compass watch ${COMPASS_DIR}

jekyll-server:
	jekyll serve --watch ${JEKYLL_ARGS}

deploy:
	./deploy.sh