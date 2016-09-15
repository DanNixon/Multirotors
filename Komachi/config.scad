/* Machine */
MACHINE_TOLERANCE = 0; //For the JAS laser at Maker Space
/* MACHINE_TOLERANCE = 0.1; //For most other lasers */


/* Material */
MATERIAL_THICKNESS = 3;
HALF_MATERIAL_THICKNESS = MATERIAL_THICKNESS / 2;

/* General */
CORNER = 1;
HALF_CORNER = CORNER / 2;
SPACER_TAB_WIDTH_FACTOR = 0.35;

/* Base plate */
BASE_DIMENSIONS = [180, 240];
BASE_FRONT_CORNER_RADIUS = BASE_DIMENSIONS[0] / 2;
BASE_REAR_CORNER_RADIUS = 30;

/* Lift fan duct mount */
LIFT_FAN_DUCT_DIMENSIONS = [71, 28]; // [diameter, length]
LIFT_FAN_DUCT_MOUNT_PADDING = 30;
LIFT_FAN_DUCT_POSITION = [0, (BASE_DIMENSIONS[1] / 2) - LIFT_FAN_DUCT_DIMENSIONS[0]];
LIFT_FAN_DUCT_MOUNT_SPACING = 18;
LIFT_FAN_DUCT_MOUNT_SEP_WIDTH = 14;

/* Thrust fan duct mount */
THRUST_FAN_DUCT_DIMENSIONS = [74.5, 48]; // [diameter, length]
THRUST_FAN_DUCT_HEIGHT = 60;
THRUST_FAN_DUCT_MOUNT_PADDING = 30;
THRUST_FAN_DUCT_MOUNT_POSITION = [0, -40];
THRUST_FAN_DUCT_MOUNT_SPACING = THRUST_FAN_DUCT_DIMENSIONS[1] - 8;
THRUST_FAN_DUCT_MOUNT_WIDTH = BASE_DIMENSIONS[0] * 0.8;
THRUST_FAN_DUCT_MOUNT_SEP_WIDTH = 14;
THRUST_FAN_DUCT_MOUNT_TAB_POSITIONS = [-THRUST_FAN_DUCT_MOUNT_WIDTH * 0.4, 0, THRUST_FAN_DUCT_MOUNT_WIDTH * 0.4];
THRUST_FAN_DUCT_MOUNT_TAB_WIDTH = 10;
THRUST_FAN_DUCT_MOUNT_BRACE_DIM = [25, THRUST_FAN_DUCT_HEIGHT * 0.95];
THRUST_FAN_DUCT_MOUNT_BRACE_SPACING = THRUST_FAN_DUCT_MOUNT_WIDTH * 0.7;
THRUST_FAN_DUCT_MOUNT_BRACE_TOP_TAB_WIDTH = 10;
THRUST_FAN_DUCT_MOUNT_BRACE_TOP_TAB_POS = THRUST_FAN_DUCT_MOUNT_BRACE_DIM[1] * 0.8;
THRUST_FAN_DUCT_MOUNT_BRACE_BOTTOM_TAB_WIDTH = THRUST_FAN_DUCT_MOUNT_BRACE_DIM[0] * 0.75;
THRUST_FAN_DUCT_MOUNT_BRACE_BOTTOM_TAB_POS = THRUST_FAN_DUCT_MOUNT_BRACE_DIM[0] * 0.5;

/* Rudder */
RUDDER_DIMENSIONS = [40, THRUST_FAN_DUCT_DIMENSIONS[0] * 0.9];
RUDDER_CORNER_RADIUS = 2;
RUDDER_PIVOT_LENGTH = 10;
RUDDER_SPACING = THRUST_FAN_DUCT_DIMENSIONS[0] * 0.6;
RUDDER_ARM_HOLE_POSITION = [-4, -RUDDER_DIMENSIONS[1] * 0.45];
RUDDER_ARM_HOLE_DIAM = 2;

/* Rudder mount */
RUDDER_MOUNT_DIMENSIONS = [THRUST_FAN_DUCT_DIMENSIONS[0] * 0.8, 10];
RUDDER_MOUNT_CORNER_RADIUS = 5;
RUDDER_MOUNT_OFFSET = (RUDDER_DIMENSIONS[1] / 2) + MATERIAL_THICKNESS;
RUDDER_MOUNT_TAB_WIDTH = 5;
RUDDER_MOUNT_TAB_OFFSET = (RUDDER_MOUNT_DIMENSIONS[0] - RUDDER_MOUNT_TAB_WIDTH) / 2;
RUDDER_MOUNT_TAB_LENGTH = MATERIAL_THICKNESS + 6;

/* Skirt clamp */
SKIRT_CLAMP_PADDING = 10;
SKIRT_CLAMP_HOLE_DIAM = 3;

/* Lower skirt mount */
LOWER_SKIRT_MOUNT_SCALE = 0.6;
