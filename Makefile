run-notebooks:
	podman run -it --rm -p 8888:8888 -v $(PWD)/notebooks:/home/jovyan/work:z --gpus all quay.io/jupyter/tensorflow-notebook
