#!/bin/bash

options='Add_toDo View_toDos Mark_Completed'
PS3='#?'

list_all_toDos(){
  #get number of tdo's & List all with # in front.
  todo_cnt=$( cat todo.txt | wc -l )
  for(( c=1; c<=$todo_cnt; c++ )){
    todo=$( sed -n "$c p" todo.txt )
    echo $c $todo
  }
}


select option in $options
do
if [ $option == 'Add_toDo' ]
then
  echo "Add your ToDo here..."
  read toDo_entry
  echo $toDo_entry >> todo.txt
  
elif [ $option == 'View_toDos' ]
then
  echo "The following must be done:"
  list_all_toDos

elif  [ $option == 'Mark_Completed' ]
then
  echo "Select completed task.."
  list_all_toDos
  #Input the completed task
  read task_completed
  #Now delete the line
  sed -e "$task_completed d" todo.txt > todo_new
  cat todo_new > todo.txt
  echo "Good, now the following is left only:"
  #cat todo.txt
  list_all_toDos
  fi
done
