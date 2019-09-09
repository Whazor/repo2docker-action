
echo "\
papermill" >> requirements.txt
docker version
jupyter-repo2docker --user-id=1001 --user-name=nbrunner --image-name=$IMAGE_NAME --no-run .