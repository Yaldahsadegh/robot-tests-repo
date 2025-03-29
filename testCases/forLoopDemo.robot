
*** Test Cases ***
#Forloop1
#    FOR  ${i}    IN RANGE    1   10
#      LOG TO CONSOLE  ${i}
#   END

#Forloop2
#    FOR     ${i}    IN  1   2   3   4   5   6   7   8
#        LOG TO CONSOLE   ${i}
#    END

#Forloop3withList
#    @{items}    create list     1   2   3   4   5
#    FOR     ${i}    IN    @{items}
#        LOG TO CONSOLE   ${i}
#    END

#Forloop4
#    FOR     ${i}    IN      topsis  hopsis  mopsis  popsis
#        LOG TO CONSOLE  ${i}
#    END


#Forloop5
#    @{nameslist}    create list     topsis  hopsis  mopsis  popsis
#    FOR     ${i}    IN      @{nameslist}
#        LOG TO CONSOLE  ${i}
#    END

ForLoop6withExit
    @{items}    create list     1   2   3   4   5
    FOR     ${i}    IN      @{items}
        LOG TO CONSOLE  ${i}
        exit for loop if    ${i}==3
    END