package com.nhaarman.listviewanimations;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.BaseAdapter;
import com.nhaarman.listviewanimations.a.c;
import com.nhaarman.listviewanimations.a.f;
import java.util.ArrayList;
import java.util.List;

public abstract class a<T>
  extends BaseAdapter
  implements c<T>, f
{
  @NonNull
  private final List<T> a = new ArrayList();
  
  protected a()
  {
    this((byte)0);
  }
  
  private a(@Nullable byte paramByte) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */