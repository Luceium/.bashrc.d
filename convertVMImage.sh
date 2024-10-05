#!/bin/bash

convertVMImage() {
	qemu-img convert -f vmdk -O raw $@.vmdk $@.img
}
