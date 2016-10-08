package android.support.v4.a;

import android.content.Context;
import android.view.View;
import android.widget.TabHost.TabContentFactory;

final class z
  implements TabHost.TabContentFactory
{
  private final Context a;
  
  public z(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public final View createTabContent(String paramString)
  {
    paramString = new View(this.a);
    paramString.setMinimumWidth(0);
    paramString.setMinimumHeight(0);
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */