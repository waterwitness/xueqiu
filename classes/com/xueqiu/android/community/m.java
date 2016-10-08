package com.xueqiu.android.community;

import com.android.volley.y;
import com.google.gson.Gson;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.k;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.community.model.Status;
import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Iterator;

public final class m
{
  private static m c = new m();
  public PagedGroup<Status> a = null;
  public PagedGroup<Status> b = null;
  
  public static PagedGroup<Status> a(long paramLong)
  {
    Object localObject1 = new File(k.a("tpoic"), paramLong + "topic.data");
    if (!((File)localObject1).exists()) {
      return null;
    }
    Object localObject2 = (o)k.c((File)localObject1);
    if (localObject2 == null) {
      return null;
    }
    localObject1 = new PagedGroup();
    ((PagedGroup)localObject1).mID = ((o)localObject2).d;
    ((PagedGroup)localObject1).setCurrentPage(((o)localObject2).b);
    ((PagedGroup)localObject1).setMaxPage(((o)localObject2).a);
    ((PagedGroup)localObject1).setTotalCount(((o)localObject2).c);
    localObject2 = ((o)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      String str = (String)((Iterator)localObject2).next();
      ((PagedGroup)localObject1).add(com.xueqiu.android.base.util.m.a().fromJson(str, Status.class));
    }
    return (PagedGroup<Status>)localObject1;
  }
  
  public static m a()
  {
    return c;
  }
  
  private static void a(PagedGroup<Status> paramPagedGroup)
  {
    if (paramPagedGroup == null) {
      return;
    }
    Object localObject1 = k.a("tpoic");
    Object localObject2 = ((File)localObject1).listFiles();
    if (localObject2 != null)
    {
      int j = localObject2.length;
      int i = 0;
      while (i < j)
      {
        localObject2[i].delete();
        i += 1;
      }
    }
    localObject2 = new File((File)localObject1, paramPagedGroup.mID + "topic.data");
    localObject1 = new o();
    ((o)localObject1).d = paramPagedGroup.mID;
    ((o)localObject1).b = paramPagedGroup.getCurrentPage();
    ((o)localObject1).a = paramPagedGroup.getMaxPage();
    ((o)localObject1).c = paramPagedGroup.getTotalCount();
    paramPagedGroup = paramPagedGroup.iterator();
    while (paramPagedGroup.hasNext())
    {
      Object localObject3 = paramPagedGroup.next();
      ((o)localObject1).add(com.xueqiu.android.base.util.m.a().toJson(localObject3));
    }
    if (((File)localObject2).exists()) {
      ((File)localObject2).delete();
    }
    try
    {
      ((File)localObject2).createNewFile();
      paramPagedGroup = new FileOutputStream((File)localObject2);
      new ObjectOutputStream(paramPagedGroup).writeObject(localObject1);
      paramPagedGroup.close();
      return;
    }
    catch (Exception paramPagedGroup)
    {
      v.a(paramPagedGroup.toString());
    }
  }
  
  private static void a(PagedGroup<Status> paramPagedGroup1, PagedGroup<Status> paramPagedGroup2)
  {
    if ((paramPagedGroup1 == null) || (paramPagedGroup2 == null)) {}
    while (paramPagedGroup1.mID != paramPagedGroup2.mID) {
      return;
    }
    Object localObject;
    if ((paramPagedGroup1 == null) || (paramPagedGroup2 == null))
    {
      localObject = null;
      paramPagedGroup1.setTotalCount(((PagedGroup)localObject).getTotalCount());
      paramPagedGroup1.setMaxPage(((PagedGroup)localObject).getMaxPage());
      paramPagedGroup1.setCurrentPage(((PagedGroup)localObject).getCurrentPage());
      paramPagedGroup1.addAll((Collection)localObject);
      return;
    }
    Iterator localIterator = paramPagedGroup2.iterator();
    label140:
    for (;;)
    {
      localObject = paramPagedGroup2;
      if (!localIterator.hasNext()) {
        break;
      }
      localObject = (Status)localIterator.next();
      int i = 0;
      for (;;)
      {
        if (i >= paramPagedGroup1.size()) {
          break label140;
        }
        Status localStatus = (Status)paramPagedGroup1.get(i);
        if (((Status)localObject).getStatusId() == localStatus.getStatusId())
        {
          localIterator.remove();
          break;
        }
        i += 1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */