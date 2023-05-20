
echo "\n<<< Testing $0 >>>\n"
echo "ZSH_VERSION=$ZSH_VERSION"
echo "The current shell is: $(ps $$ -ocomm=)"

exists brew && echo "ok!" || echo "bogus"
exists nonexistent && echo "ok" || echo "bogus!"