#!/bin/bash
sum() {
 s=$[$1+$2]
 echo $s
 return $s
}
sum 1 2
