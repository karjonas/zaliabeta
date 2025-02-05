/// @description ds_grid_get compatibility for GMS 1, return 0 instead of undefined.
// @param {DS.Grid} grid The index of the grid.
// @param {Real } x The x position of the cell you want to find the value of.
// @param {Real } y The y position of the cell you want to find the value of.
/// @returns Any
function ds_grid_get_compat(grid, x, y) {
	if (ds_grid_width(grid) <= x || ds_grid_height(grid) <= y || x < 0  || y < 0) {
		sdm("ds_grid_get_compat:", grid, "index out of bounds reading [", x, ",", y, "] - size is [", ds_grid_width(grid) , ",", ds_grid_height(grid) , "]");
		return 0;
	}
	return ds_grid_get(grid, x, y);
}