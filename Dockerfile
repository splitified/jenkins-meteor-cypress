#        SPLITIFIED CI ENV        #

                                                                                                                                            
#           JJJJJJJJJJJEEEEEEEEEEEEEEEEEEEEEENNNNNNNN        NNNNNNNNKKKKKKKKK    KKKKKKKIIIIIIIIIINNNNNNNN        NNNNNNNN   SSSSSSSSSSSSSSS 
#           J:::::::::JE::::::::::::::::::::EN:::::::N       N::::::NK:::::::K    K:::::KI::::::::IN:::::::N       N::::::N SS:::::::::::::::S
#           J:::::::::JE::::::::::::::::::::EN::::::::N      N::::::NK:::::::K    K:::::KI::::::::IN::::::::N      N::::::NS:::::SSSSSS::::::S
#           JJ:::::::JJEE::::::EEEEEEEEE::::EN:::::::::N     N::::::NK:::::::K   K::::::KII::::::IIN:::::::::N     N::::::NS:::::S     SSSSSSS
#             J:::::J    E:::::E       EEEEEEN::::::::::N    N::::::NKK::::::K  K:::::KKK  I::::I  N::::::::::N    N::::::NS:::::S            
#             J:::::J    E:::::E             N:::::::::::N   N::::::N  K:::::K K:::::K     I::::I  N:::::::::::N   N::::::NS:::::S            
#             J:::::J    E::::::EEEEEEEEEE   N:::::::N::::N  N::::::N  K::::::K:::::K      I::::I  N:::::::N::::N  N::::::N S::::SSSS         
#             J:::::j    E:::::::::::::::E   N::::::N N::::N N::::::N  K:::::::::::K       I::::I  N::::::N N::::N N::::::N  SS::::::SSSSS    
#             J:::::J    E:::::::::::::::E   N::::::N  N::::N:::::::N  K:::::::::::K       I::::I  N::::::N  N::::N:::::::N    SSS::::::::SS  
# JJJJJJJ     J:::::J    E::::::EEEEEEEEEE   N::::::N   N:::::::::::N  K::::::K:::::K      I::::I  N::::::N   N:::::::::::N       SSSSSS::::S 
# J:::::J     J:::::J    E:::::E             N::::::N    N::::::::::N  K:::::K K:::::K     I::::I  N::::::N    N::::::::::N            S:::::S
# J::::::J   J::::::J    E:::::E       EEEEEEN::::::N     N:::::::::NKK::::::K  K:::::KKK  I::::I  N::::::N     N:::::::::N            S:::::S
# J:::::::JJJ:::::::J  EE::::::EEEEEEEE:::::EN::::::N      N::::::::NK:::::::K   K::::::KII::::::IIN::::::N      N::::::::NSSSSSSS     S:::::S
#  JJ:::::::::::::JJ   E::::::::::::::::::::EN::::::N       N:::::::NK:::::::K    K:::::KI::::::::IN::::::N       N:::::::NS::::::SSSSSS:::::S
#    JJ:::::::::JJ     E::::::::::::::::::::EN::::::N        N::::::NK:::::::K    K:::::KI::::::::IN::::::N        N::::::NS:::::::::::::::SS 
#      JJJJJJJJJ       EEEEEEEEEEEEEEEEEEEEEENNNNNNNN         NNNNNNNKKKKKKKKK    KKKKKKKIIIIIIIIIINNNNNNNN         NNNNNNN SSSSSSSSSSSSSSS   
                                                                                                                                            
                                                                                                                              
#         CCCCCCCCCCCCC                                                                                                                       
#      CCC::::::::::::C                                                                                                                       
#    CC:::::::::::::::C                                                                                                                       
#   C:::::CCCCCCCC::::C                                                                                                                       
#  C:::::C       CCCCCCyyyyyyy           yyyyyyyppppp   ppppppppp   rrrrr   rrrrrrrrr       eeeeeeeeeeee        ssssssssss       ssssssssss   
# C:::::C               y:::::y         y:::::y p::::ppp:::::::::p  r::::rrr:::::::::r    ee::::::::::::ee    ss::::::::::s    ss::::::::::s  
# C:::::C                y:::::y       y:::::y  p:::::::::::::::::p r:::::::::::::::::r  e::::::eeeee:::::eess:::::::::::::s ss:::::::::::::s 
# C:::::C                 y:::::y     y:::::y   pp::::::ppppp::::::prr::::::rrrrr::::::re::::::e     e:::::es::::::ssss:::::ss::::::ssss:::::s
# C:::::C                  y:::::y   y:::::y     p:::::p     p:::::p r:::::r     r:::::re:::::::eeeee::::::e s:::::s  ssssss  s:::::s  ssssss 
# C:::::C                   y:::::y y:::::y      p:::::p     p:::::p r:::::r     rrrrrrre:::::::::::::::::e    s::::::s         s::::::s      
# C:::::C                    y:::::y:::::y       p:::::p     p:::::p r:::::r            e::::::eeeeeeeeeee        s::::::s         s::::::s   
#  C:::::C       CCCCCC       y:::::::::y        p:::::p    p::::::p r:::::r            e:::::::e           ssssss   s:::::s ssssss   s:::::s 
#   C:::::CCCCCCCC::::C        y:::::::y         p:::::ppppp:::::::p r:::::r            e::::::::e          s:::::ssss::::::ss:::::ssss::::::s
#    CC:::::::::::::::C         y:::::y          p::::::::::::::::p  r:::::r             e::::::::eeeeeeee  s::::::::::::::s s::::::::::::::s 
#      CCC::::::::::::C        y:::::y           p::::::::::::::pp   r:::::r              ee:::::::::::::e   s:::::::::::ss   s:::::::::::ss  
#         CCCCCCCCCCCCC       y:::::y            p::::::pppppppp     rrrrrrr                eeeeeeeeeeeeee    sssssssssss      sssssssssss    
#                            y:::::y             p:::::p                                                                                      
#                           y:::::y              p:::::p                                                                                      
#                          y:::::y              p:::::::p                                                                                     
#                         y:::::y               p:::::::p                                                                                     
#                        yyyyyyy                p:::::::p                                                                                     
#                                               ppppppppp                                                                                     
                                                                                                                                          

