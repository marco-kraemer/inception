# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maraurel <maraurel@student.42sp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/13 14:43:06 by maraurel          #+#    #+#              #
#    Updated: 2022/01/13 16:06:34 by maraurel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all: $(NAME)

$(NAME):
	@mkdir -p /home/osboxes/data/data
	@mkdir -p /home/osboxes/data/code
	docker-compose --project-directory srcs -f srcs/docker-compose.yml up

fclean: clean
	@echo "do something"

clean:
	docker stop $(docker ps -qa);
	docker rm $(docker ps -qa);
	docker rmi -f $(docker images -qa);
	docker volume rm $(docker volume ls -q);
	docker network rm $(docker network ls -q);

re:
	@echo "do something"

git:
	git add .
	git commit -m "Update"
	git push
