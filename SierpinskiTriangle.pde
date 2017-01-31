public void setup()
{
   size(600,600);
}
public void draw()
{    
  sierpinski(0,600,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{   
  if(len<=50)
 {
     triangle(x,y,x+len,y, x+len/2,y-len);
   
  }
 else
  {
  	
  	sierpinski(x,y,len/2);
  	sierpinski(x+len/2,y,len/2);
  	sierpinski(x+len/4,y-len/2,len/2);

  	

  }                                                                                                                                                                                                                  


}
 /* recursively call the `sierpinksi` function to draw a triangle with the left corner at (`x`,`y`) and a base
  and height equal to `len/2`.
        * Again, call the `sierpinksi` function a second time to draw another triangle a distance of `len/2`
         to the right of the first triangle.
        * Now, call the `sierpinksi` function a third time to draw a triangle a distance of `len/4` to the
         right and `len/2` up from the first triangle. This triangle should "sit on top" of the first two.*/