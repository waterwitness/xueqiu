package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.content.r;
import java.util.ArrayList;

public final class x
{
  public static void a(Context paramContext, String paramString1, String paramString2, Parcelable paramParcelable)
  {
    paramString1 = new Intent(paramString1);
    if (paramParcelable != null) {
      paramString1.putExtra(paramString2, paramParcelable);
    }
    r.a(paramContext).a(paramString1);
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2, Parcelable paramParcelable)
  {
    paramString1 = new Intent(paramString1);
    if (paramParcelable != null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramParcelable);
      paramString1.putParcelableArrayListExtra(paramString2, localArrayList);
    }
    r.a(paramContext).a(paramString1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */