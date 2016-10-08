package com.xueqiu.android.common.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.view.m;
import android.support.v4.view.n;
import android.text.Html;
import android.text.Html.ImageGetter;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import android.text.style.URLSpan;
import android.util.AttributeSet;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.xueqiu.android.R.styleable;
import com.xueqiu.android.base.util.ad;
import com.xueqiu.android.base.util.ak;
import com.xueqiu.android.common.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class IMTextView
  extends TextView
{
  private static List<String> e = null;
  private static List<String> f = null;
  private boolean a = true;
  private boolean b = true;
  private int c = 0;
  private m d;
  
  public IMTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public IMTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public IMTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private Spanned a(final Context paramContext, CharSequence paramCharSequence)
  {
    if (e == null)
    {
      e = Arrays.asList(paramContext.getResources().getString(2131165524).split(","));
      f = Arrays.asList(paramContext.getResources().getString(2131165523).split(","));
    }
    paramContext = new Html.ImageGetter()
    {
      public final Drawable getDrawable(String paramAnonymousString)
      {
        Object localObject2 = null;
        Object localObject1 = localObject2;
        if (paramAnonymousString != null)
        {
          if (paramAnonymousString.length() != 0) {
            break label19;
          }
          localObject1 = localObject2;
        }
        label19:
        do
        {
          do
          {
            return (Drawable)localObject1;
            i = Arrays.asList(paramContext.getString(2131165525).split(",")).indexOf(paramAnonymousString);
            localObject1 = localObject2;
          } while (i >= 54);
          paramAnonymousString = ad.a(paramContext, i);
          localObject1 = paramAnonymousString;
        } while (paramAnonymousString == null);
        int i = paramContext.getResources().getDimensionPixelOffset(2131230802);
        paramAnonymousString.setBounds(0, 0, i, i);
        return paramAnonymousString;
      }
    };
    Object localObject1 = Pattern.compile("\\[[^\\]]*\\]").matcher(paramCharSequence);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    Object localObject2;
    while (((Matcher)localObject1).find())
    {
      localObject2 = paramCharSequence.subSequence(((Matcher)localObject1).start(), ((Matcher)localObject1).end());
      i = e.indexOf(((CharSequence)localObject2).toString());
      if ((i >= 0) && (i < e.size()))
      {
        localArrayList1.add(Integer.valueOf(((Matcher)localObject1).start()));
        localArrayList2.add(Integer.valueOf(((Matcher)localObject1).end()));
        localArrayList3.add(Integer.valueOf(i));
      }
    }
    paramCharSequence = new SpannableStringBuilder(paramCharSequence);
    int j = 0;
    int i = 0;
    while (i < localArrayList1.size())
    {
      localObject1 = "<img src=\"" + (String)e.get(((Integer)localArrayList3.get(i)).intValue()) + "\" alt=\"" + (String)e.get(((Integer)localArrayList3.get(i)).intValue()) + "\" />";
      int m = ((Integer)localArrayList1.get(i)).intValue();
      int n = ((Integer)localArrayList2.get(i)).intValue();
      localObject1 = Html.fromHtml((String)localObject1, paramContext, null);
      localObject2 = (ImageSpan[])((Spanned)localObject1).getSpans(0, ((Spanned)localObject1).length(), ImageSpan.class);
      int i1 = localObject2.length;
      int k = 0;
      while (k < i1)
      {
        Object localObject3 = localObject2[k];
        int i2 = ((Spanned)localObject1).getSpanStart(localObject3);
        int i3 = ((Spanned)localObject1).getSpanEnd(localObject3);
        k localk = new k(this, ((ImageSpan)localObject3).getDrawable());
        ((SpannableStringBuilder)localObject1).setSpan(localk, i2, i3, 34);
        ((SpannableStringBuilder)localObject1).removeSpan(localObject3);
        k += 1;
      }
      paramCharSequence.replace(m - j, n - j, (CharSequence)localObject1);
      j = n - m - 1 + j;
      i += 1;
    }
    return paramCharSequence;
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.com_xueqiu_android_view_widget_IMTextView);
    this.a = paramAttributeSet.getBoolean(0, true);
    this.b = paramAttributeSet.getBoolean(1, true);
    paramAttributeSet.recycle();
    paramAttributeSet = getContext().obtainStyledAttributes(new int[] { 2130772057 });
    this.c = getResources().getColor(paramAttributeSet.getResourceId(0, 0));
    paramAttributeSet.recycle();
    this.d = new m(getContext(), new GestureDetector.SimpleOnGestureListener()
    {
      public final boolean onDown(MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
      
      public final void onLongPress(MotionEvent paramAnonymousMotionEvent)
      {
        IMTextView.this.performLongClick();
      }
      
      public final boolean onSingleTapConfirmed(MotionEvent paramAnonymousMotionEvent)
      {
        Object localObject = IMTextView.this.getText();
        if ((localObject instanceof Spanned))
        {
          localObject = (Spanned)localObject;
          int i = paramAnonymousMotionEvent.getAction();
          if ((i == 1) || (i == 0))
          {
            i = (int)paramAnonymousMotionEvent.getX();
            int j = (int)paramAnonymousMotionEvent.getY();
            int k = IMTextView.this.getTotalPaddingLeft();
            int m = IMTextView.this.getTotalPaddingTop();
            int n = IMTextView.this.getScrollX();
            int i1 = IMTextView.this.getScrollY();
            paramAnonymousMotionEvent = IMTextView.this.getLayout();
            i = paramAnonymousMotionEvent.getOffsetForHorizontal(paramAnonymousMotionEvent.getLineForVertical(j - m + i1), i - k + n);
            paramAnonymousMotionEvent = (ClickableSpan[])((Spanned)localObject).getSpans(i, i, ClickableSpan.class);
            if ((paramAnonymousMotionEvent.length != 0) && ((paramAnonymousMotionEvent[0] instanceof URLSpan)))
            {
              q.a(((URLSpan)paramAnonymousMotionEvent[0]).getURL(), IMTextView.this.getContext());
              return true;
            }
          }
        }
        return false;
      }
    });
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a) {
      return this.d.a.a(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    Object localObject = paramCharSequence;
    if (!isInEditMode())
    {
      localObject = paramCharSequence;
      if (paramCharSequence == null) {
        localObject = "";
      }
      paramCharSequence = (CharSequence)localObject;
      if (this.a)
      {
        paramCharSequence = Pattern.compile("((https?|ftp|file)://[-A-Z0-9+&@#/%?=~_|!:,.;]*[-A-Z0-9+&@#/%=~_|])", 10).matcher((CharSequence)localObject);
        ArrayList localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        while ((paramCharSequence.find()) && (paramCharSequence.groupCount() > 0))
        {
          localArrayList1.add(Integer.valueOf(paramCharSequence.start()));
          localArrayList2.add(Integer.valueOf(paramCharSequence.end()));
        }
        paramCharSequence = new SpannableStringBuilder((CharSequence)localObject);
        int i = 0;
        while (i < localArrayList1.size())
        {
          int j = ((Integer)localArrayList1.get(i)).intValue();
          int k = ((Integer)localArrayList2.get(i)).intValue();
          paramCharSequence.setSpan(new ak(paramCharSequence.subSequence(j + 0, k + 0).toString(), this.c), j + 0, k + 0, 0);
          i += 1;
        }
      }
      localObject = paramCharSequence;
      if (this.b)
      {
        localObject = getContext();
        getTextSize();
        localObject = a((Context)localObject, paramCharSequence);
      }
    }
    super.setText((CharSequence)localObject, paramBufferType);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\IMTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */