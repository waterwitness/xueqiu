package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.widget.Adapter;
import android.widget.ListView;
import android.widget.SectionIndexer;

public class IndexScroller
{
  private static final int STATE_HIDDEN = 0;
  private static final int STATE_HIDING = 3;
  private static final int STATE_SHOWING = 1;
  private static final int STATE_SHOWN = 2;
  private float mAlphaRate;
  private int mCurrentSection = -1;
  private float mDensity;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (IndexScroller.this.mState)
      {
      default: 
        return;
      case 1: 
        IndexScroller.access$102(IndexScroller.this, (float)(IndexScroller.this.mAlphaRate + (1.0F - IndexScroller.this.mAlphaRate) * 0.2D));
        if (IndexScroller.this.mAlphaRate > 0.9D)
        {
          IndexScroller.access$102(IndexScroller.this, 1.0F);
          IndexScroller.this.setState(2);
        }
        IndexScroller.this.mListView.invalidate();
        IndexScroller.this.fade(10L);
        return;
      case 2: 
        IndexScroller.this.setState(3);
        return;
      }
      IndexScroller.access$102(IndexScroller.this, (float)(IndexScroller.this.mAlphaRate - IndexScroller.this.mAlphaRate * 0.2D));
      if (IndexScroller.this.mAlphaRate < 0.1D)
      {
        IndexScroller.access$102(IndexScroller.this, 0.0F);
        IndexScroller.this.setState(0);
      }
      IndexScroller.this.mListView.invalidate();
      IndexScroller.this.fade(10L);
    }
  };
  private float mIndexbarMargin;
  private RectF mIndexbarRect;
  private float mIndexbarWidth;
  private SectionIndexer mIndexer = null;
  private boolean mIsIndexing = false;
  private ListView mListView = null;
  private int mListViewHeight;
  private int mListViewWidth;
  private float mPreviewPadding;
  private float mScaledDensity;
  private Character[] mSections = null;
  private int mState = 0;
  
  public IndexScroller(Context paramContext, ListView paramListView)
  {
    this.mDensity = paramContext.getResources().getDisplayMetrics().density;
    this.mScaledDensity = paramContext.getResources().getDisplayMetrics().scaledDensity;
    this.mListView = paramListView;
    setAdapter(this.mListView.getAdapter());
    this.mIndexbarWidth = (20.0F * this.mDensity);
    this.mIndexbarMargin = (10.0F * this.mDensity);
    this.mPreviewPadding = (5.0F * this.mDensity);
  }
  
  private boolean contains(float paramFloat1, float paramFloat2)
  {
    return (paramFloat1 >= this.mIndexbarRect.left) && (paramFloat2 >= this.mIndexbarRect.top) && (paramFloat2 <= this.mIndexbarRect.top + this.mIndexbarRect.height());
  }
  
  private void fade(long paramLong)
  {
    this.mHandler.removeMessages(0);
    this.mHandler.sendEmptyMessageAtTime(0, SystemClock.uptimeMillis() + paramLong);
  }
  
  private int getSectionByPoint(float paramFloat)
  {
    if ((this.mSections == null) || (this.mSections.length == 0)) {}
    while (paramFloat < this.mIndexbarRect.top + this.mIndexbarMargin) {
      return 0;
    }
    if (paramFloat >= this.mIndexbarRect.top + this.mIndexbarRect.height() - this.mIndexbarMargin) {
      return this.mSections.length - 1;
    }
    return (int)((paramFloat - this.mIndexbarRect.top - this.mIndexbarMargin) / ((this.mIndexbarRect.height() - 2.0F * this.mIndexbarMargin) / this.mSections.length));
  }
  
  private void setState(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 3)) {
      return;
    }
    this.mState = paramInt;
    switch (this.mState)
    {
    default: 
      return;
    case 0: 
      this.mHandler.removeMessages(0);
      return;
    case 1: 
      this.mAlphaRate = 0.0F;
      fade(0L);
      return;
    case 2: 
      this.mHandler.removeMessages(0);
      return;
    }
    this.mAlphaRate = 1.0F;
    fade(3000L);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i = 0;
    if (this.mState == 0) {}
    for (;;)
    {
      return;
      Paint localPaint = new Paint();
      localPaint.setColor(-16777216);
      localPaint.setAlpha((int)(64.0F * this.mAlphaRate));
      localPaint.setAntiAlias(true);
      paramCanvas.drawRoundRect(this.mIndexbarRect, this.mDensity * 5.0F, this.mDensity * 5.0F, localPaint);
      if ((this.mSections != null) && (this.mSections.length > 0))
      {
        float f3;
        if (this.mCurrentSection >= 0)
        {
          Object localObject = new Paint();
          ((Paint)localObject).setColor(-16777216);
          ((Paint)localObject).setAlpha(96);
          ((Paint)localObject).setAntiAlias(true);
          ((Paint)localObject).setShadowLayer(3.0F, 0.0F, 0.0F, Color.argb(64, 0, 0, 0));
          localPaint = new Paint();
          localPaint.setColor(-1);
          localPaint.setAntiAlias(true);
          localPaint.setTextSize(50.0F * this.mScaledDensity);
          f1 = localPaint.measureText(String.valueOf(this.mSections[this.mCurrentSection]));
          f2 = this.mPreviewPadding * 2.0F + localPaint.descent() - localPaint.ascent();
          RectF localRectF = new RectF((this.mListViewWidth - f2) / 2.0F, (this.mListViewHeight - f2) / 2.0F, (this.mListViewWidth - f2) / 2.0F + f2, (this.mListViewHeight - f2) / 2.0F + f2);
          paramCanvas.drawRoundRect(localRectF, this.mDensity * 5.0F, this.mDensity * 5.0F, (Paint)localObject);
          localObject = String.valueOf(this.mSections[this.mCurrentSection]);
          f3 = localRectF.left;
          paramCanvas.drawText((String)localObject, (f2 - f1) / 2.0F + f3 - 1.0F, localRectF.top + this.mPreviewPadding - localPaint.ascent() + 1.0F, localPaint);
        }
        localPaint = new Paint();
        localPaint.setColor(-1);
        localPaint.setAlpha((int)(255.0F * this.mAlphaRate));
        localPaint.setAntiAlias(true);
        localPaint.setTextSize(12.0F * this.mScaledDensity);
        float f1 = (this.mIndexbarRect.height() - this.mIndexbarMargin * 2.0F) / this.mSections.length;
        float f2 = (f1 - (localPaint.descent() - localPaint.ascent())) / 2.0F;
        while (i < this.mSections.length)
        {
          f3 = (this.mIndexbarWidth - localPaint.measureText(this.mSections[i].toString())) / 2.0F;
          paramCanvas.drawText(this.mSections[i].toString(), f3 + this.mIndexbarRect.left, this.mIndexbarRect.top + this.mIndexbarMargin + i * f1 + f2 - localPaint.ascent(), localPaint);
          i += 1;
        }
      }
    }
  }
  
  public void hide()
  {
    if (this.mState == 2) {
      setState(3);
    }
  }
  
  public void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mListViewWidth = paramInt1;
    this.mListViewHeight = paramInt2;
    this.mIndexbarRect = new RectF(paramInt1 - this.mIndexbarMargin - this.mIndexbarWidth, this.mIndexbarMargin, paramInt1 - this.mIndexbarMargin, paramInt2 - this.mIndexbarMargin);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      bool = false;
      do
      {
        return bool;
        if ((this.mState == 0) || (!contains(paramMotionEvent.getX(), paramMotionEvent.getY()))) {
          break;
        }
        setState(2);
        this.mIsIndexing = true;
        this.mCurrentSection = getSectionByPoint(paramMotionEvent.getY());
        this.mListView.setSelection(this.mIndexer.getPositionForSection(this.mCurrentSection) + this.mListView.getHeaderViewsCount());
        return true;
        if (!this.mIsIndexing) {
          break;
        }
      } while (!contains(paramMotionEvent.getX(), paramMotionEvent.getY()));
      this.mCurrentSection = getSectionByPoint(paramMotionEvent.getY());
      this.mListView.setSelection(this.mIndexer.getPositionForSection(this.mCurrentSection) + this.mListView.getHeaderViewsCount());
      return true;
      if (this.mIsIndexing)
      {
        this.mIsIndexing = false;
        this.mCurrentSection = -1;
      }
      if (this.mState == 2) {
        setState(3);
      }
    }
  }
  
  public void setAdapter(Adapter paramAdapter)
  {
    if ((paramAdapter instanceof SectionIndexer))
    {
      this.mIndexer = ((SectionIndexer)paramAdapter);
      this.mSections = ((Character[])this.mIndexer.getSections());
    }
  }
  
  public void show()
  {
    if (this.mState == 0) {
      setState(1);
    }
    while (this.mState != 3) {
      return;
    }
    setState(3);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\IndexScroller.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */