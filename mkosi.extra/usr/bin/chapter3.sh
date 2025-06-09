#!/bin/bash
set -e
mkdir -v $LFS/sources
cp -rfv /sources/* $LFS/sources
chmod -v a+wt $LFS/sources
chown root:root $LFS/sources/*
