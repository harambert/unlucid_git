draw_self();

if flash
{
	shader_set(sh_white);
	draw_self();
	shader_reset();
}