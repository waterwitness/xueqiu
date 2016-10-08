package com.android.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.android.volley.p;
import com.android.volley.y;
import java.util.HashMap;
import java.util.LinkedList;

public class NetworkImageView
  extends ImageView
{
  private String a;
  private int b;
  private int c;
  private j d;
  private m e;
  
  public NetworkImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a()
  {
    if (this.b != 0)
    {
      setImageResource(this.b);
      return;
    }
    setImageBitmap(null);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    invalidate();
  }
  
  protected void onDetachedFromWindow()
  {
    if (this.e != null)
    {
      this.e.a();
      setImageBitmap(null);
      this.e = null;
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i = getWidth();
    paramInt4 = getHeight();
    paramInt2 = 0;
    if (getLayoutParams() != null) {
      if (getLayoutParams().width == -2)
      {
        paramInt1 = 1;
        if (getLayoutParams().height != -2) {
          break label125;
        }
        paramInt2 = 1;
      }
    }
    for (;;)
    {
      label60:
      if ((paramInt1 != 0) && (paramInt2 != 0))
      {
        paramInt3 = 1;
        label71:
        if ((i != 0) || (paramInt4 != 0) || (paramInt3 != 0))
        {
          if (!TextUtils.isEmpty(this.a)) {
            break label136;
          }
          if (this.e != null)
          {
            this.e.a();
            this.e = null;
          }
          a();
        }
      }
      label125:
      label136:
      do
      {
        return;
        paramInt1 = 0;
        break;
        paramInt2 = 0;
        break label60;
        paramInt3 = 0;
        break label71;
        if ((this.e == null) || (this.e.c == null)) {
          break label181;
        }
      } while (this.e.c.equals(this.a));
      this.e.a();
      a();
      label181:
      paramInt3 = i;
      if (paramInt1 != 0) {
        paramInt3 = 0;
      }
      paramInt1 = paramInt4;
      if (paramInt2 != 0) {
        paramInt1 = 0;
      }
      j localj = this.d;
      Object localObject2 = this.a;
      Object localObject3 = new n()
      {
        public final void a(final m paramAnonymousm, boolean paramAnonymousBoolean)
        {
          if ((paramAnonymousBoolean) && (this.a)) {
            NetworkImageView.this.post(new Runnable()
            {
              public final void run()
              {
                NetworkImageView.1.this.a(paramAnonymousm, false);
              }
            });
          }
          do
          {
            return;
            if (paramAnonymousm.a != null)
            {
              NetworkImageView.this.setImageBitmap(paramAnonymousm.a);
              return;
            }
          } while (NetworkImageView.b(NetworkImageView.this) == 0);
          NetworkImageView.this.setImageResource(NetworkImageView.b(NetworkImageView.this));
        }
        
        public final void a(y paramAnonymousy)
        {
          if (NetworkImageView.a(NetworkImageView.this) != 0) {
            NetworkImageView.this.setImageResource(NetworkImageView.a(NetworkImageView.this));
          }
        }
      };
      if (Looper.myLooper() != Looper.getMainLooper()) {
        throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
      }
      String str = ((String)localObject2).length() + 12 + "#W" + paramInt3 + "#H" + paramInt1 + (String)localObject2;
      Object localObject1 = localj.b.a();
      if (localObject1 != null)
      {
        localObject1 = new m(localj, (Bitmap)localObject1, (String)localObject2, null, null);
        ((n)localObject3).a((m)localObject1, true);
      }
      for (;;)
      {
        this.e = ((m)localObject1);
        return;
        localObject1 = new m(localj, null, (String)localObject2, str, (n)localObject3);
        ((n)localObject3).a((m)localObject1, true);
        localObject3 = (k)localj.c.get(str);
        if (localObject3 != null)
        {
          ((k)localObject3).c.add(localObject1);
        }
        else
        {
          localObject2 = new o((String)localObject2, new j.1(localj, str), paramInt3, paramInt1, Bitmap.Config.RGB_565, new j.2(localj, str));
          localj.a.a((com.android.volley.n)localObject2);
          localj.c.put(str, new k(localj, (com.android.volley.n)localObject2, (m)localObject1));
        }
      }
      paramInt1 = 0;
    }
  }
  
  public void setDefaultImageResId(int paramInt)
  {
    this.b = paramInt;
  }
  
  public void setErrorImageResId(int paramInt)
  {
    this.c = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\NetworkImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */