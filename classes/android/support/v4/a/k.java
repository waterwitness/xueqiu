package android.support.v4.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.e.n;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class k
  extends g
{
  final Handler a = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        super.handleMessage(paramAnonymousMessage);
      case 1: 
        do
        {
          return;
        } while (!k.this.e);
        k.this.a(false);
        return;
      }
      k.this.A_();
      k.this.b.c();
    }
  };
  public final o b = new o(new l(this));
  boolean c;
  boolean d;
  boolean e;
  boolean f;
  boolean g;
  boolean h;
  
  private static String a(View paramView)
  {
    char c3 = 'F';
    char c2 = '.';
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(paramView.getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(paramView)));
    localStringBuilder.append(' ');
    char c1;
    label118:
    label135:
    label152:
    label169:
    label186:
    label203:
    label220:
    label244:
    label261:
    int i;
    Object localObject;
    switch (paramView.getVisibility())
    {
    default: 
      localStringBuilder.append('.');
      if (paramView.isFocusable())
      {
        c1 = 'F';
        localStringBuilder.append(c1);
        if (!paramView.isEnabled()) {
          break label562;
        }
        c1 = 'E';
        localStringBuilder.append(c1);
        if (!paramView.willNotDraw()) {
          break label568;
        }
        c1 = '.';
        localStringBuilder.append(c1);
        if (!paramView.isHorizontalScrollBarEnabled()) {
          break label574;
        }
        c1 = 'H';
        localStringBuilder.append(c1);
        if (!paramView.isVerticalScrollBarEnabled()) {
          break label580;
        }
        c1 = 'V';
        localStringBuilder.append(c1);
        if (!paramView.isClickable()) {
          break label586;
        }
        c1 = 'C';
        localStringBuilder.append(c1);
        if (!paramView.isLongClickable()) {
          break label592;
        }
        c1 = 'L';
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        if (!paramView.isFocused()) {
          break label598;
        }
        c1 = c3;
        localStringBuilder.append(c1);
        if (!paramView.isSelected()) {
          break label604;
        }
        c1 = 'S';
        localStringBuilder.append(c1);
        c1 = c2;
        if (paramView.isPressed()) {
          c1 = 'P';
        }
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        localStringBuilder.append(paramView.getLeft());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getTop());
        localStringBuilder.append('-');
        localStringBuilder.append(paramView.getRight());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getBottom());
        i = paramView.getId();
        if (i != -1)
        {
          localStringBuilder.append(" #");
          localStringBuilder.append(Integer.toHexString(i));
          localObject = paramView.getResources();
          if ((i != 0) && (localObject != null)) {
            switch (0xFF000000 & i)
            {
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      try
      {
        paramView = ((Resources)localObject).getResourcePackageName(i);
        String str = ((Resources)localObject).getResourceTypeName(i);
        localObject = ((Resources)localObject).getResourceEntryName(i);
        localStringBuilder.append(" ");
        localStringBuilder.append(paramView);
        localStringBuilder.append(":");
        localStringBuilder.append(str);
        localStringBuilder.append("/");
        localStringBuilder.append((String)localObject);
      }
      catch (Resources.NotFoundException paramView)
      {
        label562:
        label568:
        label574:
        label580:
        label586:
        label592:
        label598:
        label604:
        continue;
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
      localStringBuilder.append('V');
      break;
      localStringBuilder.append('I');
      break;
      localStringBuilder.append('G');
      break;
      c1 = '.';
      break label118;
      c1 = '.';
      break label135;
      c1 = 'D';
      break label152;
      c1 = '.';
      break label169;
      c1 = '.';
      break label186;
      c1 = '.';
      break label203;
      c1 = '.';
      break label220;
      c1 = '.';
      break label244;
      c1 = '.';
      break label261;
      paramView = "app";
      continue;
      paramView = "android";
    }
  }
  
  private void a(String paramString, PrintWriter paramPrintWriter, View paramView)
  {
    paramPrintWriter.print(paramString);
    if (paramView == null) {
      paramPrintWriter.println("null");
    }
    for (;;)
    {
      return;
      paramPrintWriter.println(a(paramView));
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int j = paramView.getChildCount();
        if (j > 0)
        {
          paramString = paramString + "  ";
          int i = 0;
          while (i < j)
          {
            a(paramString, paramPrintWriter, paramView.getChildAt(i));
            i += 1;
          }
        }
      }
    }
  }
  
  public void A_()
  {
    this.b.a.f.l();
  }
  
  final View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.b.a.f.a(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public final void a(i parami, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
    {
      super.startActivityForResult(paramIntent, -1);
      return;
    }
    if ((0xFFFF0000 & paramInt) != 0) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, (parami.p + 1 << 16) + (0xFFFF & paramInt));
  }
  
  final void a(boolean paramBoolean)
  {
    if (!this.f)
    {
      this.f = true;
      this.g = paramBoolean;
      this.a.removeMessages(1);
      Object localObject1 = this.b;
      paramBoolean = this.g;
      Object localObject2 = ((o)localObject1).a;
      if ((((p)localObject2).h != null) && (((p)localObject2).j))
      {
        ((p)localObject2).j = false;
        if (!paramBoolean) {
          break label131;
        }
        ((p)localObject2).h.d();
      }
      for (;;)
      {
        localObject1 = ((o)localObject1).a.f;
        if (((r)localObject1).f == null) {
          break;
        }
        int i = 0;
        while (i < ((r)localObject1).f.size())
        {
          localObject2 = (i)((r)localObject1).f.get(i);
          if (localObject2 != null) {
            ((i)localObject2).N = paramBoolean;
          }
          i += 1;
        }
        label131:
        ((p)localObject2).h.c();
      }
      this.b.a.f.c(2);
    }
  }
  
  public boolean a(View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(0, paramView, paramMenu);
  }
  
  public void b()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      invalidateOptionsMenu();
      return;
    }
    this.h = true;
  }
  
  public final q c()
  {
    return this.b.a.f;
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = Build.VERSION.SDK_INT;
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.c);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.d);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.e);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.f);
    p localp = this.b.a;
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(localp.j);
    if (localp.h != null)
    {
      paramPrintWriter.print(str);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(localp.h)));
      paramPrintWriter.println(":");
      localp.h.a(str + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    this.b.a.f.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("View Hierarchy:");
    a(paramString + "  ", paramPrintWriter, getWindow().getDecorView());
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.b.b();
    int i = paramInt1 >> 16;
    if (i != 0)
    {
      i -= 1;
      int j = this.b.a();
      if ((j == 0) || (i < 0) || (i >= j))
      {
        Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      i locali = (i)this.b.a(new ArrayList(j)).get(i);
      if (locali == null)
      {
        Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      locali.a(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if (!this.b.a.f.c())
    {
      if (Build.VERSION.SDK_INT >= 21) {
        finishAfterTransition();
      }
    }
    else {
      return;
    }
    finish();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.b.a.f.a(paramConfiguration);
  }
  
  public void onCreate(@Nullable Bundle paramBundle)
  {
    Object localObject1 = this.b;
    ((o)localObject1).a.f.a(((o)localObject1).a, ((o)localObject1).a, null);
    super.onCreate(paramBundle);
    localObject1 = (m)getLastNonConfigurationInstance();
    Object localObject2;
    Object localObject3;
    if (localObject1 != null)
    {
      localObject2 = this.b;
      localObject3 = ((m)localObject1).c;
      ((o)localObject2).a.g = ((n)localObject3);
    }
    if (paramBundle != null)
    {
      localObject2 = paramBundle.getParcelable("android:support:fragments");
      localObject3 = this.b;
      if (localObject1 == null) {
        break label115;
      }
    }
    label115:
    for (paramBundle = ((m)localObject1).b;; paramBundle = null)
    {
      ((o)localObject3).a.f.a((Parcelable)localObject2, paramBundle);
      this.b.a.f.i();
      return;
    }
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool1 = super.onCreatePanelMenu(paramInt, paramMenu);
      o localo = this.b;
      MenuInflater localMenuInflater = getMenuInflater();
      boolean bool2 = localo.a.f.a(paramMenu, localMenuInflater);
      if (Build.VERSION.SDK_INT >= 11) {
        return bool1 | bool2;
      }
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a(false);
    this.b.a.f.n();
    p localp = this.b.a;
    if (localp.h != null) {
      localp.h.g();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    this.b.a.f.o();
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 0: 
      return this.b.a.f.a(paramMenuItem);
    }
    return this.b.a.f.b(paramMenuItem);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.b.b();
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      this.b.a.f.b(paramMenu);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    this.d = false;
    if (this.a.hasMessages(2))
    {
      this.a.removeMessages(2);
      A_();
    }
    this.b.a.f.c(4);
  }
  
  public void onPostResume()
  {
    super.onPostResume();
    this.a.removeMessages(2);
    A_();
    this.b.c();
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (this.h)
      {
        this.h = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      return a(paramView, paramMenu) | this.b.a.f.a(paramMenu);
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfInt)
  {
    int i = paramInt >> 8 & 0xFF;
    int j;
    if (i != 0)
    {
      i -= 1;
      j = this.b.a();
      if ((j == 0) || (i < 0) || (i >= j)) {
        Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(paramInt));
      }
    }
    else
    {
      return;
    }
    if ((i)this.b.a(new ArrayList(j)).get(i) == null)
    {
      Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(paramInt));
      return;
    }
    i.l();
  }
  
  public void onResume()
  {
    super.onResume();
    this.a.sendEmptyMessage(2);
    this.d = true;
    this.b.c();
  }
  
  public final Object onRetainNonConfigurationInstance()
  {
    if (this.e) {
      a(true);
    }
    r localr = this.b.a.f;
    Object localObject2;
    if (localr.f != null)
    {
      int i = 0;
      localObject1 = null;
      localObject2 = localObject1;
      if (i < localr.f.size())
      {
        i locali = (i)localr.f.get(i);
        localObject3 = localObject1;
        if (locali != null)
        {
          localObject3 = localObject1;
          if (locali.L)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(locali);
            locali.M = true;
            if (locali.s == null) {
              break label182;
            }
          }
        }
        label182:
        for (int j = locali.s.p;; j = -1)
        {
          locali.t = j;
          localObject3 = localObject2;
          if (r.a)
          {
            Log.v("FragmentManager", "retainNonConfig: keeping retained " + locali);
            localObject3 = localObject2;
          }
          i += 1;
          localObject1 = localObject3;
          break;
        }
      }
    }
    else
    {
      localObject2 = null;
    }
    Object localObject1 = this.b.a.g();
    if ((localObject2 == null) && (localObject1 == null)) {
      return null;
    }
    Object localObject3 = new m();
    ((m)localObject3).a = null;
    ((m)localObject3).b = ((List)localObject2);
    ((m)localObject3).c = ((n)localObject1);
    return localObject3;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = this.b.a.f.h();
    if (localParcelable != null) {
      paramBundle.putParcelable("android:support:fragments", localParcelable);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    this.e = false;
    this.f = false;
    this.a.removeMessages(1);
    if (!this.c)
    {
      this.c = true;
      this.b.a.f.j();
    }
    this.b.b();
    this.b.c();
    Object localObject = this.b.a;
    if (!((p)localObject).j)
    {
      ((p)localObject).j = true;
      if (((p)localObject).h == null) {
        break label180;
      }
      ((p)localObject).h.b();
    }
    p localp;
    int k;
    for (;;)
    {
      ((p)localObject).i = true;
      this.b.a.f.k();
      localp = this.b.a;
      if (localp.g == null) {
        return;
      }
      k = localp.g.size();
      localObject = new ai[k];
      i = k - 1;
      while (i >= 0)
      {
        localObject[i] = ((ai)localp.g.c(i));
        i -= 1;
      }
      label180:
      if (!((p)localObject).i)
      {
        ((p)localObject).h = ((p)localObject).a("(root)", ((p)localObject).j, false);
        if ((((p)localObject).h != null) && (!((p)localObject).h.e)) {
          ((p)localObject).h.b();
        }
      }
    }
    int i = 0;
    while (i < k)
    {
      localp = localObject[i];
      if (localp.f)
      {
        if (ai.a) {
          Log.v("LoaderManager", "Finished Retaining in " + localp);
        }
        localp.f = false;
        int j = localp.b.a() - 1;
        while (j >= 0)
        {
          aj localaj = (aj)localp.b.c(j);
          if (localaj.i)
          {
            if (ai.a) {
              Log.v("LoaderManager", "  Finished Retaining: " + localaj);
            }
            localaj.i = false;
            if ((localaj.h != localaj.j) && (!localaj.h)) {
              localaj.b();
            }
          }
          if ((localaj.h) && (localaj.e) && (!localaj.k)) {
            localaj.b(localaj.d, localaj.g);
          }
          j -= 1;
        }
      }
      localp.f();
      i += 1;
    }
  }
  
  public void onStateNotSaved()
  {
    this.b.b();
  }
  
  public void onStop()
  {
    super.onStop();
    this.e = true;
    this.a.sendEmptyMessage(1);
    this.b.a.f.m();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0)) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */