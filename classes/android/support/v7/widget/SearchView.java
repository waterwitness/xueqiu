package android.support.v7.widget;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Bundle;
import android.support.v4.widget.a;
import android.support.v7.b.c;
import android.support.v7.b.e;
import android.support.v7.c.b;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public final class SearchView
  extends LinearLayout
  implements b
{
  static final aq a = new aq();
  private Bundle A;
  private Runnable B;
  private Runnable C;
  private Runnable D;
  private final Intent E;
  private final Intent F;
  private final WeakHashMap<String, Drawable.ConstantState> G;
  private as b;
  private ar c;
  private View.OnFocusChangeListener d;
  private at e;
  private View.OnClickListener f;
  private boolean g;
  private boolean h;
  private a i;
  private View j;
  private View k;
  private View l;
  private ImageView m;
  private View n;
  private View o;
  private SearchView.SearchAutoComplete p;
  private ImageView q;
  private boolean r;
  private CharSequence s;
  private boolean t;
  private boolean u;
  private int v;
  private boolean w;
  private boolean x;
  private int y;
  private SearchableInfo z;
  
  private CharSequence a(CharSequence paramCharSequence)
  {
    if (!this.g) {
      return paramCharSequence;
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
    localSpannableStringBuilder.append(paramCharSequence);
    paramCharSequence = getContext().getResources().getDrawable(getSearchIconId());
    int i1 = (int)(this.p.getTextSize() * 1.25D);
    paramCharSequence.setBounds(0, 0, i1, i1);
    localSpannableStringBuilder.setSpan(new ImageSpan(paramCharSequence), 1, 2, 33);
    return localSpannableStringBuilder;
  }
  
  private void a(boolean paramBoolean)
  {
    int i5 = 1;
    int i4 = 8;
    this.h = paramBoolean;
    int i1;
    if (paramBoolean)
    {
      i2 = 0;
      if (TextUtils.isEmpty(this.p.getText())) {
        break label314;
      }
      i1 = 1;
      label35:
      this.j.setVisibility(i2);
      if ((!this.r) || (!d()) || (!hasFocus()) || ((i1 == 0) && (this.w))) {
        break label371;
      }
    }
    label102:
    label124:
    label146:
    label168:
    label181:
    label204:
    label219:
    label314:
    label326:
    label332:
    label338:
    label344:
    label351:
    label358:
    label364:
    label371:
    for (int i2 = 0;; i2 = 8)
    {
      this.k.setVisibility(i2);
      Object localObject = this.n;
      int i3;
      if (paramBoolean)
      {
        i2 = 8;
        ((View)localObject).setVisibility(i2);
        localObject = this.q;
        if (!this.g) {
          break label326;
        }
        i2 = 8;
        ((ImageView)localObject).setVisibility(i2);
        if (TextUtils.isEmpty(this.p.getText())) {
          break label332;
        }
        i2 = 1;
        if ((i2 == 0) && ((!this.g) || (this.x))) {
          break label338;
        }
        i3 = 1;
        localObject = this.m;
        if (i3 == 0) {
          break label344;
        }
        i3 = 0;
        ((ImageView)localObject).setVisibility(i3);
        Drawable localDrawable = this.m.getDrawable();
        if (i2 == 0) {
          break label351;
        }
        localObject = ENABLED_STATE_SET;
        localDrawable.setState((int[])localObject);
        if (i1 != 0) {
          break label358;
        }
        i1 = i5;
        if ((!this.w) || (this.h) || (i1 == 0)) {
          break label364;
        }
        this.k.setVisibility(8);
      }
      for (i1 = 0;; i1 = 8)
      {
        this.o.setVisibility(i1);
        i1 = i4;
        if (d()) {
          if (this.k.getVisibility() != 0)
          {
            i1 = i4;
            if (this.o.getVisibility() != 0) {}
          }
          else
          {
            i1 = 0;
          }
        }
        this.l.setVisibility(i1);
        return;
        i2 = 8;
        break;
        i1 = 0;
        break label35;
        i2 = 0;
        break label102;
        i2 = 0;
        break label124;
        i2 = 0;
        break label146;
        i3 = 0;
        break label168;
        i3 = 8;
        break label181;
        localObject = EMPTY_STATE_SET;
        break label204;
        i1 = 0;
        break label219;
      }
    }
  }
  
  static boolean a(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().orientation == 2;
  }
  
  private boolean d()
  {
    return ((this.r) || (this.w)) && (!this.h);
  }
  
  private void e()
  {
    post(this.C);
  }
  
  private void f()
  {
    if (this.s != null) {
      this.p.setHint(a(this.s));
    }
    String str;
    do
    {
      return;
      if (this.z == null) {
        break;
      }
      str = null;
      int i1 = this.z.getHintId();
      if (i1 != 0) {
        str = getContext().getString(i1);
      }
    } while (str == null);
    this.p.setHint(a(str));
    return;
    this.p.setHint(a(""));
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(e.abc_search_view_preferred_width);
  }
  
  private int getSearchIconId()
  {
    TypedValue localTypedValue = new TypedValue();
    getContext().getTheme().resolveAttribute(c.searchViewSearchIcon, localTypedValue, true);
    return localTypedValue.resourceId;
  }
  
  private void setImeVisibility(boolean paramBoolean)
  {
    if (paramBoolean) {
      post(this.B);
    }
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(this.B);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    } while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  public final void a()
  {
    if (this.x) {
      return;
    }
    this.x = true;
    this.y = this.p.getImeOptions();
    this.p.setImeOptions(this.y | 0x2000000);
    this.p.setText("");
    setIconified(false);
  }
  
  public final void b()
  {
    clearFocus();
    a(true);
    this.p.setImeOptions(this.y);
    this.x = false;
  }
  
  final void c()
  {
    a(this.h);
    e();
    aq localaq;
    SearchView.SearchAutoComplete localSearchAutoComplete;
    if (this.p.hasFocus())
    {
      localaq = a;
      localSearchAutoComplete = this.p;
      if (localaq.a == null) {}
    }
    try
    {
      localaq.a.invoke(localSearchAutoComplete, new Object[0]);
      localaq = a;
      localSearchAutoComplete = this.p;
      if (localaq.b != null) {}
      try
      {
        localaq.b.invoke(localSearchAutoComplete, new Object[0]);
        return;
      }
      catch (Exception localException1) {}
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
  
  public final void clearFocus()
  {
    this.u = true;
    setImeVisibility(false);
    super.clearFocus();
    this.p.clearFocus();
    this.u = false;
  }
  
  public final int getImeOptions()
  {
    return this.p.getImeOptions();
  }
  
  public final int getInputType()
  {
    return this.p.getInputType();
  }
  
  public final int getMaxWidth()
  {
    return this.v;
  }
  
  public final CharSequence getQuery()
  {
    return this.p.getText();
  }
  
  public final CharSequence getQueryHint()
  {
    Object localObject2 = null;
    Object localObject1;
    if (this.s != null) {
      localObject1 = this.s;
    }
    int i1;
    do
    {
      do
      {
        return (CharSequence)localObject1;
        localObject1 = localObject2;
      } while (this.z == null);
      i1 = this.z.getHintId();
      localObject1 = localObject2;
    } while (i1 == 0);
    return getContext().getString(i1);
  }
  
  public final a getSuggestionsAdapter()
  {
    return this.i;
  }
  
  protected final void onDetachedFromWindow()
  {
    removeCallbacks(this.C);
    post(this.D);
    super.onDetachedFromWindow();
  }
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.z == null) {
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.h)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    switch (i2)
    {
    default: 
      paramInt1 = i1;
    }
    for (;;)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      return;
      if (this.v > 0)
      {
        paramInt1 = Math.min(this.v, i1);
      }
      else
      {
        paramInt1 = Math.min(getPreferredWidth(), i1);
        continue;
        paramInt1 = i1;
        if (this.v > 0)
        {
          paramInt1 = Math.min(this.v, i1);
          continue;
          if (this.v > 0) {
            paramInt1 = this.v;
          } else {
            paramInt1 = getPreferredWidth();
          }
        }
      }
    }
  }
  
  public final void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    e();
  }
  
  public final boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (this.u) {}
    while (!isFocusable()) {
      return false;
    }
    if (!this.h)
    {
      boolean bool = this.p.requestFocus(paramInt, paramRect);
      if (bool) {
        a(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  public final void setAppSearchData(Bundle paramBundle)
  {
    this.A = paramBundle;
  }
  
  public final void setIconified(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (TextUtils.isEmpty(this.p.getText())) {
        if ((this.g) && ((this.c == null) || (!this.c.a())))
        {
          clearFocus();
          a(true);
        }
      }
    }
    do
    {
      return;
      this.p.setText("");
      this.p.requestFocus();
      setImeVisibility(true);
      return;
      a(false);
      this.p.requestFocus();
      setImeVisibility(true);
    } while (this.f == null);
    this.f.onClick(this);
  }
  
  public final void setIconifiedByDefault(boolean paramBoolean)
  {
    if (this.g == paramBoolean) {
      return;
    }
    this.g = paramBoolean;
    a(paramBoolean);
    f();
  }
  
  public final void setImeOptions(int paramInt)
  {
    this.p.setImeOptions(paramInt);
  }
  
  public final void setInputType(int paramInt)
  {
    this.p.setInputType(paramInt);
  }
  
  public final void setMaxWidth(int paramInt)
  {
    this.v = paramInt;
    requestLayout();
  }
  
  public final void setOnCloseListener(ar paramar)
  {
    this.c = paramar;
  }
  
  public final void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.d = paramOnFocusChangeListener;
  }
  
  public final void setOnQueryTextListener(as paramas)
  {
    this.b = paramas;
  }
  
  public final void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    this.f = paramOnClickListener;
  }
  
  public final void setOnSuggestionListener(at paramat)
  {
    this.e = paramat;
  }
  
  final void setQuery(CharSequence paramCharSequence)
  {
    this.p.setText(paramCharSequence);
    SearchView.SearchAutoComplete localSearchAutoComplete = this.p;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i1 = 0;; i1 = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i1);
      return;
    }
  }
  
  public final void setQueryHint(CharSequence paramCharSequence)
  {
    this.s = paramCharSequence;
    f();
  }
  
  public final void setQueryRefinementEnabled(boolean paramBoolean)
  {
    this.t = paramBoolean;
    au localau;
    if ((this.i instanceof au))
    {
      localau = (au)this.i;
      if (!paramBoolean) {
        break label35;
      }
    }
    label35:
    for (int i1 = 2;; i1 = 1)
    {
      localau.j = i1;
      return;
    }
  }
  
  public final void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    boolean bool = true;
    this.z = paramSearchableInfo;
    int i1;
    if (this.z != null)
    {
      this.p.setThreshold(this.z.getSuggestThreshold());
      this.p.setImeOptions(this.z.getImeOptions());
      int i2 = this.z.getInputType();
      i1 = i2;
      if ((i2 & 0xF) == 1)
      {
        i2 &= 0xFFFEFFFF;
        i1 = i2;
        if (this.z.getSuggestAuthority() != null) {
          i1 = i2 | 0x10000 | 0x80000;
        }
      }
      this.p.setInputType(i1);
      if (this.i != null) {
        this.i.a(null);
      }
      if (this.z.getSuggestAuthority() != null)
      {
        this.i = new au(getContext(), this, this.z, this.G);
        this.p.setAdapter(this.i);
        paramSearchableInfo = (au)this.i;
        if (this.t)
        {
          i1 = 2;
          paramSearchableInfo.j = i1;
        }
      }
      else
      {
        f();
      }
    }
    else
    {
      if ((this.z == null) || (!this.z.getVoiceSearchEnabled())) {
        break label297;
      }
      if (!this.z.getVoiceSearchLaunchWebSearch()) {
        break label273;
      }
      paramSearchableInfo = this.E;
    }
    for (;;)
    {
      label215:
      if (paramSearchableInfo != null) {
        if (getContext().getPackageManager().resolveActivity(paramSearchableInfo, 65536) == null) {}
      }
      for (;;)
      {
        this.w = bool;
        if (this.w) {
          this.p.setPrivateImeOptions("nm");
        }
        a(this.h);
        return;
        i1 = 1;
        break;
        label273:
        if (!this.z.getVoiceSearchLaunchRecognizer()) {
          break label303;
        }
        paramSearchableInfo = this.F;
        break label215;
        bool = false;
        continue;
        label297:
        bool = false;
      }
      label303:
      paramSearchableInfo = null;
    }
  }
  
  public final void setSubmitButtonEnabled(boolean paramBoolean)
  {
    this.r = paramBoolean;
    a(this.h);
  }
  
  public final void setSuggestionsAdapter(a parama)
  {
    this.i = parama;
    this.p.setAdapter(this.i);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\SearchView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */