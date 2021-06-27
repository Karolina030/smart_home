
with PolyORB_HI_Generated.Types;

package Home is

   use PolyORB_HI_Generated.Types;

   procedure ReadMotion
     (movement_data : State;
      person_in_room : out State);
   
   procedure CarCheck
     (movement_data : State;
      car_detected : out State);
      
      
   procedure ProcessVideo
     (video_in : State;
      video_data_out : out State);
      
      
   procedure AwakeMotion
     (movement_data : State;
      motion_out : out State);


   procedure Awake_Processing_Rules
     (movement_data : State;
      coffee_out : out State);
      
   procedure ControlRules
     (movement_data : State;
      gate_in : State;
      video_not_recognized: State;
      out_data : out State);

end Home;
