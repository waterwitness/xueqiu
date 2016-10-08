package com.xueqiu.android.common.imagepicker;

import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ct;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.xueqiu.android.common.c;
import java.util.ArrayList;

public class PreviewActivity$PreviewFragment
  extends c
{
  protected g a;
  protected ViewPager b;
  protected v c;
  protected ArrayList<String> d;
  
  public final int C()
  {
    return this.d.size();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = this.r;
    if (paramBundle != null) {
      this.d = paramBundle.getStringArrayList("arg_images");
    }
    this.c = new v(this.C)
    {
      public final i a(int paramAnonymousInt)
      {
        return h.b((String)PreviewActivity.PreviewFragment.this.d.get(paramAnonymousInt));
      }
      
      public final int b()
      {
        if (PreviewActivity.PreviewFragment.this.d != null) {
          return PreviewActivity.PreviewFragment.this.d.size();
        }
        return 0;
      }
    };
    paramLayoutInflater = paramLayoutInflater.inflate(2130903345, paramViewGroup, false);
    this.b = ((ViewPager)paramLayoutInflater.findViewById(2131624310));
    this.b.setAdapter(this.c);
    this.b.setOnPageChangeListener(new ct()
    {
      public final void b_(int paramAnonymousInt)
      {
        if (PreviewActivity.PreviewFragment.this.a != null) {
          PreviewActivity.PreviewFragment.this.a.a();
        }
      }
    });
    return paramLayoutInflater;
  }
  
  public final void a(g paramg)
  {
    this.a = paramg;
  }
  
  public final void a(ArrayList<String> paramArrayList)
  {
    this.d = paramArrayList;
    this.c.d();
  }
  
  public final int u()
  {
    return this.b.getCurrentItem();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\imagepicker\PreviewActivity$PreviewFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */