#! /bin/bash
case $1 in
    rectangle)
        echo "Rectangle Area is : $(($2 * $3))"
    ;;
    square)
        echo "Square Area is : $(($2 * $2))"
        
        
    ;;
    triangle)
        echo "Triangle Area is : $(($2 * $3 / 2))"
        
    ;;
esac
