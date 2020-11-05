id=`preserve -llist | grep -oP "\K([0-9]+)(?=.*${USER})"`
preserve -c $id

