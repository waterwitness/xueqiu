package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class PublicTimeline
{
  public static final int CATEGORY_ASK_ANSWER = 13;
  public static final int CATEGORY_EVENT = 8;
  public static final int CATEGORY_HOT = 12;
  public static final int CATEGORY_INTERVIEW = 5;
  public static final int CATEGORY_LIVENEWS = 6;
  public static final int CATEGORY_LOTTERY = 11;
  public static final int CATEGORY_NOTICE = 3;
  public static final int CATEGORY_PLAY_CUBE = 2;
  public static final int CATEGORY_PROMOTION = 10;
  public static final int CATEGORY_RECOMMEND = 9;
  public static final int CATEGORY_RESEARCH = 4;
  public static final int CATEGORY_SPECIAL = 7;
  public static final int CATEGORY_TALENT = 1;
  public static final int CATEGORY_TODAY = 0;
  @Expose
  private int category;
  @Expose
  private String data;
  @Expose
  private String headerIcon;
  @Expose
  private String headerText;
  @Expose
  private String target;
  @Expose
  @SerializedName("id")
  private long timelineId;
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    label78:
    label94:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return bool1;
                  bool1 = bool2;
                } while (paramObject == null);
                bool1 = bool2;
              } while (getClass() != paramObject.getClass());
              paramObject = (PublicTimeline)paramObject;
              bool1 = bool2;
            } while (this.timelineId != ((PublicTimeline)paramObject).timelineId);
            bool1 = bool2;
          } while (this.category != ((PublicTimeline)paramObject).category);
          if (this.headerIcon != null) {
            break;
          }
          bool1 = bool2;
        } while (((PublicTimeline)paramObject).headerIcon != null);
        if (this.headerText != null) {
          break label154;
        }
        bool1 = bool2;
      } while (((PublicTimeline)paramObject).headerText != null);
      if (this.target != null) {
        break label170;
      }
      bool1 = bool2;
    } while (((PublicTimeline)paramObject).target != null);
    label154:
    label170:
    while (this.target.equals(((PublicTimeline)paramObject).target))
    {
      if (this.data == null)
      {
        bool1 = bool2;
        if (((PublicTimeline)paramObject).data != null) {
          break;
        }
      }
      return this.data.equals(((PublicTimeline)paramObject).data);
      if (this.headerIcon.equals(((PublicTimeline)paramObject).headerIcon)) {
        break label78;
      }
      return false;
      if (this.headerText.equals(((PublicTimeline)paramObject).headerText)) {
        break label94;
      }
      return false;
    }
    return false;
  }
  
  public int getCategory()
  {
    return this.category;
  }
  
  public String getData()
  {
    return this.data;
  }
  
  public String getHeaderIcon()
  {
    return this.headerIcon;
  }
  
  public String getHeaderText()
  {
    return this.headerText;
  }
  
  public String getTarget()
  {
    return this.target;
  }
  
  public long getTimelineId()
  {
    return this.timelineId;
  }
  
  public int hashCode()
  {
    int m = 0;
    int n = (int)(this.timelineId ^ this.timelineId >>> 32);
    int i1 = this.category;
    int i;
    int j;
    if (this.headerIcon != null)
    {
      i = this.headerIcon.hashCode();
      if (this.headerText == null) {
        break label120;
      }
      j = this.headerText.hashCode();
      label54:
      if (this.target == null) {
        break label125;
      }
    }
    label120:
    label125:
    for (int k = this.target.hashCode();; k = 0)
    {
      if (this.data != null) {
        m = this.data.hashCode();
      }
      return (k + (j + (i + (n * 31 + i1) * 31) * 31) * 31) * 31 + m;
      i = 0;
      break;
      j = 0;
      break label54;
    }
  }
  
  public void setCategory(int paramInt)
  {
    this.category = paramInt;
  }
  
  public void setData(String paramString)
  {
    this.data = paramString;
  }
  
  public void setHeaderIcon(String paramString)
  {
    this.headerIcon = paramString;
  }
  
  public void setHeaderText(String paramString)
  {
    this.headerText = paramString;
  }
  
  public void setTarget(String paramString)
  {
    this.target = paramString;
  }
  
  public void setTimelineId(long paramLong)
  {
    this.timelineId = paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\PublicTimeline.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */