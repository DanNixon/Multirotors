include <../config.scad>;
include <../modules/fan_mount_spacer.scad>;

module ThrustFanMountSpacer()
{
  FanMountSpacer(THRUST_FAN_DUCT_MOUNT_SPACING, THRUST_FAN_DUCT_MOUNT_SEP_WIDTH);
}

ThrustFanMountSpacer();
