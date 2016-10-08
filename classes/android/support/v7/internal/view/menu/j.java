package android.support.v7.internal.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewDebug.ExportedProperty;
import android.widget.LinearLayout.LayoutParams;

public final class j
  extends LinearLayout.LayoutParams
{
  @ViewDebug.ExportedProperty
  public boolean a;
  @ViewDebug.ExportedProperty
  public int b;
  @ViewDebug.ExportedProperty
  public int c;
  @ViewDebug.ExportedProperty
  public boolean d;
  @ViewDebug.ExportedProperty
  public boolean e;
  public boolean f;
  
  public j()
  {
    super(-2, -2);
    this.a = false;
  }
  
  public j(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public j(j paramj)
  {
    super(paramj);
    this.a = paramj.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */