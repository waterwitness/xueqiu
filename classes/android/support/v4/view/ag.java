package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;

class ag
  implements LayoutInflater.Factory
{
  final aj a;
  
  ag(aj paramaj)
  {
    this.a = paramaj;
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.a.a(null, paramString, paramContext, paramAttributeSet);
  }
  
  public String toString()
  {
    return getClass().getName() + "{" + this.a + "}";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */