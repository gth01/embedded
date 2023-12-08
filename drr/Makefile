all: drr_sll_sll drr_sll_dll drr_sll_dyn drr_dll_sll drr_dll_dll drr_dll_dyn drr_dyn_sll drr_dyn_dll drr_dyn_dyn 



drr_sll_sll:

	gcc drr.c -o drr_sll_sll -DSLL_CL -DSLL_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

drr_sll_dll:

	gcc drr.c -o drr_sll_dll -DSLL_CL -DDLL_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

drr_sll_dyn:

	gcc drr.c -o drr_sll_dyn -DSLL_CL -DDYN_ARR_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

drr_dll_sll:

	gcc drr.c -o drr_dll_sll -DDLL_CL -DSLL_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

drr_dll_dll:

	gcc drr.c -o drr_dll_dll -DDLL_CL -DDLL_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

drr_dll_dyn:

	gcc drr.c -o drr_dll_dyn -DDLL_CL -DDYN_ARR_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

drr_dyn_sll: 

	gcc drr.c -o drr_dyn_sll -DDYN_ARR_CL -DSLL_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

drr_dyn_dll:

	gcc drr.c -o drr_dyn_dll -DDYN_ARR_CL -DDLL_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations

drr_dyn_dyn: 

	gcc drr.c -o drr_dyn_dyn -DDYN_ARR_CL -DDYN_ARR_PK -pthread -lcdsl -no-pie -L./../synch_implementations -I./../synch_implementations


