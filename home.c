#include <stdio.h>
#include <time.h>
#include <po_hi_time.h>


void readMotion(int movement_data, int *person_in_room)
{
	if(movement_data == 1)
	{
		printf("Wykryto ruchu w pokoju\n");
		*person_in_room = 1;
		//return 1;
	}
	else
	{
		printf("Nie wykryto postaci na zapisie wideo\n");
		*person_in_room = 0;
		//return 0;		
	}
}

void carCheck(int movement_data, int *car_detected)
{
	if(movement_data == 1)
	{
		printf("Wykryto samochód\n");
		*car_detected = 1;
		//return 1;
	}
	else
	{
		printf("Nie wykryto samochodu na zapisie wideo\n");
		*car_detected = 0;
		//return 0;		
	}
}

void processVideo(int video_in, int *video_not_recognized, int *video_out)
{
	if(video_in == 1) //video recognized
	{
		printf("Wykryto znajomą osobę\n");
		*video_not_recognized = 1;
		//return 1;
	}
	else
	{
		printf("Nie wykryto znajomej osoby");
		*video_not_recognized = 0;
		//return 0;		
	}
	*video_out = video_in;
}


void awakeMotion(int movement_data, int *motion_out)
{
	if(movement_data == 1)
	{
		printf("Przekazano informację o obudzeniu\n");
		*motion_out = 1;
		//return 1;
	}
	else
	{
		printf("Nie przekazano informacji o obudzeniu\n");
		*motion_out = 0;
		//return 0;		
	}
}


void awake_Processing_Rules(int movement_data, int *coffee_out)
{
	if(movement_data == 1)
	{
		printf("Otrzymano informację o obudzeniu :)\n");
		*coffee_out = 1;
		//return 1;
	}
	else
	{
		printf("Nie otrzymano informacji o obudzeniu\n");
		*coffee_out = 0;
		//return 0;		
	}
}


void controlRules(int movement_data, int gate_in, int video_not_recognized, int *music_out, int *gate_out, int *light_out, int *heat_out, int *camera_out, int *alarm_out)
{
	if(movement_data == 1 && video_not_recognized == 0)
	{
		printf("Wykryto ruch\n");
		*camera_out = 1;
		*music_out = 1;
		*light_out = 1;
		*heat_out = 1;
	}
	if (video_not_recognized == 1)
	{
		printf("NIEBEZPIECZEŃSTWO WŁAMANIA\n");
		*alarm_out = 1;
				
	}
	if (gate_in == 1)
	{
		*gate_out = 1;
	}
}

