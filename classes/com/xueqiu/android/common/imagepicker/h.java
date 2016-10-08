package com.xueqiu.android.common.imagepicker;

import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.d.a.b.f;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.c;

public final class h
  extends c
{
  private String a;
  
  public static h b(String paramString)
  {
    h localh = new h();
    Bundle localBundle = new Bundle();
    localBundle.putString("arg_image", paramString);
    localh.e(localBundle);
    return localh;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = this.r;
    if (paramBundle != null) {
      this.a = paramBundle.getString("arg_image");
    }
    paramLayoutInflater = paramLayoutInflater.inflate(2130903249, paramViewGroup, false);
    paramViewGroup = (ImageView)paramLayoutInflater.findViewById(2131624756);
    if (!au.a(this.a)) {
      f.a().a(this.a, paramViewGroup);
    }
    return paramLayoutInflater;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\imagepicker\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */