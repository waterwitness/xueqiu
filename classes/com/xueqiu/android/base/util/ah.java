package com.xueqiu.android.base.util;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.common.model.SNBJSONObject;
import java.util.ArrayList;
import java.util.List;

public final class ah
{
  public static AlertDialog a(final Context paramContext, final long paramLong, int paramInt, final String paramString)
  {
    final String str1 = paramContext.getString(2131165941);
    final String str2 = paramContext.getString(2131165938);
    final String str3 = paramContext.getString(2131165943);
    final String str4 = paramContext.getString(2131165942);
    final String str5 = paramContext.getString(2131165940);
    String str6 = paramContext.getString(2131165939);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str1);
    localArrayList.add(str2);
    localArrayList.add(str3);
    localArrayList.add(str4);
    if (!TextUtils.isEmpty(paramString)) {
      localArrayList.add(str5);
    }
    localArrayList.add(str6);
    new AlertDialog.Builder(paramContext).setTitle(2131165937).setItems((CharSequence[])localArrayList.toArray(new String[0]), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = (String)ah.this.get(paramAnonymousInt);
        if (paramAnonymousDialogInterface.equals(str1)) {
          ah.a(paramContext, paramLong, str2, 0, null);
        }
        do
        {
          return;
          if (paramAnonymousDialogInterface.equals(str3))
          {
            ah.a(paramContext, paramLong, str2, 1, null);
            return;
          }
          if (paramAnonymousDialogInterface.equals(str4))
          {
            ah.a(paramContext, paramLong, str2, 2, null);
            return;
          }
          if (paramAnonymousDialogInterface.equals(str5))
          {
            ah.a(paramContext, paramLong, str2, 3, null);
            return;
          }
        } while (!paramAnonymousDialogInterface.equals(paramString));
        ah.a(paramContext, paramLong, str2, 4, this.j);
      }
    }).create();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */