#include <stdio.h>
#include <time.h>
#include <po_hi_time.h>


int readMotion(int movement_data, int *person_in_room)
{
	if(movement_data == 1)
	{
		printf("Wykryto ruchu w pokoju\n");
		*person_in_room = 1;
		return 1;
	}
	else
	{
		printf("Nie wykryto postaci na zapisie wideo\n");
		*person_in_room = 0;
		return 0;		
	}
}

int carCheck(int movement_data, int *car_detected)
{
	if(movement_data == 1)
	{
		printf("Wykryto samochód\n");
		*car_detected = 1;
		return 1;
	}
	else
	{
		printf("Nie wykryto samochodu na zapisie wideo\n");
		*car_detected = 0;
		return 0;		
	}
}

int Awake_Processing_Rules(int movement_data, int *coffee_out)
{
	if(movement_data == 1)
	{
		printf("Wykryto obudzenie :)\n");
		*coffee_out = 1;
		return 1;
	}
	else
	{
		printf("Nie wykryto obudzenia\n");
		*coffee_out = 0;
		return 0;		
	}
}


