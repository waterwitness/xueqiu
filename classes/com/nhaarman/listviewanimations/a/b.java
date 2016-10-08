package com.nhaarman.listviewanimations.a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

public final class b
{
  public static int a(@NonNull d paramd, @NonNull View paramView)
  {
    return paramd.a(paramView) - paramd.h();
  }
  
  @Nullable
  public static View a(@NonNull d paramd, int paramInt)
  {
    int j = paramd.g();
    Object localObject = null;
    int i = 0;
    if ((i < j) && (localObject == null))
    {
      View localView = paramd.a(i);
      if ((localView == null) || (a(paramd, localView) != paramInt)) {
        break label59;
      }
      localObject = localView;
    }
    label59:
    for (;;)
    {
      i += 1;
      break;
      return (View)localObject;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */