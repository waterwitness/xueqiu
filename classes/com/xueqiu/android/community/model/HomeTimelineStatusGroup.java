package com.xueqiu.android.community.model;

import com.xueqiu.android.cube.model.Cube;
import java.util.ArrayList;
import java.util.List;

public class HomeTimelineStatusGroup
  extends ArrayList<Status>
{
  private List<RecommendCard<Cube>> mRecommendCubeCardList;
  private List<RecommendCard<Status>> mRecommendStatusCardList;
  private List<RecommendCard<RecommendStock>> mRecommendStockCardList;
  private List<RecommendCard<User>> mRecommendUserCardList;
  private long nextId;
  private long nextMaxId;
  
  public long getNextId()
  {
    return this.nextId;
  }
  
  public long getNextMaxId()
  {
    return this.nextMaxId;
  }
  
  public List<RecommendCard<Cube>> getRecommendCubeCardList()
  {
    return this.mRecommendCubeCardList;
  }
  
  public List<RecommendCard<Status>> getRecommendStatusCardList()
  {
    return this.mRecommendStatusCardList;
  }
  
  public List<RecommendCard<RecommendStock>> getRecommendStockCardList()
  {
    return this.mRecommendStockCardList;
  }
  
  public List<RecommendCard<User>> getRecommendUserCardList()
  {
    return this.mRecommendUserCardList;
  }
  
  public boolean hasMore()
  {
    return true;
  }
  
  public void setNextId(long paramLong)
  {
    this.nextId = paramLong;
  }
  
  public void setNextMaxId(long paramLong)
  {
    this.nextMaxId = paramLong;
  }
  
  public void setRecommendCubeCardList(List<RecommendCard<Cube>> paramList)
  {
    this.mRecommendCubeCardList = paramList;
  }
  
  public void setRecommendStatusCardList(List<RecommendCard<Status>> paramList)
  {
    this.mRecommendStatusCardList = paramList;
  }
  
  public void setRecommendStockCardList(List<RecommendCard<RecommendStock>> paramList)
  {
    this.mRecommendStockCardList = paramList;
  }
  
  public void setRecommendUserCardList(List<RecommendCard<User>> paramList)
  {
    this.mRecommendUserCardList = paramList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\HomeTimelineStatusGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */