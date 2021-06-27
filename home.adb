with PolyORB_HI.Output;

package body Home is

   use PolyORB_HI.Output;
   
   procedure ReadMotion
     (movement_data : State;
      person_in_room : out State)
   is
   begin
   	if movement_data = 1 then
		Put_Line("Wykryto ruchu w pokoju");
		person_in_room := 1;
	else
		Put_Line("Nie wykryto postaci na zapisie wideo");
		person_in_room := 0;
	end if;

   end ReadMotion;
   
   procedure CarCheck
     (movement_data : State;
      car_detected : out State)
   is
   begin
   	if movement_data = 1 then
		Put_Line("Wykryto samochód");
		car_detected := 1;
	else
		Put_Line("Nie wykryto samochodu na zapisie wideo");
		car_detected := 0;
	end if;
   end CarCheck;
      
      
   procedure ProcessVideo
     (video_in : State;
      video_data_out : out State)
   is
   begin
   	if video_in = 1 then
		Put_Line("Wykryto znajomą osobę");
		video_data_out := 1;
	else
		Put_Line("Nie wykryto znajomej osoby");
		video_data_out := 0;
	end if;
   end ProcessVideo;
      
      
   procedure AwakeMotion
     (movement_data : State;
      motion_out : out State)
   is
   begin
   	if movement_data = 1 then
		Put_Line("Przekazano informację o obudzeniu");
		motion_out := 1;
	else
		Put_Line("Nie przekazano informacji o obudzeniu");
		motion_out := 0;
	end if;
   end AwakeMotion;


   procedure Awake_Processing_Rules
     (movement_data : State;
      coffee_out : out State)
   is
   begin
   	if movement_data = 1 then
		Put_Line("Otrzymano informację o obudzeniu");
		coffee_out := 1;
	else
		Put_Line("Nie otrzymano informacji o obudzeniu");
		coffee_out := 0;
	end if;
   end Awake_Processing_Rules;
      
   procedure ControlRules
     (movement_data : State;
      gate_in : State;
      video_not_recognized: State;
      out_data : out State)
   is
   begin
   	if movement_data = 1  and video_not_recognized = 0 then
		Put_Line("Wykryto ruch");
		out_data := 1;
	end if;
	if video_not_recognized = 1 then
		Put_Line("NIEBEZPIECZEŃSTWO WŁAMANIA");
		out_data := 1;
	end if;
	if gate_in = 1 then
		Put_Line("Otwarcie bramy");
		out_data := 1;
	end if;
	
   end ControlRules;


end Home;
