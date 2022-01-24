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
	@mkdir -p /home/user42/data/data
	@mkdir -p /home/user42/data/code
	docker-compose --project-directory srcs -f srcs/docker-compose.yml up

fclean: clean
	@echo "do something"

clean:
	@echo "do something"

re:
	@echo "do something"

git:
	git add .
	git commit -m "Update"
	git push
