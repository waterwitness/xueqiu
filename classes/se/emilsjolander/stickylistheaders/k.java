package se.emilsjolander.stickylistheaders;

import android.content.Context;
import android.widget.SectionIndexer;

final class k
  extends a
  implements SectionIndexer
{
  SectionIndexer c;
  
  k(Context paramContext, l paraml)
  {
    super(paramContext, paraml);
    this.c = ((SectionIndexer)paraml);
  }
  
  public final int getPositionForSection(int paramInt)
  {
    return this.c.getPositionForSection(paramInt);
  }
  
  public final int getSectionForPosition(int paramInt)
  {
    return this.c.getSectionForPosition(paramInt);
  }
  
  public final Object[] getSections()
  {
    return this.c.getSections();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */