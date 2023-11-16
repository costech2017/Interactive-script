#!/bin/bash
# This bash script will use User friendly menue to choose an operation to be performed
choice="File-Operation CPU-schedulling Exit"
select option in $choice; do
        case $REPLY in
        1)
         echo "You have selected file operation"
         mkdir file_directory
         cd file_directory
         touch file1.txt file2.txt file3.txt file4.txt file5.txt
         echo "This is data1" > file1.txt
         echo "This is data2" > file2.txt
         echo "This is data3" > file3.txt
         echo "This is data4" > file4.txt
         echo "This is data5" > file5.txt
         ls 
         cd ..
         rm -r file_directory
         echo "You have completed File Operation."
              
  
        ;;

        2)
        echo "You have selected CPU scheduling."

        CPU_QUEUE=("ProcessA""ProcessB""ProcessC")
        for element in "${CPU_QUEUE[@]}"; do
        echo "ProcessA is Running..."
        sleep 5
        echo "ProcessA is Completed"
        echo
        echo "ProcessB is Running..."
        sleep 5
        echo "ProcessB is Completed"
        echo
        echo "ProcessC is Running..."
        sleep 5
        echo "ProcessC is Completed..."
        done
        echo
        echo "CPU Scheduling Simulations was Successful"
        ;;
        3)
        echo "Exiting..."
        sleep 3
        break
        ;;
        *)
        echo "Invalid option. Please choose 1-3."
        ;;
     esac
done 






        
        
