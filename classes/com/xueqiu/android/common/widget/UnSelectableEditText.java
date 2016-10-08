package com.xueqiu.android.common.widget;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.widget.EditText;

public class UnSelectableEditText
  extends EditText
{
  public UnSelectableEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public UnSelectableEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UnSelectableEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onSelectionChanged(int paramInt1, int paramInt2)
  {
    Editable localEditable = getText();
    if ((localEditable != null) && ((paramInt1 != localEditable.length()) || (paramInt2 != localEditable.length())))
    {
      setSelection(localEditable.length(), localEditable.length());
      return;
    }
    super.onSelectionChanged(paramInt1, paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\UnSelectableEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */