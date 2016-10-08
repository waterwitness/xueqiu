package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class r
{
  private static final Object f = new Object();
  private static r g;
  private final Context a;
  private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> b = new HashMap();
  private final HashMap<String, ArrayList<t>> c = new HashMap();
  private final ArrayList<s> d = new ArrayList();
  private final Handler e;
  
  private r(Context paramContext)
  {
    this.a = paramContext;
    this.e = new Handler(paramContext.getMainLooper())
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        switch (paramAnonymousMessage.what)
        {
        default: 
          super.handleMessage(paramAnonymousMessage);
          return;
        }
        r.a(r.this);
      }
    };
  }
  
  public static r a(Context paramContext)
  {
    synchronized (f)
    {
      if (g == null) {
        g = new r(paramContext.getApplicationContext());
      }
      paramContext = g;
      return paramContext;
    }
  }
  
  private void a()
  {
    for (;;)
    {
      int i;
      synchronized (this.b)
      {
        i = this.d.size();
        if (i <= 0) {
          return;
        }
        s[] arrayOfs = new s[i];
        this.d.toArray(arrayOfs);
        this.d.clear();
        i = 0;
        if (i >= arrayOfs.length) {
          continue;
        }
        ??? = arrayOfs[i];
        int j = 0;
        if (j < ???.b.size())
        {
          ((t)???.b.get(j)).b.onReceive(this.a, ???.a);
          j += 1;
        }
      }
      i += 1;
    }
  }
  
  public final void a(BroadcastReceiver paramBroadcastReceiver)
  {
    for (;;)
    {
      int k;
      int i;
      synchronized (this.b)
      {
        ArrayList localArrayList1 = (ArrayList)this.b.remove(paramBroadcastReceiver);
        if (localArrayList1 != null) {
          break label166;
        }
        return;
        if (j < localArrayList1.size())
        {
          IntentFilter localIntentFilter = (IntentFilter)localArrayList1.get(j);
          k = 0;
          if (k >= localIntentFilter.countActions()) {
            break label190;
          }
          String str = localIntentFilter.getAction(k);
          ArrayList localArrayList2 = (ArrayList)this.c.get(str);
          if (localArrayList2 == null) {
            break label181;
          }
          i = 0;
          if (i < localArrayList2.size())
          {
            if (((t)localArrayList2.get(i)).b == paramBroadcastReceiver)
            {
              localArrayList2.remove(i);
              i -= 1;
              break label172;
            }
          }
          else
          {
            if (localArrayList2.size() > 0) {
              break label181;
            }
            this.c.remove(str);
            break label181;
          }
        }
        else
        {
          return;
        }
      }
      break label172;
      label166:
      int j = 0;
      continue;
      label172:
      i += 1;
      continue;
      label181:
      k += 1;
      continue;
      label190:
      j += 1;
    }
  }
  
  public final void a(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    synchronized (this.b)
    {
      t localt = new t(paramIntentFilter, paramBroadcastReceiver);
      Object localObject2 = (ArrayList)this.b.get(paramBroadcastReceiver);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new ArrayList(1);
        this.b.put(paramBroadcastReceiver, localObject1);
      }
      ((ArrayList)localObject1).add(paramIntentFilter);
      int i = 0;
      while (i < paramIntentFilter.countActions())
      {
        localObject2 = paramIntentFilter.getAction(i);
        localObject1 = (ArrayList)this.c.get(localObject2);
        paramBroadcastReceiver = (BroadcastReceiver)localObject1;
        if (localObject1 == null)
        {
          paramBroadcastReceiver = new ArrayList(1);
          this.c.put(localObject2, paramBroadcastReceiver);
        }
        paramBroadcastReceiver.add(localt);
        i += 1;
      }
      return;
    }
  }
  
  public final boolean a(Intent paramIntent)
  {
    int i;
    label158:
    int j;
    Object localObject;
    int k;
    ArrayList localArrayList1;
    synchronized (this.b)
    {
      String str1 = paramIntent.getAction();
      String str2 = paramIntent.resolveTypeIfNeeded(this.a.getContentResolver());
      Uri localUri = paramIntent.getData();
      String str3 = paramIntent.getScheme();
      Set localSet = paramIntent.getCategories();
      if ((paramIntent.getFlags() & 0x8) == 0) {
        break label486;
      }
      i = 1;
      if (i != 0) {
        Log.v("LocalBroadcastManager", "Resolving type " + str2 + " scheme " + str3 + " of intent " + paramIntent);
      }
      ArrayList localArrayList2 = (ArrayList)this.c.get(paramIntent.getAction());
      if (localArrayList2 == null) {
        break label461;
      }
      if (i == 0) {
        break label469;
      }
      Log.v("LocalBroadcastManager", "Action list: " + localArrayList2);
      break label469;
      if (j >= localArrayList2.size()) {
        break label519;
      }
      localObject = (t)localArrayList2.get(j);
      if (i != 0) {
        Log.v("LocalBroadcastManager", "Matching against filter " + ((t)localObject).a);
      }
      if (((t)localObject).c)
      {
        if (i == 0) {
          break label492;
        }
        Log.v("LocalBroadcastManager", "  Filter's target already added");
      }
      else
      {
        k = ((t)localObject).a.match(str1, str2, str3, localUri, localSet, "LocalBroadcastManager");
        if (k >= 0)
        {
          if (i != 0) {
            Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(k));
          }
          if (localArrayList1 != null) {
            break label466;
          }
          localArrayList1 = new ArrayList();
          label301:
          localArrayList1.add(localObject);
          ((t)localObject).c = true;
        }
      }
    }
    if (i != 0) {
      switch (k)
      {
      default: 
        localObject = "unknown reason";
        label363:
        Log.v("LocalBroadcastManager", "  Filter did not match: " + (String)localObject);
        break;
      }
    }
    for (;;)
    {
      if (i < localArrayList1.size())
      {
        ((t)localArrayList1.get(i)).c = false;
        i += 1;
      }
      else
      {
        this.d.add(new s(paramIntent, localArrayList1));
        if (!this.e.hasMessages(1)) {
          this.e.sendEmptyMessage(1);
        }
        return true;
        label461:
        label466:
        label469:
        label486:
        label492:
        label519:
        do
        {
          return false;
          break label301;
          localArrayList1 = null;
          j = 0;
          break label158;
          for (;;)
          {
            j += 1;
            break label158;
            i = 0;
            break;
          }
          localObject = "action";
          break label363;
          localObject = "category";
          break label363;
          localObject = "data";
          break label363;
          localObject = "type";
          break label363;
        } while (localArrayList1 == null);
        i = 0;
      }
    }
  }
  
  public final void b(Intent paramIntent)
  {
    if (a(paramIntent)) {
      a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */