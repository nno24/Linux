#!/bin/bash

projects='Dubai Incheon'
toDoLists='General Project'
options='Add_toDo View_toDos Mark_Completed Exit'
PS3='#? '

#Declare functions
view_select_options(){
  echo "Choose your option: "
  echo "1) Add_toDo"
  echo "2) View_toDos"
  echo "3) Mark_Completed" 
  echo "4) Exit"
}

view_typeOf_lists(){
echo "Choose the type of toDo list"
echo "1) General" 
echo "2) Projects"

}

view_projects(){
 echo "Choose project: "
 echo "1) Dubai"
 echo "2) Incheon"
}

list_all_toDos(){
  #get number of tdo's & List all with # in front.
  todo_cnt=$( cat $list | wc -l )
  for(( c=1; c<=$todo_cnt; c++ )){
    todo=$( sed -n "$c p" $list )
    echo $c $todo
  }
}
select_options(){
select option in $options
do
if [ $option == 'Add_toDo' ]
then
  echo "Add your ToDo here..."
  read toDo_entry
  echo $toDo_entry >> $list
  view_select_options 
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
  sed -e "$task_completed d" $list > todo_tmp
  cat todo_tmp > $list
  echo "Good, now the following is left only:"
  #cat todo.txt
  list_all_toDos
  view_select_options
elif [ $option == 'Exit' ]
then
  clear
  view_typeOf_lists
  break
fi
done
}

#1: First display the types of lists
echo "Choose the type of toDo list"
#Select first the to-do list
select toDoList in $toDoLists 
do
if [ $toDoList == 'General' ]
then
  list="todo_general.txt"
  echo "..Now select your option: "
  select_options
elif [ $toDoList == 'Project' ]
then
  select project in $projects 
  do
    if [ $project == 'Dubai' ]
    then
	    list="todo_dubai.txt"
	    echo "...Now select your option: "
	    select_options
	    break
    elif [ $project == 'Incheon' ]
    then 
	    list="todo_incheon.txt"
	    echo "...Now select your option: "
	    select_options
	    break
    fi
  done
fi
done
