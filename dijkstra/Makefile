all: dijkstra_sll dijkstra_dll dijkstra_dyn

dijkstra_sll:

	gcc dijkstra_ddtr.c -o dijkstra_sll -DSLL -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations


dijkstra_dll:

	gcc dijkstra_ddtr.c -o dijkstra_dll -DDLL -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations


dijkstra_dyn:

	gcc dijkstra_ddtr.c -o dijkstra_dyn -DDYN_ARR -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

