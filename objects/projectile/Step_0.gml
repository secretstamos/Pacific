// Calculate movement using speed and direction
var move_x = lengthdir_x(speed, direction);
var move_y = lengthdir_y(speed, direction);

image_angle = direction;

// Move the bullet
x += move_x;
y += move_y;
