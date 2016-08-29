CORNER = 1;

MACHINE_TOLERANCE = 0.1;

MATERIAL_THICKNESS = 3;
HALF_MATERIAL_THICKNESS = MATERIAL_THICKNESS / 2;

BASE_DIMENSIONS = [150, 220];
BASE_FRONT_CORNER_RADIUS = BASE_DIMENSIONS[0] / 2;
BASE_REAR_CORNER_RADIUS = 30;

SPACER_TAB_WIDTH_FACTOR = 0.35;

LIFT_FAN_DUCT_DIMENSIONS = [71, 59]; // [diameter, length]
LIFT_FAN_DUCT_MOUNT_PADDING = 30;
LIFT_FAN_DUCT_POSITION = [0, (BASE_DIMENSIONS[1] / 2) - LIFT_FAN_DUCT_DIMENSIONS[0] + 10];
LIFT_FAN_DUCT_MOUNT_SPACING = 30;
LIFT_FAN_DUCT_MOUNT_SEP_WIDTH = 14;

THRUST_FAN_DUCT_DIMENSIONS = [70, 61]; // [diameter, length]
THRUST_FAN_DUCT_HEIGHT = 50;
THRUST_FAN_DUCT_MOUNT_PADDING = 30;
THRUST_FAN_DUCT_MOUNT_POSITION = [0, -35];
THRUST_FAN_DUCT_MOUNT_SPACING = 40;
THRUST_FAN_DUCT_MOUNT_WIDTH = BASE_DIMENSIONS[0] * 0.8;
THRUST_FAN_DUCT_MOUNT_BRACE_DIAM = [25, THRUST_FAN_DUCT_HEIGHT * 0.95];
THRUST_FAN_DUCT_MOUNT_BRACE_SPACING = THRUST_FAN_DUCT_MOUNT_WIDTH * 0.7;
THRUST_FAN_DUCT_MOUNT_SEP_WIDTH = 14;

RUDDER_DIMENSIONS = [20, THRUST_FAN_DUCT_DIMENSIONS[0] * 0.9];
RUDDER_CORNER_RADIUS = 2;
RUDDER_PIVOT_LENGTH = 5;
RUDDER_SPACING = THRUST_FAN_DUCT_DIMENSIONS[0] * 0.45;

RUDDER_MOUNT_DIMENSIONS = [THRUST_FAN_DUCT_DIMENSIONS[0] * 0.8, 10];
RUDDER_MOUNT_CORNER_RADIUS = 5;
RUDDER_MOUNT_OFFSET = (RUDDER_DIMENSIONS[1] / 2) + MATERIAL_THICKNESS;
