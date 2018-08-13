#!/bin/bash

kexpect=$(pidof expect)
kill -9 $kexpect
pkill -c cu
