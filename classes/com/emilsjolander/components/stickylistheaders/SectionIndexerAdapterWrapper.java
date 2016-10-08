package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.widget.SectionIndexer;

class SectionIndexerAdapterWrapper
  extends AdapterWrapper
  implements SectionIndexer
{
  final SectionIndexer mSectionIndexerDelegate;
  
  SectionIndexerAdapterWrapper(Context paramContext, StickyListHeadersAdapter paramStickyListHeadersAdapter)
  {
    super(paramContext, paramStickyListHeadersAdapter);
    this.mSectionIndexerDelegate = ((SectionIndexer)paramStickyListHeadersAdapter);
  }
  
  public int getPositionForSection(int paramInt)
  {
    return this.mSectionIndexerDelegate.getPositionForSection(paramInt);
  }
  
  public int getSectionForPosition(int paramInt)
  {
    return this.mSectionIndexerDelegate.getSectionForPosition(paramInt);
  }
  
  public Object[] getSections()
  {
    return this.mSectionIndexerDelegate.getSections();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\SectionIndexerAdapterWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */