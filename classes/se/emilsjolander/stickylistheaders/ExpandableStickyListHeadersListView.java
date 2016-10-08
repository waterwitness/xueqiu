package se.emilsjolander.stickylistheaders;

import android.content.Context;
import android.util.AttributeSet;

public class ExpandableStickyListHeadersListView
  extends StickyListHeadersListView
{
  g a;
  h b = new h() {};
  
  public ExpandableStickyListHeadersListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public g getAdapter()
  {
    return this.a;
  }
  
  public void setAdapter(l paraml)
  {
    this.a = new g(paraml);
    super.setAdapter(this.a);
  }
  
  public void setAnimExecutor(h paramh)
  {
    this.b = paramh;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\ExpandableStickyListHeadersListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */