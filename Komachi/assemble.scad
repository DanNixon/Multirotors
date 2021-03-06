include <config.scad>;

use <modules/fan_mount_spacer.scad>;
use <modules/skirt_clamp_tab_cutouts.scad>;

use <parts/base.scad>
use <parts/base_skirt_clamp.scad>
use <parts/lower_skirt_mount.scad>;
use <parts/lower_skirt_mount_clamp.scad>;
use <parts/front_thrust_fan_mount.scad>
use <parts/rear_thrust_fan_mount.scad>
use <parts/lift_fan_top_mount.scad>
use <parts/rudder.scad>
use <parts/rudder_mount.scad>
use <parts/skirt_tab.scad>;
use <parts/thrust_fan_mount_brace.scad>


module ExtrudeAndColour(c, h = MATERIAL_THICKNESS)
{
  color(c)
    linear_extrude(height = h, center = true)
    children();
}

module ThrustFanMountAssembly()
{
  translate([0, 0, THRUST_FAN_DUCT_HEIGHT + HALF_MATERIAL_THICKNESS])
    rotate([90, 0, 0])
      ExtrudeAndColour("red")
        children();

  translate([0, HALF_MATERIAL_THICKNESS, 0])
  {
    half_width = THRUST_FAN_DUCT_MOUNT_BRACE_SPACING / 2;

    for(x = [-half_width, half_width])
      translate([x, 0, HALF_MATERIAL_THICKNESS])
        rotate([90, 0, 90])
          ExtrudeAndColour("pink")
            ThrustFanMountBrace();
  }
}

module FanMountSpacerAssembly(duct_diam, sep_len, sep_width)
{
  offset = (duct_diam + sep_width) / 2;

  translate([0, -(sep_len + MATERIAL_THICKNESS) / 2, 0])
    for(a = [0 : 90 : 360])
      rotate([0, a, 0])
        translate([offset, 0, 0])
          ExtrudeAndColour("limegreen")
            FanMountSpacer(sep_len, sep_width);
}

module RudderAssembly()
{
  rudder_offset = RUDDER_SPACING / 2;
  rudder_assy_offset = -(RUDDER_DIMENSIONS[0] + RUDDER_MOUNT_DIMENSIONS[1] - MATERIAL_THICKNESS) / 2;

  translate([0, -HALF_MATERIAL_THICKNESS, 0])
  {
    for(z = [-RUDDER_MOUNT_OFFSET, RUDDER_MOUNT_OFFSET])
      translate([0, 0, z])
        rotate([0, 0, 180])
          ExtrudeAndColour("orange", RUDDER_MATERIAL_THICKNESS)
            RudderMount();

    translate([0, rudder_assy_offset, 0])
      for(x = [-rudder_offset, rudder_offset])
        translate([x, 0, 0])
          rotate([90, 0, 270])
            ExtrudeAndColour("magenta", RUDDER_MATERIAL_THICKNESS)
              Rudder();
  }
}


ExtrudeAndColour("blue")
  Base();

if(SKIRT_CLAMP)
  translate([0, 0, MATERIAL_THICKNESS + 1])
    ExtrudeAndColour("magenta")
      BaseSkirtClamp();

SkirtClampTabCutoutsTranslation(LOWER_SKIRT_MOUNT_SCALE)
  translate([0, 0, -(LOWER_SKIRT_MOUNT_SPACING + MATERIAL_THICKNESS) / 2])
    rotate([90, 0, 90])
      ExtrudeAndColour("limegreen")
        SkirtTab();

translate([0, 0, -LOWER_SKIRT_MOUNT_SPACING - MATERIAL_THICKNESS])
{
  ExtrudeAndColour("steelblue")
    LowerSkirtMount();

  if(SKIRT_CLAMP)
    translate([0, 0, MATERIAL_THICKNESS + 1])
      ExtrudeAndColour("magenta")
        LowerSkirtMountClamp();
}

translate(LIFT_FAN_DUCT_POSITION)
  rotate([270, 0, 0])
    FanMountSpacerAssembly(LIFT_FAN_DUCT_DIMENSIONS[0], LIFT_FAN_DUCT_MOUNT_SPACING, LIFT_FAN_DUCT_MOUNT_SEP_WIDTH);

translate(LIFT_FAN_DUCT_POSITION)
  translate([0, 0, LIFT_FAN_DUCT_MOUNT_SPACING + MATERIAL_THICKNESS])
    ExtrudeAndColour("cyan")
      LiftFanTopMount();

translate(THRUST_FAN_DUCT_MOUNT_POSITION)
{
  ThrustFanMountAssembly()
    FrontThrustFanMount();

  translate([0, 0, THRUST_FAN_DUCT_HEIGHT + HALF_MATERIAL_THICKNESS])
    FanMountSpacerAssembly(THRUST_FAN_DUCT_DIMENSIONS[0], THRUST_FAN_DUCT_MOUNT_SPACING, THRUST_FAN_DUCT_MOUNT_SEP_WIDTH);

  translate([0, -(THRUST_FAN_DUCT_MOUNT_SPACING + MATERIAL_THICKNESS), 0])
  {
    ThrustFanMountAssembly()
      RearThrustFanMount();

    translate([0, 0, THRUST_FAN_DUCT_HEIGHT + HALF_MATERIAL_THICKNESS])
      RudderAssembly();
  }
}
