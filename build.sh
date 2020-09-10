#!/bin/bash

venv="eiten-virtualenv"

echo "building virtualenv: $venv"

hash virtualenv
if [ "$?" != "0" ];
  then
    pip install virtualenv;
fi

virtualenv $venv

echo "installing eiten"
$venv/bin/pip install -e .


echo "===================="
echo "===================="
echo "===================="


echo "being by activating the virtualenv or running:"
echo "$venv/bin/jupyter notebook"
