package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.f;
import android.support.v4.view.a.t;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class d
  extends b
{
  public final t a(Object paramObject, View paramView)
  {
    paramObject = ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
    if (paramObject != null) {
      return new t(paramObject);
    }
    return null;
  }
  
  public final Object a(final a parama)
  {
    new h.1(new i()
    {
      public final Object a(View paramAnonymousView)
      {
        paramAnonymousView = a.a(paramAnonymousView);
        if (paramAnonymousView != null) {
          return paramAnonymousView.a;
        }
        return null;
      }
      
      public final void a(View paramAnonymousView, int paramAnonymousInt)
      {
        a.a(paramAnonymousView, paramAnonymousInt);
      }
      
      public final void a(View paramAnonymousView, Object paramAnonymousObject)
      {
        parama.a(paramAnonymousView, new f(paramAnonymousObject));
      }
      
      public final boolean a(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
        return parama.a(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
      }
      
      public final boolean a(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return parama.b(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public final boolean a(ViewGroup paramAnonymousViewGroup, View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return parama.a(paramAnonymousViewGroup, paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public final void b(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        parama.d(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public final void c(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        a.c(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public final void d(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        a.a(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
    });
  }
  
  public final boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */