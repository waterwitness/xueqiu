package com.xueqiu.android.base.util;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.support.v4.a.av;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.common.model.PhotoUploadResult;
import com.xueqiu.android.common.model.parser.AbstractParser;
import com.xueqiu.android.community.CashierActivity;
import com.xueqiu.android.community.DraftBoxActivity;
import com.xueqiu.android.community.a.ak;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Draft;
import com.xueqiu.android.community.model.HomeTimelineStatusGroup;
import com.xueqiu.android.community.model.PaidMention;
import com.xueqiu.android.community.model.RecommendCard;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.RecommendCube;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import rx.c.f;
import rx.i;

public final class ap
{
  private static int a = 0;
  
  public static final int a()
  {
    int i = a + 1;
    a = i;
    if (i == Integer.MAX_VALUE) {
      a = 0;
    }
    return a;
  }
  
  public static long a(Status paramStatus)
  {
    if ((paramStatus == null) || (paramStatus.getPaidMention() == null) || (paramStatus.getPaidMention().size() == 0)) {
      return 0L;
    }
    return ((PaidMention)paramStatus.getPaidMention().get(0)).getUserId();
  }
  
  public static Intent a(Context paramContext, long paramLong)
  {
    paramContext = new Intent(paramContext, CashierActivity.class);
    paramContext.putExtra("extra_type", "type_reward_status");
    paramContext.putExtra("extra_status_id", paramLong);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, long paramLong1, long paramLong2, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    paramContext = new Intent(paramContext, CashierActivity.class);
    paramContext.putExtra("extra_type", "type_paid_mention_comment");
    paramContext.putExtra("extra_status_id", paramLong1);
    paramContext.putExtra("extra_comment_id", paramLong2);
    paramContext.putExtra("extra_content", paramString1);
    paramContext.putExtra("extra_mentions", paramString2);
    paramContext.putExtra("extra_mentions_amount", paramString3);
    paramContext.putExtra("extra_forward", paramInt);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    paramContext = new Intent(paramContext, CashierActivity.class);
    paramContext.putExtra("extra_type", "type_paid_mention_repost");
    paramContext.putExtra("extra_status_id", paramLong);
    paramContext.putExtra("extra_content", paramString1);
    paramContext.putExtra("extra_mentions", paramString2);
    paramContext.putExtra("extra_mentions_amount", paramString3);
    paramContext.putExtra("extra_forward", paramInt);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = new Intent(paramContext, CashierActivity.class);
    paramContext.putExtra("extra_type", "type_paid_mention_status");
    paramContext.putExtra("extra_content", paramString1);
    paramContext.putExtra("extra_mentions", paramString2);
    paramContext.putExtra("extra_mentions_amount", paramString3);
    return paramContext;
  }
  
  private static aq a(JSONObject paramJSONObject)
  {
    aq localaq = new aq();
    localaq.a = new ArrayList();
    localaq.b = new ArrayList();
    localaq.c = new ArrayList();
    localaq.d = new ArrayList();
    for (;;)
    {
      int i;
      JSONObject localJSONObject;
      Object localObject1;
      Object localObject2;
      try
      {
        if (!AbstractParser.hasKeyAndValueNotNull(paramJSONObject, "recommend_cards")) {
          break;
        }
        paramJSONObject = paramJSONObject.getJSONArray("recommend_cards");
        int j = paramJSONObject.length();
        i = 0;
        if (i >= j) {
          break;
        }
        localJSONObject = paramJSONObject.getJSONObject(i);
        localObject1 = localJSONObject.getString("type");
        if ((localObject1 != null) && (((String)localObject1).equals("USER")))
        {
          localObject2 = (RecommendCard)m.a().fromJson(localJSONObject.toString(), new TypeToken() {}.getType());
          localaq.a.add(localObject2);
        }
        if ((localObject1 != null) && (((String)localObject1).equals("STATUS")))
        {
          localObject2 = (RecommendCard)m.a().fromJson(localJSONObject.toString(), new TypeToken() {}.getType());
          localaq.b.add(localObject2);
        }
        if ((localObject1 != null) && (((String)localObject1).equals("STOCK")))
        {
          localObject2 = (RecommendCard)m.a().fromJson(localJSONObject.toString(), new TypeToken() {}.getType());
          localaq.c.add(localObject2);
        }
        if ((localObject1 == null) || (!((String)localObject1).equals("CUBE"))) {
          break label442;
        }
        localObject2 = (ArrayList)m.a().fromJson(localJSONObject.getString("elements"), new TypeToken() {}.getType());
        localObject1 = new ArrayList();
        localObject2 = ((ArrayList)localObject2).iterator();
        if (((Iterator)localObject2).hasNext())
        {
          RecommendCube localRecommendCube = (RecommendCube)((Iterator)localObject2).next();
          Cube localCube = localRecommendCube.getCube();
          localCube.setOwner(localRecommendCube.getOwner());
          localCube.setFollowing(localRecommendCube.isHasExist());
          localCube.setRecommendReason(localRecommendCube.getRecommendReason());
          ((ArrayList)localObject1).add(localCube);
          continue;
        }
        localObject2 = new RecommendCard();
      }
      catch (JSONException paramJSONObject)
      {
        aa.a(paramJSONObject);
        return null;
      }
      ((RecommendCard)localObject2).setName(localJSONObject.getString("name"));
      ((RecommendCard)localObject2).setId(localJSONObject.getString("id"));
      ((RecommendCard)localObject2).setLocation(localJSONObject.getInt("location"));
      ((RecommendCard)localObject2).setElements((List)localObject1);
      localaq.d.add(localObject2);
      label442:
      i += 1;
    }
    return localaq;
  }
  
  public static Status a(Status paramStatus, JSONObject paramJSONObject)
  {
    paramJSONObject = a(paramJSONObject);
    if (paramJSONObject.a.size() > 0) {
      paramStatus.setRecommendUserCard((RecommendCard)paramJSONObject.a.get(0));
    }
    if (paramJSONObject.b.size() > 0) {
      paramStatus.setRecommendStatusCard((RecommendCard)paramJSONObject.b.get(0));
    }
    if (paramJSONObject.c.size() > 0) {
      paramStatus.setRecommendStockCard((RecommendCard)paramJSONObject.c.get(0));
    }
    if (paramJSONObject.d.size() > 0) {
      paramStatus.setRecommendCubeCard((RecommendCard)paramJSONObject.d.get(0));
    }
    return paramStatus;
  }
  
  public static String a(Comment paramComment)
  {
    if ((paramComment == null) || (paramComment.getPaidMention() == null) || (paramComment.getPaidMention().size() == 0)) {
      return "NONE";
    }
    return ((PaidMention)paramComment.getPaidMention().get(0)).getState();
  }
  
  public static String a(String paramString, boolean paramBoolean, Context paramContext)
  {
    String str = DefaultPrefs.getString("pay_mention_answer_postfix", "", paramContext);
    if (paramBoolean) {
      str = DefaultPrefs.getString("pay_mention_refuse_postfix", "", paramContext);
    }
    paramContext = str;
    if (!au.a(str)) {
      paramContext = String.format(Locale.CHINA, "<font color=\"#aaaaaa\">%s</font>", new Object[] { str });
    }
    str = paramString.split("//<a[^>]+>@[^<]+</a>")[0];
    return str + paramContext + paramString.substring(str.length());
  }
  
  public static String a(Date paramDate)
  {
    if (paramDate == null) {
      return "";
    }
    com.xueqiu.android.base.b.a();
    return h.a(paramDate, com.xueqiu.android.base.b.d());
  }
  
  public static rx.a<Comment> a(Context paramContext, final ai paramai, final long paramLong, Comment paramComment, final String paramString, final boolean paramBoolean)
  {
    rx.a.a(new rx.b() {});
  }
  
  public static rx.a<Comment> a(final Context paramContext, ai paramai, final long paramLong, Comment paramComment, final String paramString1, final boolean paramBoolean1, final boolean paramBoolean2, final String paramString2, final boolean paramBoolean3)
  {
    rx.a.a(new rx.b() {});
  }
  
  public static rx.a<Status> a(Context paramContext, final ai paramai, final long paramLong, final String paramString, int paramInt)
  {
    rx.a.a(new rx.b() {});
  }
  
  public static rx.a<Status> a(final Context paramContext, final ai paramai, final long paramLong, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.trim().length() > 0) && (new File(ad.a + paramString2).exists())) {
      b(paramContext, paramai, ad.a + paramString2).d(new f() {}).b(new f() {});
    }
    return b(paramai, paramLong, paramString1);
  }
  
  public static rx.a<Status> a(Context paramContext, ai paramai, String paramString)
  {
    return a(paramContext, paramai, null, paramString, null, null, null);
  }
  
  public static rx.a<String> a(final Context paramContext, ai paramai, String paramString1, final String paramString2)
  {
    if ((paramString2 != null) && (paramString2.trim().length() > 0) && (new File(ad.a + paramString2).exists())) {
      b(paramContext, paramai, ad.a + paramString2).d(new f() {}).b(new f() {});
    }
    return b(paramString1);
  }
  
  public static rx.a<Status> a(Context paramContext, ai paramai, String paramString1, String paramString2, String paramString3)
  {
    return a(paramContext, paramai, null, paramString1, paramString2, paramString3, null);
  }
  
  public static rx.a<Status> a(Context paramContext, ai paramai, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return a(paramContext, paramai, paramString1, null, paramString2, true, paramString3, paramString4, paramString5);
  }
  
  public static rx.a<Status> a(final Context paramContext, final ai paramai, final String paramString1, final String paramString2, String paramString3, final boolean paramBoolean, final String paramString4, final String paramString5, final String paramString6)
  {
    Object localObject = paramContext.getString(2131165844, new Object[] { paramContext.getString(2131165476) });
    localObject = aa.a(paramContext).b((CharSequence)localObject).c((CharSequence)localObject).a(new android.support.v4.a.au().a((CharSequence)localObject)).a(false).a();
    ((NotificationManager)paramContext.getSystemService("notification")).notify(9997, ((av)localObject).b());
    if ((paramString6 != null) && (paramString6.trim().length() > 0) && (new File(ad.a + paramString6).exists())) {
      b(paramContext, paramai, ad.a + paramString6).d(new f() {}).b(new f() {});
    }
    return b(paramContext, paramai, paramString1, paramString2, paramString3, paramBoolean, paramString4, paramString5, paramString3, paramString6);
  }
  
  public static void a(Context paramContext, long paramLong, Comment paramComment, String paramString, boolean paramBoolean)
  {
    long l = 0L;
    Draft localDraft = new Draft();
    if ((paramComment != null) && (paramComment.getId() != 0L) && (paramComment.getUser() != null))
    {
      localDraft.setTitle(String.format(paramContext.getString(2131165343), new Object[] { paramComment.getUser().getScreenName() }));
      localDraft.setType(1);
      paramContext = new JsonObject();
      paramContext.addProperty("status_id", Long.valueOf(paramLong));
      if (paramComment != null) {
        break label186;
      }
    }
    label186:
    for (paramLong = l;; paramLong = paramComment.getId())
    {
      paramContext.addProperty("comment_id", Long.valueOf(paramLong));
      paramContext.addProperty("is_repost", Boolean.valueOf(paramBoolean));
      paramContext.addProperty("draft_text", paramString.replaceAll("\n", "").replaceAll("<p dir=\"ltr\">", "").replaceAll("</p>", ""));
      localDraft.setText(paramContext.toString());
      DBManager.getInstance().insertDraft(localDraft);
      return;
      localDraft.setTitle(paramContext.getString(2131165342));
      break;
    }
  }
  
  public static void a(Context paramContext, long paramLong, String paramString1, String paramString2)
  {
    Draft localDraft = new Draft();
    if (paramLong > 0L)
    {
      localDraft.setType(2);
      localDraft.setTitle(paramContext.getString(2131165944));
    }
    for (;;)
    {
      paramContext = new JsonObject();
      paramContext.addProperty("draft_text", paramString1.replaceAll("\n", "").replaceAll("<p dir=\"ltr\">", "").replaceAll("</p>", ""));
      if (paramLong > 0L) {
        paramContext.addProperty("status_id", Long.valueOf(paramLong));
      }
      localDraft.setText(paramContext.toString());
      if ((paramString2 != null) && (paramString2.trim().length() > 0)) {
        localDraft.setImageName(paramString2);
      }
      DBManager.getInstance().insertDraft(localDraft);
      return;
      localDraft.setType(3);
      localDraft.setTitle(paramContext.getString(2131166588));
    }
  }
  
  public static void a(HomeTimelineStatusGroup paramHomeTimelineStatusGroup, ak paramak)
  {
    if (paramak == null) {}
    while ((paramHomeTimelineStatusGroup.getRecommendStatusCardList() == null) && (paramHomeTimelineStatusGroup.getRecommendUserCardList() == null) && (paramHomeTimelineStatusGroup.getRecommendStockCardList() == null) && (paramHomeTimelineStatusGroup.getRecommendCubeCardList() == null)) {
      return;
    }
    ArrayList localArrayList1 = paramak.a();
    ArrayList localArrayList2 = (ArrayList)paramHomeTimelineStatusGroup.getRecommendUserCardList();
    a(localArrayList2, localArrayList1, paramHomeTimelineStatusGroup, "USER");
    ArrayList localArrayList3 = (ArrayList)paramHomeTimelineStatusGroup.getRecommendStatusCardList();
    a(localArrayList3, localArrayList1, paramHomeTimelineStatusGroup, "STATUS");
    ArrayList localArrayList4 = (ArrayList)paramHomeTimelineStatusGroup.getRecommendStockCardList();
    a(localArrayList4, localArrayList1, paramHomeTimelineStatusGroup, "STOCK");
    a((ArrayList)paramHomeTimelineStatusGroup.getRecommendCubeCardList(), localArrayList1, paramHomeTimelineStatusGroup, "CUBE");
    paramak.j = localArrayList2;
    paramak.m = localArrayList3;
    paramak.l = paramak.l;
    paramak.k = localArrayList4;
  }
  
  public static void a(HomeTimelineStatusGroup paramHomeTimelineStatusGroup, JSONObject paramJSONObject)
  {
    paramJSONObject = a(paramJSONObject);
    if (paramJSONObject.a.size() > 0) {
      paramHomeTimelineStatusGroup.setRecommendUserCardList(paramJSONObject.a);
    }
    if (paramJSONObject.b.size() > 0) {
      paramHomeTimelineStatusGroup.setRecommendStatusCardList(paramJSONObject.b);
    }
    if (paramJSONObject.c.size() > 0) {
      paramHomeTimelineStatusGroup.setRecommendStockCardList(paramJSONObject.c);
    }
    if (paramJSONObject.d.size() > 0) {
      paramHomeTimelineStatusGroup.setRecommendCubeCardList(paramJSONObject.d);
    }
  }
  
  private static <T> void a(ArrayList<RecommendCard<T>> paramArrayList, ArrayList<Status> paramArrayList1, HomeTimelineStatusGroup paramHomeTimelineStatusGroup, String paramString)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0)) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = paramArrayList.iterator();
    Object localObject;
    while (localIterator1.hasNext())
    {
      RecommendCard localRecommendCard = (RecommendCard)localIterator1.next();
      Iterator localIterator2 = paramArrayList1.iterator();
      while (localIterator2.hasNext())
      {
        Status localStatus = (Status)localIterator2.next();
        localObject = null;
        if (localStatus.getType().equals("STATUS")) {
          localObject = localStatus.getRecommendStatusCard();
        }
        if (localStatus.getType().equals("USER")) {
          localObject = localStatus.getRecommendUserCard();
        }
        if (localStatus.getType().equals("STOCK")) {
          localObject = localStatus.getRecommendStockCard();
        }
        if (localStatus.getType().equals("CUBE")) {
          localObject = localStatus.getRecommendCubeCard();
        }
        if ((localObject != null) && (((RecommendCard)localObject).getId().equals(localRecommendCard.getId()))) {
          localArrayList.add(localRecommendCard);
        }
      }
    }
    paramArrayList.removeAll(localArrayList);
    paramArrayList = paramArrayList.iterator();
    label204:
    int i;
    if (paramArrayList.hasNext())
    {
      paramArrayList1 = (RecommendCard)paramArrayList.next();
      i = paramArrayList1.getLocation();
      localObject = new Status();
      ((Status)localObject).setType(paramString);
      ((Status)localObject).setMark(2);
      if (!paramString.equals("USER")) {
        break label305;
      }
      ((Status)localObject).setRecommendUserCard(paramArrayList1);
      label265:
      if (paramHomeTimelineStatusGroup.size() != 0) {
        break label359;
      }
      i = 0;
    }
    label305:
    label359:
    for (;;)
    {
      int j = i;
      if (i > paramHomeTimelineStatusGroup.size()) {
        j = paramHomeTimelineStatusGroup.size();
      }
      paramHomeTimelineStatusGroup.add(j, localObject);
      break label204;
      break;
      if (paramString.equals("STATUS"))
      {
        ((Status)localObject).setRecommendStatusCard(paramArrayList1);
        break label265;
      }
      if (paramString.equals("STOCK"))
      {
        ((Status)localObject).setRecommendStockCard(paramArrayList1);
        break label265;
      }
      if (!paramString.equals("CUBE")) {
        break label265;
      }
      ((Status)localObject).setRecommendCubeCard(paramArrayList1);
      break label265;
    }
  }
  
  public static long b(Comment paramComment)
  {
    if ((paramComment == null) || (paramComment.getPaidMention() == null) || (paramComment.getPaidMention().size() == 0)) {
      return 0L;
    }
    return ((PaidMention)paramComment.getPaidMention().get(0)).getUserId();
  }
  
  public static Intent b(Context paramContext, long paramLong)
  {
    paramContext = new Intent(paramContext, CashierActivity.class);
    paramContext.putExtra("extra_type", "type_reward_comment");
    paramContext.putExtra("extra_comment_id", paramLong);
    return paramContext;
  }
  
  public static String b(Status paramStatus)
  {
    if ((paramStatus == null) || (paramStatus.getPaidMention() == null) || (paramStatus.getPaidMention().size() == 0)) {
      return "NONE";
    }
    return ((PaidMention)paramStatus.getPaidMention().get(0)).getState();
  }
  
  public static String b(Date paramDate)
  {
    long l1 = 0L;
    if (paramDate == null) {
      return "";
    }
    long l2 = paramDate.getTime();
    l2 = 172800000L - (System.currentTimeMillis() - l2);
    if (l2 < 0L) {}
    for (;;)
    {
      if (l1 < 3600000L) {
        return String.format(Locale.CHINA, "%d分钟后过期", new Object[] { Long.valueOf(l1 / 60000L) });
      }
      return String.format(Locale.CHINA, "%d小时后过期", new Object[] { Long.valueOf(l1 / 3600000L) });
      l1 = l2;
    }
  }
  
  public static rx.a<PhotoUploadResult> b(Context paramContext, final ai paramai, final String paramString)
  {
    rx.a.a(new rx.b() {});
  }
  
  private static rx.a<Status> b(final Context paramContext, ai paramai, final String paramString1, final String paramString2, final String paramString3, final boolean paramBoolean, final String paramString4, final String paramString5, final String paramString6, final String paramString7)
  {
    rx.a.a(new rx.b() {});
  }
  
  private static rx.a<Status> b(ai paramai, final long paramLong, String paramString)
  {
    rx.a.a(new rx.b() {});
  }
  
  private static rx.a<String> b(String paramString)
  {
    rx.a.a(new rx.b() {});
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */