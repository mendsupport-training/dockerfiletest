FROM ubuntu:18.04
RUN apt-get update 							# No changes
RUN apt-get upgrade -y						# 1 upgraded
RUN apt-get install -y curl					# 30 installed
RUN apt-get update && apt-get upgrade -y	# No changes
ENV envVariable envVariableValue			# EMPTY-LAYER 
RUN apt-get purge curl -y 					# 1 Removed
