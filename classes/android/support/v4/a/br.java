package android.support.v4.a;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class br
{
  private static final Object a = new Object();
  private static Field b;
  private static boolean c;
  private static final Object d = new Object();
  
  public static Bundle a(Notification.Builder paramBuilder, bn parambn)
  {
    paramBuilder.addAction(parambn.a(), parambn.b(), parambn.c());
    paramBuilder = new Bundle(parambn.d());
    if (parambn.e() != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", ce.a(parambn.e()));
    }
    return paramBuilder;
  }
  
  public static Bundle a(Notification paramNotification)
  {
    Object localObject1;
    Bundle localBundle;
    synchronized (a)
    {
      if (c) {
        return null;
      }
    }
  }
  
  public static SparseArray<Bundle> a(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Bundle localBundle = (Bundle)paramList.get(i);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(i, localBundle);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (SparseArray<Bundle>)localObject1;
  }
  
  public static void a(aq paramaq, CharSequence paramCharSequence1, boolean paramBoolean1, CharSequence paramCharSequence2, Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean2)
  {
    paramaq = new Notification.BigPictureStyle(paramaq.a()).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap1);
    if (paramBoolean2) {
      paramaq.bigLargeIcon(paramBitmap2);
    }
    if (paramBoolean1) {
      paramaq.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void a(aq paramaq, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    paramaq = new Notification.BigTextStyle(paramaq.a()).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean) {
      paramaq.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void a(aq paramaq, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList<CharSequence> paramArrayList)
  {
    paramaq = new Notification.InboxStyle(paramaq.a()).setBigContentTitle(paramCharSequence1);
    if (paramBoolean) {
      paramaq.setSummaryText(paramCharSequence2);
    }
    paramCharSequence1 = paramArrayList.iterator();
    while (paramCharSequence1.hasNext()) {
      paramaq.addLine((CharSequence)paramCharSequence1.next());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\br.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */