#!/bash/bin

# This is a simple script that let's you check if a provided password
# is strong or weak based on user input

echo "Welcome to the Password Strength Checker"
sleep 1
echo "A strong password must be at least 8 characters long"
sleep 1
echo "A strong password must include at least one: uppercase, lowercase, number and special character"
sleep 1
echo "Provide your password below and I'll evaluate it's strenght:"

# User input for password
read PASSWORD

# Check password strength
if [[ ${#PASSWORD} -lt 8 ]]; then
    echo "Weak password: It must be at least 8 characters long."
elif ! [[ $PASSWORD =~ [A-Z] ]]; then
    echo "Weak password: It must contain at least one uppercase letter."
elif ! [[ $PASSWORD =~ [a-z] ]]; then
    echo "Weak password: It must contain at least one lowercase letter."
elif ! [[ $PASSWORD =~ [0-9] ]]; then
    echo "Weak password: It must contain at least one number."
elif ! [[ $PASSWORD =~ [^a-zA-Z0-9] ]]; then
    echo "Weak password: It must contain at least one special character."
elif grep -iwqx $PASSWORD /usr/share/dict/american-english; then
    echo "Weak password: It must not be a common word or phrase."
else
    echo "Strong password!"
fi

# End of script
