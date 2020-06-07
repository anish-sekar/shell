
info(){
#Program name
echo "Program name :$0"

#Argument Count
echo "Argument Count :$#"

#Actual arguments
echo "Actual args :$@"

}

info

#Variable assignment, space cannot exist
var=world
echo $var

# Variables can be reference using $ only within " quotes
echo "Hello $var!"

#This does not substitute
echo 'Hello $var!'

#Function definition
mcd(){
	mkdir -p "$1"
	cd "$1"
}

#Execute the code and keep functions in the session 
# source ./var.sh 


#lets create a simeple functions

two(){
	
	echo "First:$1 Second:$2"
	
}


two "ANISH" "SEKAR"

#This gets you the last argument that was passed to the 
echo $_

#even though $2 exists and is empty, $_ return the last valid arg
two "FIRST"
echo "last arg $_"

#Create a function which does not take args
noargs(){

	echo "noargs takes no args!"

}

#Two arguments
two "first" "second"
#No arguments
noargs

#If there are not arguments, the script itself becomes the argument
echo $_

#Exit status of the last command $?
# 0 Means success, non 0 is a failure

rm banana
echo "rm banana failed so $?"

mkdir banana
rmdir banana
echo "rmdir banana executed so $?"

searchFoobar(){

for file in $@; do
	echo "searching $file"
	grep foobar "$file" > ./success 2> ./failure
	
done

}

searchFoobar file file2

