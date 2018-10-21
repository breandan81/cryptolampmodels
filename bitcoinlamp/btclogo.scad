minkowski()
{
linear_extrude(height=30*.0001)
offset(r=-10)
import("logo2.dxf");


linear_extrude(height=30)
import("logo2.dxf");

}