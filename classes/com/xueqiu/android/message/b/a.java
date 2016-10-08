package com.xueqiu.android.message.b;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.d.a.b.c.b;
import com.d.a.b.f.d;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public final class a
  extends d
{
  private static final List<String> a = Collections.synchronizedList(new LinkedList());
  
  public final void a(String paramString, View paramView, Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      paramView = (ImageView)paramView;
      if (a.contains(paramString)) {
        break label46;
      }
    }
    label46:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        b.a(paramView, 100);
        a.add(paramString);
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */