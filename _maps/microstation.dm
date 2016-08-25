#if !defined(MAP_FILE)
		#define TITLESCREEN "microstation"

		#define MINETYPE "lavaland"

        #include "map_files\MicroStation\MicroStation.dmm"
        #include "map_files\generic\z2.dmm"
        #include "map_files\MicroStation\z3micro.dmm"
        #include "map_files\generic\z4.dmm"
        #include "map_files\generic\lavaland.dmm"
        #include "map_files\generic\z6.dmm"


        #define MAP_FILE "MicroStation.dmm"
        #define MAP_NAME "Micro Station"

	#define MAP_TRANSITION_CONFIG DEFAULT_MAP_TRANSITION_CONFIG

		#if !defined(MAP_OVERRIDE_FILES)
				#define MAP_OVERRIDE_FILES
				#include "map_files\MicroStation\misc.dm"
		        #include "map_files\MicroStation\supplypacks.dm"
		        #include "map_files\MicroStation\telecomms.dm"
		        #include "map_files\MicroStation\uplink_item.dm"
		        #include "map_files\MicroStation\job\jobs.dm"
		        #include "map_files\MicroStation\job\removed.dm"
		#endif

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring microstation.

#endif