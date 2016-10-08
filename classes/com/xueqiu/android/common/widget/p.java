package com.xueqiu.android.common.widget;

import android.app.Activity;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.KeyboardView.OnKeyboardActionListener;
import android.os.Build.VERSION;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import java.lang.reflect.Method;

public final class p
{
  LinearLayout a;
  r b;
  public View c;
  SNBKeyboardView d;
  Keyboard e;
  Keyboard f;
  public boolean g = false;
  EditText h;
  public q i;
  public ViewGroup j;
  private int k;
  private Activity l;
  private Keyboard m;
  private Keyboard n;
  private Keyboard o;
  private KeyboardView.OnKeyboardActionListener p = new KeyboardView.OnKeyboardActionListener()
  {
    public final void onKey(int paramAnonymousInt, int[] paramAnonymousArrayOfInt)
    {
      paramAnonymousArrayOfInt = p.this.h.getText();
      int i = p.this.h.getSelectionStart();
      if (paramAnonymousInt == -2) {
        if (p.this.g)
        {
          p.this.g = false;
          p.this.d.setKeyboard(p.this.e);
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  p.this.g = true;
                  p.this.d.setKeyboard(p.this.f);
                  return;
                  if (paramAnonymousInt != -3) {
                    break;
                  }
                  p.this.b();
                } while (p.this.b == null);
                p.this.b.a(p.this.h, -3);
                return;
                if (paramAnonymousInt != -4) {
                  break;
                }
                p.this.b();
              } while (p.this.b == null);
              p.this.b.a(p.this.h, -4);
              return;
              if (paramAnonymousInt != -5) {
                break;
              }
            } while ((paramAnonymousArrayOfInt == null) || (paramAnonymousArrayOfInt.length() <= 0) || (i <= 0));
            paramAnonymousArrayOfInt.delete(i - 1, i);
            return;
            if (paramAnonymousInt != 99999) {
              break;
            }
          } while ((paramAnonymousArrayOfInt == null) || (paramAnonymousArrayOfInt.length() <= 0));
          paramAnonymousArrayOfInt.delete(0, paramAnonymousArrayOfInt.length());
          return;
          if ((paramAnonymousInt < 100000) || (paramAnonymousInt > 199999)) {
            break;
          }
        } while (p.this.b == null);
        p.this.b.a(p.this.h, paramAnonymousInt);
        return;
        paramAnonymousArrayOfInt.insert(i, Character.toString((char)paramAnonymousInt));
      } while (p.this.b == null);
      p.this.b.a(p.this.h, paramAnonymousInt);
    }
    
    public final void onPress(int paramAnonymousInt) {}
    
    public final void onRelease(int paramAnonymousInt) {}
    
    public final void onText(CharSequence paramAnonymousCharSequence) {}
    
    public final void swipeDown() {}
    
    public final void swipeLeft() {}
    
    public final void swipeRight() {}
    
    public final void swipeUp() {}
  };
  
  public p(Activity paramActivity, int paramInt)
  {
    this.l = paramActivity;
    this.k = paramInt;
    this.c = LayoutInflater.from(paramActivity).inflate(2130903594, null, false);
    this.a = ((LinearLayout)this.c.findViewById(2131625857));
    this.d = ((SNBKeyboardView)this.c.findViewById(2131625858));
    this.c.findViewById(2131625292).setVisibility(4);
    this.n = new Keyboard(paramActivity, 2131034115);
    this.o = new Keyboard(paramActivity, 2131034114);
    this.e = new Keyboard(paramActivity, 2131034113);
    this.f = new Keyboard(paramActivity, 2131034116);
    this.m = new Keyboard(paramActivity, 2131034112);
    switch (paramInt)
    {
    }
    for (;;)
    {
      this.d.setEnabled(true);
      this.d.setPreviewEnabled(false);
      this.d.setOnKeyboardActionListener(this.p);
      return;
      this.d.setKeyboard(this.n);
      continue;
      this.d.setKeyboard(this.o);
      continue;
      this.d.setKeyboard(this.e);
      continue;
      this.d.setKeyboard(this.f);
      this.g = true;
      continue;
      this.d.setKeyboard(this.m);
      this.a.setVisibility(0);
    }
  }
  
  public p(Activity paramActivity, int paramInt, EditText paramEditText)
  {
    this(paramActivity, paramInt);
    this.h = paramEditText;
    a(paramEditText);
  }
  
  private void a(EditText paramEditText)
  {
    if (Build.VERSION.SDK_INT <= 10)
    {
      paramEditText.setInputType(0);
      return;
    }
    this.l.getWindow().setSoftInputMode(3);
    try
    {
      Method localMethod = EditText.class.getMethod("setShowSoftInputOnFocus", new Class[] { Boolean.TYPE });
      localMethod.setAccessible(true);
      localMethod.invoke(paramEditText, new Object[] { Boolean.valueOf(false) });
      return;
    }
    catch (Exception paramEditText)
    {
      paramEditText.printStackTrace();
    }
  }
  
  public final void a()
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
    localLayoutParams.gravity = 80;
    if (this.j != null)
    {
      localObject = this.j;
      if (((ViewGroup)localObject).findViewById(2131625856) == null)
      {
        ((ViewGroup)localObject).addView(this.c, localLayoutParams);
        this.c.setVisibility(4);
      }
      localObject = new Runnable()
      {
        public final void run()
        {
          p.this.a();
        }
      };
      if ((this.c.getParent() == null) || (this.c.getMeasuredHeight() != 0)) {
        break label114;
      }
      this.c.post((Runnable)localObject);
    }
    label114:
    int i1;
    do
    {
      return;
      localObject = (ViewGroup)this.l.getWindow().getDecorView().getRootView();
      break;
      this.c.removeCallbacks((Runnable)localObject);
      this.c.clearAnimation();
      i1 = this.d.getVisibility();
    } while ((i1 != 8) && (i1 != 4));
    this.h.setFocusable(true);
    this.h.setFocusableInTouchMode(true);
    this.h.requestFocus();
    Object localObject = new TranslateAnimation(0.0F, 0.0F, this.c.getMeasuredHeight(), 0.0F);
    ((Animation)localObject).setDuration(200L);
    ((Animation)localObject).setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        p.this.c.setVisibility(0);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    this.d.setVisibility(0);
    this.c.startAnimation((Animation)localObject);
    if (this.k == 5) {
      this.a.setVisibility(0);
    }
    for (;;)
    {
      this.c.findViewById(2131625292).setVisibility(0);
      if (this.i == null) {
        break;
      }
      this.i.a(true);
      return;
      this.a.setVisibility(8);
    }
  }
  
  public final void a(int paramInt, EditText paramEditText, r paramr)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      if (paramEditText != null)
      {
        this.h = paramEditText;
        this.b = paramr;
        a(paramEditText);
      }
      a();
      return;
      this.d.setKeyboard(this.n);
      continue;
      this.d.setKeyboard(this.o);
      continue;
      this.d.setKeyboard(this.e);
      continue;
      this.d.setKeyboard(this.f);
      this.g = true;
      continue;
      this.d.setKeyboard(this.m);
      this.a.setVisibility(0);
    }
  }
  
  public final void b()
  {
    this.c.findViewById(2131625292).setVisibility(4);
    if (this.d.getVisibility() == 0)
    {
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, this.c.getMeasuredHeight());
      localTranslateAnimation.setDuration(210L);
      this.c.startAnimation(localTranslateAnimation);
      localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          p.this.d.setVisibility(4);
          if (p.this.a.getVisibility() != 8) {
            p.this.a.setVisibility(4);
          }
          ((ViewGroup)p.this.c.getParent()).removeView(p.this.c);
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
      if (this.i != null) {
        this.i.a(false);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */