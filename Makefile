all: help

.PHONY: help 
help:
	@echo "run-notebooks: start jupyter notebooks"

.PHONY: run-notebooks 
run-notebooks:
	podman run -it --rm -p 8888:8888 -v $(PWD)/notebooks:/home/jovyan/work:z --device nvidia.com/gpu=0 --security-opt=label=disable docker.io/cschranz/gpu-jupyter:v1.6_cuda-12.0_ubuntu-22.04_python-only
