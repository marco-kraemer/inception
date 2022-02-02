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
	@mkdir -p /home/osboxes/data/mariadb
	@mkdir -p /home/osboxes/data/wordpress
	docker-compose --project-directory srcs -f srcs/docker-compose.yml up --force-recreate --build -d
	docker image prune -f

stop:
	docker-compose --project-directory srcs -f srcs/docker-compose.yml stop

fclean: clean
	rm -rf /home/osboxes/data

clean:
	bash remove.sh

re:
	fclean
	all

git:
	git add .
	git commit -m "Update"
	git push
