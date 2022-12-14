import 'package:flutter/material.dart';

///@Description TODO
///@Author jd
class IconDemo extends StatefulWidget {
  const IconDemo({Key? key}) : super(key: key);

  @override
  State<IconDemo> createState() => _IconDemoState();
}

class _IconDemoState extends State<IconDemo> {
  final List<IconData> _list = [
    Icons.add,
    Icons.abc,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.access_time_filled,
    Icons.access_alarms,
    Icons.accessibility,
    Icons.accessible,
    Icons.accessibility_new,
    Icons.account_balance,
    Icons.account_box,
    Icons.account_circle,
    Icons.account_tree,
    Icons.ad_units,
    Icons.adb,
    Icons.add_alarm,
    Icons.add_alert,
    Icons.add_box,
    Icons.add_business,
    Icons.add_call,
    Icons.add_card,
    Icons.add_chart,
    Icons.add_circle,
    Icons.add_comment,
    Icons.add_home,
    Icons.add_home_work,
    Icons.add_ic_call,
    Icons.add_link,
    Icons.add_location,
    Icons.add_location_alt,
    Icons.add_moderator,
    Icons.add_photo_alternate,
    Icons.add_reaction,
    Icons.add_road,
    Icons.add_shopping_cart,
    Icons.add_task,
    Icons.add_to_drive,
    Icons.add_to_home_screen,
    Icons.add_to_photos,
    Icons.add_to_queue,
    Icons.addchart,
    Icons.adf_scanner,
    Icons.adjust,
    Icons.admin_panel_settings,
    Icons.adobe,
    Icons.ads_click,
    Icons.agriculture,
    Icons.air,
    Icons.airline_seat_flat,
    Icons.airline_seat_flat_angled,
    Icons.airline_seat_individual_suite,
    Icons.airline_seat_legroom_extra,
    Icons.airline_seat_legroom_normal,
    Icons.airline_seat_legroom_reduced,
    Icons.airline_seat_recline_extra,
    Icons.airline_seat_recline_normal,
    Icons.airline_stops,
    Icons.airlines,
    Icons.airplane_ticket,
    Icons.airplanemode_active,
    Icons.airplanemode_inactive,
    Icons.airplanemode_off,
    Icons.airplanemode_on,
    Icons.airplay,
    Icons.airport_shuttle,
    Icons.alarm,
    Icons.alarm_add,
    Icons.alarm_off,
    Icons.alarm_on,
    Icons.album,
    Icons.align_horizontal_center,
    Icons.align_horizontal_left,
    Icons.align_horizontal_right,
    Icons.align_vertical_bottom,
    Icons.align_vertical_center,
    Icons.align_vertical_top,
    Icons.all_inbox,
    Icons.all_inclusive,
    Icons.all_out,
    Icons.alt_route,
    Icons.alternate_email,
    Icons.amp_stories,
    Icons.analytics,
    Icons.anchor,
    Icons.android,
    Icons.animation,
    Icons.announcement,
    Icons.aod,
    Icons.apartment,
    Icons.api,
    Icons.app_blocking,
    Icons.app_registration,
    Icons.app_settings_alt,
    Icons.app_shortcut,
    Icons.apple,
    Icons.approval,
    Icons.apps,
    Icons.apps_outage,
    Icons.architecture,
    Icons.archive,
    Icons.area_chart,
    Icons.arrow_back,
    Icons.arrow_back_ios,
    Icons.arrow_back_ios_new,
    Icons.arrow_circle_down,
    Icons.arrow_circle_left,
    Icons.arrow_circle_right,
    Icons.arrow_circle_up,
    Icons.arrow_downward,
    Icons.arrow_drop_down,
    Icons.arrow_drop_down_circle,
    Icons.arrow_drop_up,
    Icons.arrow_forward,
    Icons.arrow_forward_ios,
    Icons.arrow_left,
    Icons.arrow_right,
    Icons.arrow_right_alt,
    Icons.arrow_upward,
    Icons.art_track,
    Icons.article,
    Icons.aspect_ratio,
    Icons.assessment,
    Icons.assignment,
    Icons.assignment_ind,
    Icons.assignment_late,
    Icons.assignment_return,
    Icons.assignment_turned_in,
    Icons.assistant,
    Icons.assistant_direction,
    Icons.assistant_navigation,
    Icons.assistant_photo,
    Icons.assured_workload,
    Icons.atm,
    Icons.attach_email,
    Icons.attach_file,
    Icons.attach_money,
    Icons.attachment,
    Icons.attractions,
    Icons.attribution,
    Icons.audio_file,
    Icons.audiotrack,
    Icons.auto_awesome,
    Icons.auto_awesome_mosaic,
    Icons.auto_awesome_motion,
    Icons.auto_delete,
    Icons.auto_fix_high,
    Icons.auto_fix_normal,
    Icons.auto_fix_off,
    Icons.auto_graph,
    Icons.auto_mode,
    Icons.auto_stories,
    Icons.autofps_select,
    Icons.autorenew,
    Icons.av_timer,
    Icons.baby_changing_station,
    Icons.back_hand,
    Icons.backpack,
    Icons.backspace,
    Icons.backup,
    Icons.backup_table,
    Icons.bakery_dining,
    Icons.balance,
    Icons.balcony,
    Icons.ballot,
    Icons.bar_chart,
    Icons.batch_prediction,
    Icons.bathroom,
    Icons.bathtub,
    Icons.battery_0_bar,
    Icons.battery_1_bar,
    Icons.battery_2_bar,
    Icons.battery_3_bar,
    Icons.battery_4_bar,
    Icons.battery_5_bar,
    Icons.battery_6_bar,
    Icons.battery_alert,
    Icons.battery_charging_full,
    Icons.battery_full,
    Icons.battery_saver,
    Icons.battery_std,
    Icons.battery_unknown,
    Icons.beach_access,
    Icons.bed,
    Icons.bedroom_baby,
    Icons.bedroom_child,
    Icons.bedroom_parent,
    Icons.bedtime,
    Icons.bedtime_off,
    Icons.beenhere,
    Icons.bento,
    Icons.bike_scooter,
    Icons.biotech,
    Icons.blender,
    Icons.blinds,
    Icons.blinds_closed,
    Icons.block,
    Icons.block_flipped,
    Icons.bloodtype,
    Icons.bluetooth,
    Icons.bluetooth_audio,
    Icons.bluetooth_connected,
    Icons.bluetooth_disabled,
    Icons.bluetooth_drive,
    Icons.bluetooth_searching,
    Icons.blur_circular,
    Icons.blur_linear,
    Icons.blur_off,
    Icons.blur_on,
    Icons.bolt,
    Icons.book,
    Icons.book_online,
    Icons.bookmark,
    Icons.bookmark_add,
    Icons.bookmark_added,
    Icons.bookmark_border,
    Icons.bookmark_outline,
    Icons.bookmark_remove,
    Icons.bookmarks,
    Icons.border_all,
    Icons.border_bottom,
    Icons.border_clear,
    Icons.border_color,
    Icons.border_horizontal,
    Icons.border_inner,
    Icons.border_left,
    Icons.border_outer,
    Icons.border_right,
    Icons.border_style,
    Icons.border_top,
    Icons.border_vertical,
    Icons.boy,
    Icons.branding_watermark,
    Icons.breakfast_dining,
    Icons.brightness_1,
    Icons.brightness_2,
    Icons.brightness_3,
    Icons.brightness_4,
    Icons.brightness_5,
    Icons.brightness_6,
    Icons.brightness_7,
    Icons.brightness_auto,
    Icons.brightness_high,
    Icons.brightness_low,
    Icons.brightness_medium,
    Icons.broadcast_on_home,
    Icons.broadcast_on_personal,
    Icons.broken_image,
    Icons.browse_gallery,
    Icons.browser_not_supported,
    Icons.browser_updated,
    Icons.brunch_dining,
    Icons.brush,
    Icons.bubble_chart,
    Icons.bug_report,
    Icons.build,
    Icons.build_circle,
    Icons.bungalow,
    Icons.burst_mode,
    Icons.bus_alert,
    Icons.business,
    Icons.business_center,
    Icons.cabin,
    Icons.cable,
    Icons.cached,
    Icons.cake,
    Icons.calculate,
    Icons.calendar_month,
    Icons.calendar_today,
    Icons.calendar_view_day,
    Icons.calendar_view_month,
    Icons.calendar_view_week,
    Icons.call,
    Icons.call_end,
    Icons.call_made,
    Icons.call_merge,
    Icons.call_missed,
    Icons.call_missed_outgoing,
    Icons.call_received,
    Icons.call_split,
    Icons.call_to_action,
    Icons.camera,
    Icons.camera_alt,
    Icons.camera_enhance,
    Icons.camera_front,
    Icons.camera_indoor,
    Icons.camera_outdoor,
    Icons.camera_rear,
    Icons.camera_roll,
    Icons.cameraswitch,
    Icons.campaign,
    Icons.cancel,
    Icons.cancel_presentation,
    Icons.cancel_schedule_send,
    Icons.candlestick_chart,
    Icons.car_crash,
    Icons.car_rental,
    Icons.car_repair,
    Icons.card_giftcard,
    Icons.card_membership,
    Icons.card_travel,
    Icons.carpenter,
    Icons.cases,
    Icons.casino,
    Icons.cast,
    Icons.cast_connected,
    Icons.cast_for_education,
    Icons.castle,
    Icons.catching_pokemon,
    Icons.category,
    Icons.celebration,
    Icons.cell_tower,
    Icons.cell_wifi,
    Icons.center_focus_strong,
    Icons.center_focus_weak,
    Icons.chair,
    Icons.chair_alt,
    Icons.chalet,
    Icons.change_circle,
    Icons.change_history,
    Icons.charging_station,
    Icons.chat,
    Icons.chat_bubble,
    Icons.chat_bubble_outline,
    Icons.check,
    Icons.check_box,
    Icons.check_box_outlined,
    Icons.check_circle,
    Icons.check_circle_outline,
    Icons.checklist,
    Icons.checklist_rtl,
    Icons.checkroom,
    Icons.chevron_left,
    Icons.chevron_right,
    Icons.child_care,
    Icons.child_friendly,
    Icons.chrome_reader_mode,
    Icons.church,
    Icons.circle,
    Icons.circle_notifications,
    Icons.class_,
    Icons.clean_hands,
    Icons.cleaning_services,
    Icons.clear,
    Icons.clear_all,
    Icons.close,
    Icons.close_fullscreen,
    Icons.closed_caption,
    Icons.closed_caption_disabled,
    Icons.closed_caption_off,
    Icons.cloud,
    Icons.cloud_circle,
    Icons.cloud_done,
    Icons.cloud_download,
    Icons.cloud_off,
    Icons.cloud_queue,
    Icons.cloud_sync,
    Icons.cloud_upload,
    Icons.cloudy_snowing,
    Icons.co2,
    Icons.co_present,
    Icons.code,
    Icons.code_off,
    Icons.coffee,
    Icons.coffee_maker,
    Icons.collections,
    Icons.collections_bookmark,
    Icons.color_lens,
    Icons.colorize,
    Icons.comment,
    Icons.comment_bank,
    Icons.comments_disabled,
    Icons.commit,
    Icons.commute,
    Icons.compare,
    Icons.compare_arrows,
    Icons.compass_calibration,
    Icons.compost,
    Icons.compress,
    Icons.computer,
    Icons.confirmation_num,
    Icons.confirmation_number,
    Icons.connect_without_contact,
    Icons.connected_tv,
    Icons.connecting_airports,
    Icons.construction,
    Icons.contact_mail,
    Icons.contact_page,
    Icons.contact_phone,
    Icons.contact_support,
    Icons.contactless,
    Icons.contacts,
    Icons.content_copy,
    Icons.content_cut,
    Icons.content_paste,
    Icons.content_paste_go,
    Icons.content_paste_off,
    Icons.content_paste_search,
    Icons.contrast,
    Icons.control_camera,
    Icons.control_point,
    Icons.control_point_duplicate,
    Icons.cookie,
    Icons.copy,
    Icons.ten_k,
    Icons.ten_mp,
    Icons.eleven_mp,
    Icons.onetwothree,
    Icons.twelve_mp,
    Icons.thirteen_mp,
    Icons.fourteen_mp,
    Icons.fifteen_mp,
    Icons.sixteen_mp,
    Icons.seventeen_mp,
    Icons.eighteen_up_rating,
    Icons.eighteen_mp,
    Icons.nineteen_mp,
    Icons.one_k,
    Icons.one_x_mobiledata,
    Icons.twenty_mp,
    Icons.twenty_two_mp,
    Icons.twenty_three_mp,
    Icons.twenty_four_mp,
    Icons.two_k,
    Icons.two_mp,
    Icons.thirty_fps,
    Icons.threesixty,
    Icons.threed_rotation,
    Icons.three_g_mobiledata,
    Icons.three_k,
    Icons.three_mp,
    Icons.three_p,
    Icons.four_g_mobiledata,
    Icons.four_k,
    Icons.four_mp,
    Icons.five_g,
    Icons.five_k,
    Icons.sixty_fps,
    Icons.six_ft_apart,
    Icons.six_k,
    Icons.six_mp,
    Icons.seven_k,
    Icons.seven_mp,
    Icons.eight_k,
    Icons.eight_mp,
    Icons.nine_k,
    Icons.nine_mp,
    Icons.six_mp,
    Icons.six_mp,
    Icons.six_mp,
    Icons.six_mp,
    Icons.six_mp,
    Icons.six_mp,
    Icons.six_mp,
    Icons.six_mp,
    Icons.six_mp,
    Icons.six_mp,
  ];
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => SizedBox(
        height: constraints.maxHeight - 10,
        child: GridView.builder(
          controller: _scrollController,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 60,
          ),
          itemBuilder: (c, idx) {
            IconData iconData = _list[idx];
            return Tooltip(
              message: '${iconData.codePoint}',
              child: Icon(
                iconData,
              ),
            );
          },
          itemCount: _list.length,
        ),
      ),
    );
  }
}
