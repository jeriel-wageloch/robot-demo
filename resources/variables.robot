*** Variables ***
${URL}     https://prod-app.wageloch.com.au/
${USER}    jeriel_test@wageloch.com.au
${PASS}    Password123
${FIREFOX_BINARY}    /usr/bin/firefox

*** Settings ***
Library    SeleniumLibrary    firefox_binary=${FIREFOX_BINARY}