package android.support.v4.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public final class ch
  implements Iterable<Intent>
{
  private static final cj a = new ck();
  private final ArrayList<Intent> b = new ArrayList();
  private final Context c;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new cl();
      return;
    }
  }
  
  private ch(Context paramContext)
  {
    this.c = paramContext;
  }
  
  private ch a(ComponentName paramComponentName)
  {
    int i = this.b.size();
    try
    {
      for (paramComponentName = ak.a(this.c, paramComponentName); paramComponentName != null; paramComponentName = ak.a(this.c, paramComponentName.getComponent())) {
        this.b.add(i, paramComponentName);
      }
      return this;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
      throw new IllegalArgumentException(paramComponentName);
    }
  }
  
  public static ch a(Context paramContext)
  {
    return new ch(paramContext);
  }
  
  public final ch a(Activity paramActivity)
  {
    Object localObject = null;
    if ((paramActivity instanceof ci)) {
      localObject = ((ci)paramActivity).b_();
    }
    if (localObject == null) {}
    for (paramActivity = ak.a(paramActivity);; paramActivity = (Activity)localObject)
    {
      if (paramActivity != null)
      {
        ComponentName localComponentName = paramActivity.getComponent();
        localObject = localComponentName;
        if (localComponentName == null) {
          localObject = paramActivity.resolveActivity(this.c.getPackageManager());
        }
        a((ComponentName)localObject);
        this.b.add(paramActivity);
      }
      return this;
    }
  }
  
  public final void a()
  {
    int i = 1;
    if (this.b.isEmpty()) {
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
    Object localObject = (Intent[])this.b.toArray(new Intent[this.b.size()]);
    localObject[0] = new Intent(localObject[0]).addFlags(268484608);
    Context localContext = this.c;
    int j = Build.VERSION.SDK_INT;
    if (j >= 16) {
      localContext.startActivities((Intent[])localObject, null);
    }
    for (;;)
    {
      if (i == 0)
      {
        localObject = new Intent(localObject[(localObject.length - 1)]);
        ((Intent)localObject).addFlags(268435456);
        this.c.startActivity((Intent)localObject);
      }
      return;
      if (j >= 11) {
        localContext.startActivities((Intent[])localObject);
      } else {
        i = 0;
      }
    }
  }
  
  public final Iterator<Intent> iterator()
  {
    return this.b.iterator();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\ch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */