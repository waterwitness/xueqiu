package android.support.v4.view.a;

import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo;

class h
  extends o
{
  public final Object a(int paramInt)
  {
    return new AccessibilityNodeInfo.AccessibilityAction(paramInt, null);
  }
  
  public final Object a(int paramInt1, int paramInt2)
  {
    return AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, false, 0);
  }
  
  public final boolean a(Object paramObject1, Object paramObject2)
  {
    return ((AccessibilityNodeInfo)paramObject1).removeAction((AccessibilityNodeInfo.AccessibilityAction)paramObject2);
  }
  
  public final Object b(int paramInt1, int paramInt2)
  {
    return AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, 1, paramInt2, 1, false, false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */