target_x = argument0;
target_y = argument1;

mp_grid_path(global.Raygrid, path, x, y, target_x, target_y, true);
path_start(path, 3, path_action_stop, false);