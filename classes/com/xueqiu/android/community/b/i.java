package com.xueqiu.android.community.b;

import android.view.View;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.TopicInfo;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.a.c;
import com.xueqiu.android.cube.model.Cube;
import java.util.ArrayList;
import java.util.List;

public abstract interface i
{
  public abstract void a(RecommendStock paramRecommendStock, View paramView);
  
  public abstract void a(TopicInfo paramTopicInfo);
  
  public abstract void a(User paramUser, View paramView);
  
  public abstract void a(Cube paramCube, c paramc);
  
  public abstract void a(ArrayList<Status> paramArrayList);
  
  public abstract void a(List<RecommendStock> paramList);
  
  public abstract void b(String paramString);
  
  public abstract void b(ArrayList<Cube> paramArrayList);
  
  public abstract void b(List<User> paramList);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract void c(boolean paramBoolean);
  
  public abstract void j();
  
  public abstract void k();
  
  public abstract void l();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\b\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */