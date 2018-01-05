#!/bin/bash
#create wrapper around the command ls

ls () {
command ls -lh
}

ls
