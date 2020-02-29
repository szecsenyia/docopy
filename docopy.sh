#!/bin/bash
echo ">> Please insert the destination";
read destination
echo ">> Please insert the absoluth path of the list";
read list
echo ">> Please insert the periodic time";
read time

# destination="/home/user/Copy_test/"
# list="/home/user/copy_list"
b=0

main() {
   cp ${list_item} ${destination}
}

asker() {
  sleep 2;
  while [ $b -ne $original ]; do
  ls -al ${dest_objname} | cut -d ' ' -f 5 > bs;
  declare -i b=$(cat bs)
  sleep ${time}; echo "scale=2; ($b/$original)*100.0"|bc; done
}

cat $list | while read list_item; do
basename ${list_item} > obj_names
obj_name=$(cat obj_names)

dest_objname="${destination}""${obj_name}"
ls -al ${list_item} | cut -d ' ' -f 5 > originals;
declare -i original=$(cat originals); echo ${list_item}; main &
asker;
done
exit