# Build : sudo docker build -t jenkins/jenkins Documents/programmation/ourbudget/.scripts/docker/ci/
# Run : sudo docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:latest
# http://localhost:8080/

# Config Jenkins :
# project name : Build Splitified
# Git : https://bitbucket.org/spliteam/ourbudget.git
# Credentials : jean-denis/***
# Branch specified : */master
# Delete workspace before build starts : X
# Add bin/ directory from Node/npm to path : X
# Node JS install : Node-8.9.4
# Color ANSI Console output : xterm
# Build:
# Command : npm install
# Command : 
#   export MONGO_OPLOG_URL=mongodb://localhost:27017/local
#   meteor npm test
#   /home/node/.npm-global/bin/cypress run 
# Action post build :
# use global rule : X
# select Parsing Rules : Meteor Mocha Dot parser

# sudo docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker IMAGE_ID_HERE

FROM jenkins/jenkins:2.121-slim

LABEL maintener "gallegoj@gmail.com"

USER root

# Install NodeJS (to get NPM)
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get update && apt-get install -y curl nodejs

# Set the locale (needed by Mongo)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y locales \
  && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
  && dpkg-reconfigure --frontend=noninteractive locales \
  && update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8

# Allow jenkins user to run sudo commands
RUN apt-get install -y sudo
RUN usermod -a -G sudo jenkins
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Fix for allowing npm install -g to work
RUN mkdir -p /home/node/.npm-global \
  && chown -R jenkins /home/node/.npm-global 
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# Install Meteor
RUN curl https://install.meteor.com/ | sh

# Dependencies for Cypress & Meteor
RUN apt-get install -y xvfb libgtk2.0-0 libxss1 libgconf-2-4 g++ build-essential   libnotify-dev  libnss3  libasound2

# Dependencies for Docker and Jenkins build tasks scripts
RUN apt-get install -y libltdl-dev netcat

# Some cleaning
RUN apt-get clean && rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# drop back to the regular jenkins user - good practice
USER jenkins

# Install Cypress for acceptance tests
RUN npm install cypress -g
