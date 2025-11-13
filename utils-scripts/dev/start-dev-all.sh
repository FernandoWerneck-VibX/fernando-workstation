#!/bin/bash
(cd ~/projects/api/ && npm run dev &) 
(cd ~/projects/frontend/ && yarn dev &) 
wait
