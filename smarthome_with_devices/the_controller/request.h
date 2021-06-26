#ifndef __OCARINA_GENERATED_REQUEST_H_
#define __OCARINA_GENERATED_REQUEST_H_ 
#include <types.h>
#include <deployment.h>
/*****************************************************/

/*  This file was automatically generated by Ocarina */

/*  Do NOT hand-modify this file, as your            */

/*  changes will be lost when you re-run Ocarina     */

/*****************************************************/

/*  Enumeration type for all the operations in the distributed application.*/

typedef struct
{
  __po_hi_port_t port;

  union
  {
    struct
    {
      home_types__motion_state the_thread_motion_global_motion_in;

    } the_thread_motion_global_motion_in;

    struct
    {
      home_types__motion_state the_thread_motion_global_motion_out;

    } the_thread_motion_global_motion_out;

    struct
    {
      home_types__motion_state the_thread_control_global_video_not_recognized;

    } the_thread_control_global_video_not_recognized;

    struct
    {
      home_types__motion_state the_thread_control_global_motion_in;

    } the_thread_control_global_motion_in;

    struct
    {
      home_types__motion_state the_thread_control_global_camera_out;

    } the_thread_control_global_camera_out;

    struct
    {
      home_types__motion_state the_thread_control_global_light_out;

    } the_thread_control_global_light_out;

    struct
    {
      home_types__motion_state the_thread_control_global_heat_out;

    } the_thread_control_global_heat_out;

    struct
    {
      home_types__motion_state the_thread_control_global_music_out;

    } the_thread_control_global_music_out;

    struct
    {
      home_types__motion_state the_thread_control_global_alarm_out;

    } the_thread_control_global_alarm_out;

    struct
    {
      home_types__motion_state the_thread_control_global_gate_in;

    } the_thread_control_global_gate_in;

    struct
    {
      home_types__motion_state the_thread_control_global_gate_out;

    } the_thread_control_global_gate_out;

    struct
    {
      home_types__motion_state the_thread_awake_global_motion_in;

    } the_thread_awake_global_motion_in;

    struct
    {
      home_types__motion_state the_thread_awake_global_motion_out;

    } the_thread_awake_global_motion_out;

    struct
    {
      home_types__motion_state the_thread_awake_rules_global_motion_in;

    } the_thread_awake_rules_global_motion_in;

    struct
    {
      home_types__motion_state the_thread_awake_rules_global_coffee_out;

    } the_thread_awake_rules_global_coffee_out;

    struct
    {
      home_types__motion_state the_thread_video_global_video_in;

    } the_thread_video_global_video_in;

    struct
    {
      home_types__motion_state the_thread_video_global_video_out;

    } the_thread_video_global_video_out;

    struct
    {
      home_types__motion_state the_thread_video_global_video_not_recognized;

    } the_thread_video_global_video_not_recognized;

    struct
    {
      home_types__motion_state the_thread_car_global_motion_in;

    } the_thread_car_global_motion_in;

    struct
    {
      home_types__motion_state the_thread_car_global_motion_out;

    } the_thread_car_global_motion_out;

  } vars;

} __po_hi_request_t;

#define __PO_HI_NB_OPERATIONS 0

#endif
