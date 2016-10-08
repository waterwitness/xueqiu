package android.support.v7.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.c.a.a;
import android.support.v4.view.ak;
import android.support.v7.b.d;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class p
  implements a
{
  private static final int[] l = { 1, 4, 5, 3, 2, 0 };
  final Context a;
  final Resources b;
  q c;
  ArrayList<t> d;
  boolean e;
  ArrayList<t> f;
  CharSequence g;
  Drawable h;
  View i;
  boolean j = false;
  t k;
  private boolean m;
  private boolean n;
  private ArrayList<t> o;
  private ArrayList<t> p;
  private boolean q;
  private int r = 0;
  private ContextMenu.ContextMenuInfo s;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  private ArrayList<t> w = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<ad>> x = new CopyOnWriteArrayList();
  
  public p(Context paramContext)
  {
    this.a = paramContext;
    this.b = paramContext.getResources();
    this.d = new ArrayList();
    this.o = new ArrayList();
    this.e = true;
    this.f = new ArrayList();
    this.p = new ArrayList();
    this.q = true;
    if ((this.b.getConfiguration().keyboard != 1) && (this.b.getBoolean(d.abc_config_showMenuShortcutsWhenKeyboardPresent))) {}
    for (;;)
    {
      this.n = bool;
      return;
      bool = false;
    }
  }
  
  private static int a(ArrayList<t> paramArrayList, int paramInt)
  {
    int i1 = paramArrayList.size() - 1;
    while (i1 >= 0)
    {
      if (((t)paramArrayList.get(i1)).a <= paramInt) {
        return i1 + 1;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  private t a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = this.w;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty())
    {
      paramKeyEvent = null;
      return paramKeyEvent;
    }
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int i4 = localArrayList.size();
    if (i4 == 1) {
      return (t)localArrayList.get(0);
    }
    boolean bool = b();
    int i1 = 0;
    label85:
    if (i1 < i4)
    {
      t localt = (t)localArrayList.get(i1);
      if (bool) {}
      for (int i2 = localt.getAlphabeticShortcut();; i2 = localt.getNumericShortcut())
      {
        if (i2 == localKeyData.meta[0])
        {
          paramKeyEvent = localt;
          if ((i3 & 0x2) == 0) {
            break;
          }
        }
        if (i2 == localKeyData.meta[2])
        {
          paramKeyEvent = localt;
          if ((i3 & 0x2) != 0) {
            break;
          }
        }
        if ((bool) && (i2 == 8))
        {
          paramKeyEvent = localt;
          if (paramInt == 67) {
            break;
          }
        }
        i1 += 1;
        break label85;
      }
    }
    return null;
  }
  
  private MenuItem a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i1 = (0xFFFF0000 & paramInt3) >> 16;
    if ((i1 < 0) || (i1 >= l.length)) {
      throw new IllegalArgumentException("order does not contain a valid category.");
    }
    i1 = l[i1] << 16 | 0xFFFF & paramInt3;
    paramCharSequence = new t(this, paramInt1, paramInt2, paramInt3, i1, paramCharSequence, this.r);
    if (this.s != null) {
      paramCharSequence.f = this.s;
    }
    this.d.add(a(this.d, i1), paramCharSequence);
    b(true);
    return paramCharSequence;
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= this.d.size())) {}
    do
    {
      return;
      this.d.remove(paramInt);
    } while (!paramBoolean);
    b(true);
  }
  
  private void a(List<t> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = b();
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int i4 = this.d.size();
    int i1 = 0;
    label49:
    t localt;
    if (i1 < i4)
    {
      localt = (t)this.d.get(i1);
      if (localt.hasSubMenu()) {
        ((p)localt.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      }
      if (!bool) {
        break label184;
      }
    }
    label184:
    for (int i2 = localt.getAlphabeticShortcut();; i2 = localt.getNumericShortcut())
    {
      if (((i3 & 0x5) == 0) && (i2 != 0) && ((i2 == localKeyData.meta[0]) || (i2 == localKeyData.meta[2]) || ((bool) && (i2 == 8) && (paramInt == 67))) && (localt.isEnabled())) {
        paramList.add(localt);
      }
      i1 += 1;
      break label49;
      break;
    }
  }
  
  protected final p a(Drawable paramDrawable)
  {
    a(null, paramDrawable, null);
    return this;
  }
  
  protected final p a(CharSequence paramCharSequence)
  {
    a(paramCharSequence, null, null);
    return this;
  }
  
  protected String a()
  {
    return "android:menu:actionviewstates";
  }
  
  public final void a(Bundle paramBundle)
  {
    int i2 = size();
    int i1 = 0;
    Object localObject3;
    for (Object localObject1 = null; i1 < i2; localObject1 = localObject3)
    {
      MenuItem localMenuItem = getItem(i1);
      View localView = ak.a(localMenuItem);
      localObject3 = localObject1;
      if (localView != null)
      {
        localObject3 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new SparseArray();
          }
          localView.saveHierarchyState((SparseArray)localObject2);
          localObject3 = localObject2;
          if (ak.d(localMenuItem))
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject3 = localObject2;
          }
        }
      }
      if (localMenuItem.hasSubMenu()) {
        ((aj)localMenuItem.getSubMenu()).a(paramBundle);
      }
      i1 += 1;
    }
    if (localObject1 != null) {
      paramBundle.putSparseParcelableArray(a(), (SparseArray)localObject1);
    }
  }
  
  public final void a(ad paramad)
  {
    this.x.add(new WeakReference(paramad));
    paramad.a(this.a, this);
    this.q = true;
  }
  
  public void a(q paramq)
  {
    this.c = paramq;
  }
  
  final void a(CharSequence paramCharSequence, Drawable paramDrawable, View paramView)
  {
    if (paramView != null)
    {
      this.i = paramView;
      this.g = null;
      this.h = null;
    }
    for (;;)
    {
      b(false);
      return;
      if (paramCharSequence != null) {
        this.g = paramCharSequence;
      }
      if (paramDrawable != null) {
        this.h = paramDrawable;
      }
      this.i = null;
    }
  }
  
  final void a(boolean paramBoolean)
  {
    if (this.v) {
      return;
    }
    this.v = true;
    Iterator localIterator = this.x.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ad localad = (ad)localWeakReference.get();
      if (localad == null) {
        this.x.remove(localWeakReference);
      } else {
        localad.a(this, paramBoolean);
      }
    }
    this.v = false;
  }
  
  boolean a(p paramp, MenuItem paramMenuItem)
  {
    return (this.c != null) && (this.c.a(paramMenuItem));
  }
  
  public boolean a(t paramt)
  {
    boolean bool2 = false;
    if (this.x.isEmpty()) {
      return bool2;
    }
    d();
    Iterator localIterator = this.x.iterator();
    boolean bool1 = false;
    for (;;)
    {
      label31:
      if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        ad localad = (ad)localWeakReference.get();
        if (localad == null)
        {
          this.x.remove(localWeakReference);
        }
        else
        {
          bool1 = localad.b(paramt);
          if (!bool1) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      e();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      this.k = paramt;
      return bool1;
      break label31;
    }
  }
  
  public final boolean a(MenuItem paramMenuItem, int paramInt)
  {
    boolean bool1 = false;
    paramMenuItem = (t)paramMenuItem;
    if ((paramMenuItem == null) || (!paramMenuItem.isEnabled())) {
      bool1 = false;
    }
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        bool2 = paramMenuItem.a();
        if (!paramMenuItem.g()) {
          break;
        }
        bool2 = paramMenuItem.expandActionView() | bool2;
        bool1 = bool2;
      } while (!bool2);
      a(true);
      return bool2;
      if (!paramMenuItem.hasSubMenu()) {
        break label222;
      }
      a(false);
      if (!paramMenuItem.hasSubMenu()) {
        paramMenuItem.a(new aj(this.a, this, paramMenuItem));
      }
      paramMenuItem = (aj)paramMenuItem.getSubMenu();
      if (!this.x.isEmpty()) {
        break;
      }
      bool2 |= bool1;
      bool1 = bool2;
    } while (bool2);
    a(true);
    return bool2;
    Iterator localIterator = this.x.iterator();
    bool1 = false;
    label153:
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ad localad = (ad)localWeakReference.get();
      if (localad == null)
      {
        this.x.remove(localWeakReference);
      }
      else
      {
        if (bool1) {
          break label236;
        }
        bool1 = localad.a(paramMenuItem);
      }
    }
    label222:
    label236:
    for (;;)
    {
      break label153;
      break;
      if ((paramInt & 0x1) == 0) {
        a(true);
      }
      return bool2;
    }
  }
  
  public MenuItem add(int paramInt)
  {
    return a(0, 0, 0, this.b.getString(paramInt));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt1, paramInt2, paramInt3, this.b.getString(paramInt4));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = this.a.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i1;
    label52:
    ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i1 = localList.size();
      if ((paramInt4 & 0x1) == 0) {
        removeGroup(paramInt1);
      }
      paramInt4 = 0;
      if (paramInt4 >= i1) {
        break label214;
      }
      localResolveInfo = (ResolveInfo)localList.get(paramInt4);
      if (localResolveInfo.specificIndex >= 0) {
        break label201;
      }
    }
    label201:
    for (paramComponentName = paramIntent;; paramComponentName = paramArrayOfIntent[localResolveInfo.specificIndex])
    {
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(localResolveInfo.activityInfo.applicationInfo.packageName, localResolveInfo.activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (localResolveInfo.specificIndex >= 0)) {
        paramArrayOfMenuItem[localResolveInfo.specificIndex] = paramComponentName;
      }
      paramInt4 += 1;
      break label52;
      i1 = 0;
      break;
    }
    label214:
    return i1;
  }
  
  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, this.b.getString(paramInt));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, this.b.getString(paramInt4));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (t)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    aj localaj = new aj(this.a, this, paramCharSequence);
    paramCharSequence.a(localaj);
    return localaj;
  }
  
  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  public final void b(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    do
    {
      int i1;
      do
      {
        return;
        SparseArray localSparseArray = paramBundle.getSparseParcelableArray(a());
        int i2 = size();
        i1 = 0;
        while (i1 < i2)
        {
          MenuItem localMenuItem = getItem(i1);
          View localView = ak.a(localMenuItem);
          if ((localView != null) && (localView.getId() != -1)) {
            localView.restoreHierarchyState(localSparseArray);
          }
          if (localMenuItem.hasSubMenu()) {
            ((aj)localMenuItem.getSubMenu()).b(paramBundle);
          }
          i1 += 1;
        }
        i1 = paramBundle.getInt("android:menu:expandedactionview");
      } while (i1 <= 0);
      paramBundle = findItem(i1);
    } while (paramBundle == null);
    ak.b(paramBundle);
  }
  
  public final void b(ad paramad)
  {
    Iterator localIterator = this.x.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ad localad = (ad)localWeakReference.get();
      if ((localad == null) || (localad == paramad)) {
        this.x.remove(localWeakReference);
      }
    }
  }
  
  final void b(boolean paramBoolean)
  {
    if (!this.t)
    {
      if (paramBoolean)
      {
        this.e = true;
        this.q = true;
      }
      if (!this.x.isEmpty())
      {
        d();
        Iterator localIterator = this.x.iterator();
        while (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          ad localad = (ad)localWeakReference.get();
          if (localad == null) {
            this.x.remove(localWeakReference);
          } else {
            localad.b(paramBoolean);
          }
        }
        e();
      }
      return;
    }
    this.u = true;
  }
  
  boolean b()
  {
    return this.m;
  }
  
  public boolean b(t paramt)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (!this.x.isEmpty())
    {
      if (this.k != paramt) {
        bool2 = bool1;
      }
    }
    else {
      return bool2;
    }
    d();
    Iterator localIterator = this.x.iterator();
    bool1 = false;
    for (;;)
    {
      label47:
      if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        ad localad = (ad)localWeakReference.get();
        if (localad == null)
        {
          this.x.remove(localWeakReference);
        }
        else
        {
          bool1 = localad.c(paramt);
          if (!bool1) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      e();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      this.k = null;
      return bool1;
      break label47;
    }
  }
  
  public boolean c()
  {
    return this.n;
  }
  
  public void clear()
  {
    if (this.k != null) {
      b(this.k);
    }
    this.d.clear();
    b(true);
  }
  
  public void clearHeader()
  {
    this.h = null;
    this.g = null;
    this.i = null;
    b(false);
  }
  
  public void close()
  {
    a(true);
  }
  
  public final void d()
  {
    if (!this.t)
    {
      this.t = true;
      this.u = false;
    }
  }
  
  public final void e()
  {
    this.t = false;
    if (this.u)
    {
      this.u = false;
      b(true);
    }
  }
  
  final void f()
  {
    this.q = true;
    b(true);
  }
  
  public MenuItem findItem(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = (t)this.d.get(i1);
      if (((t)localObject).getItemId() == paramInt) {}
      MenuItem localMenuItem;
      do
      {
        return (MenuItem)localObject;
        if (!((t)localObject).hasSubMenu()) {
          break;
        }
        localMenuItem = ((t)localObject).getSubMenu().findItem(paramInt);
        localObject = localMenuItem;
      } while (localMenuItem != null);
      i1 += 1;
    }
    return null;
  }
  
  final ArrayList<t> g()
  {
    if (!this.e) {
      return this.o;
    }
    this.o.clear();
    int i2 = this.d.size();
    int i1 = 0;
    while (i1 < i2)
    {
      t localt = (t)this.d.get(i1);
      if (localt.isVisible()) {
        this.o.add(localt);
      }
      i1 += 1;
    }
    this.e = false;
    this.q = true;
    return this.o;
  }
  
  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)this.d.get(paramInt);
  }
  
  public final void h()
  {
    if (!this.q) {
      return;
    }
    Object localObject1 = this.x.iterator();
    int i1 = 0;
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (WeakReference)((Iterator)localObject1).next();
      ad localad = (ad)((WeakReference)localObject2).get();
      if (localad == null) {
        this.x.remove(localObject2);
      } else {
        i1 = localad.h() | i1;
      }
    }
    if (i1 != 0)
    {
      this.f.clear();
      this.p.clear();
      localObject1 = g();
      int i3 = ((ArrayList)localObject1).size();
      i1 = 0;
      if (i1 < i3)
      {
        localObject2 = (t)((ArrayList)localObject1).get(i1);
        if (((t)localObject2).d()) {
          this.f.add(localObject2);
        }
        for (;;)
        {
          int i2;
          i1 += 1;
          break;
          this.p.add(localObject2);
        }
      }
    }
    else
    {
      this.f.clear();
      this.p.clear();
      this.p.addAll(g());
    }
    this.q = false;
  }
  
  public boolean hasVisibleItems()
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((t)this.d.get(i1)).isVisible()) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  final ArrayList<t> i()
  {
    h();
    return this.p;
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }
  
  public p j()
  {
    return this;
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return a(findItem(paramInt1), paramInt2);
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = a(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (paramKeyEvent != null) {
      bool = a(paramKeyEvent, paramInt2);
    }
    if ((paramInt2 & 0x2) != 0) {
      a(true);
    }
    return bool;
  }
  
  public void removeGroup(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    if (i1 < i2) {
      if (((t)this.d.get(i1)).getGroupId() != paramInt) {}
    }
    for (;;)
    {
      label30:
      if (i1 >= 0)
      {
        int i3 = this.d.size();
        i2 = 0;
        for (;;)
        {
          if ((i2 < i3 - i1) && (((t)this.d.get(i1)).getGroupId() == paramInt))
          {
            a(i1, false);
            i2 += 1;
            continue;
            i1 += 1;
            break;
            i1 = -1;
            break label30;
          }
        }
        b(true);
      }
    }
  }
  
  public void removeItem(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    if (i1 < i2) {
      if (((t)this.d.get(i1)).getItemId() != paramInt) {}
    }
    for (;;)
    {
      a(i1, true);
      return;
      i1 += 1;
      break;
      i1 = -1;
    }
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i2 = this.d.size();
    int i1 = 0;
    while (i1 < i2)
    {
      t localt = (t)this.d.get(i1);
      if (localt.getGroupId() == paramInt)
      {
        localt.a(paramBoolean2);
        localt.setCheckable(paramBoolean1);
      }
      i1 += 1;
    }
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i2 = this.d.size();
    int i1 = 0;
    while (i1 < i2)
    {
      t localt = (t)this.d.get(i1);
      if (localt.getGroupId() == paramInt) {
        localt.setEnabled(paramBoolean);
      }
      i1 += 1;
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i3 = this.d.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      t localt = (t)this.d.get(i2);
      if ((localt.getGroupId() != paramInt) || (!localt.b(paramBoolean))) {
        break label74;
      }
      i1 = 1;
    }
    label74:
    for (;;)
    {
      i2 += 1;
      break;
      if (i1 != 0) {
        b(true);
      }
      return;
    }
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    this.m = paramBoolean;
    b(false);
  }
  
  public int size()
  {
    return this.d.size();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */