# #!/bin/bash
# Script runs in bash shell directly using ./wordpress-theme-setup.sh

echo "Choose an option:"
echo "1. Create WordPress Theme folder structure in current directory"
echo "2. Create new directory to create WordPress Theme folder structure"
echo "3. Exit"
## break some lines
echo ""
echo "Enter the option number:"

read option

case $option in
    1 )
        echo "Creating WordPress Theme folder structure in current directory..."
        touch .editorconfig .gitattributes .gitignore CHANGELOG.md LICENSE.md README.txt functions.php package.json screenshot.png style.css theme.json
        mkdir -p assets/css assets/images assets/js inc parts patterns styles templates
        touch inc/ClassName.php inc/functions-helpers.php parts/footer.html parts/header.html patterns/example.php styles/example.json templates/404.html templates/archive.html templates/index.html templates/singular.html
        echo "WordPress Theme folder structure created successfully."
        ;;
    2 )
        echo "Enter the directory name:"
        read directory
        mkdir $directory && cd $directory
        echo "Creating WordPress Theme folder structure in $directory directory..."
        touch .editorconfig .gitattributes .gitignore CHANGELOG.md LICENSE.md README.txt functions.php package.json screenshot.png style.css theme.json
        mkdir -p assets/css assets/images assets/js inc parts patterns styles templates
        touch inc/ClassName.php inc/functions-helpers.php parts/footer.html parts/header.html patterns/example.php styles/example.json templates/404.html templates/archive.html templates/index.html templates/singular.html
        echo "WordPress Theme folder structure created successfully in $directory directory."
        ;;
    3 )
        echo "Exiting..."
        ;;
    * )
        echo "Invalid option"
        echo ""
        ;;
esac