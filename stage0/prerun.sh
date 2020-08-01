#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	bootstrap ${RELEASE} "${ROOTFS_DIR}" http://mirror.ox.ac.uk/sites/archive.raspbian.org/archive/raspbian/
fi
