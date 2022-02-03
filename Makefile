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
	sudo mkdir -p /home/osboxes/data/mariadb
	sudo mkdir -p /home/osboxes/data/wordpress
	docker-compose --project-directory srcs -f srcs/docker-compose.yml up --force-recreate --build -d
	docker image prune -f

stop:
	docker-compose --project-directory srcs -f srcs/docker-compose.yml stop

fclean: clean
	bash remove.sh

clean: stop
	sudo rm -rf /home/osboxes/data

re:
	fclean
	all

git:
	git add .
	git commit -m "Update"
	git push
