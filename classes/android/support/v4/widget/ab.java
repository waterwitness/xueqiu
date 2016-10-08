package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class ab
  extends a
{
  private int j;
  private int k;
  private LayoutInflater l;
  
  public ab(Context paramContext, int paramInt)
  {
    super(paramContext, null);
    this.k = paramInt;
    this.j = paramInt;
    this.l = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.l.inflate(this.j, paramViewGroup, false);
  }
  
  public final View b(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.l.inflate(this.k, paramViewGroup, false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */