#!/usr/bin/env zsh

printf "\n<<< Starting SDK MAN Setup >>>\n"

if ! exists sdk; then
  echo "sdk doesn't exists, continuing with install"
  curl -s "https://get.sdkman.io" | bash
fi


if exists java; then
  echo "JAVA $(java --version) & MAVEN $(mvn --version) already installed"
else
  echo "Installing JDK with SdkMan..."
  sdk install java 17.0.5-librca
fi

