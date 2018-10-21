d=10;
h=20;

  minkowski(){
    linear_extrude(height=h*0.0001)
      offset(-d)
        import("logo2.dxf");
    
    linear_extrude(height=h,scale=h*0.0001)
      circle(d);
  }