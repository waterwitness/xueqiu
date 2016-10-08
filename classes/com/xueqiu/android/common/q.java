package com.xueqiu.android.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h5.H5Activity;
import com.xueqiu.android.base.h5.e;
import com.xueqiu.android.base.h5.f;
import com.xueqiu.android.base.h5.k;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.az;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.common.pdf.PDFViewerActivity;
import com.xueqiu.android.common.search.SearchActivity;
import com.xueqiu.android.community.FindPeopleActivity;
import com.xueqiu.android.community.LiveNewsActivity;
import com.xueqiu.android.community.ReplierProfileActivity;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.TodayTopicActivity;
import com.xueqiu.android.community.TopicDetailActivity;
import com.xueqiu.android.community.TopicFeaturedListActivity;
import com.xueqiu.android.community.TopicWordActivity;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.c.l;
import com.xueqiu.android.community.model.HotEvent;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.CreateCubeActivity;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.CubeCardListActivity;
import com.xueqiu.android.cube.CubeEditorialActivity;
import com.xueqiu.android.cube.CubeRbHistoryActivity;
import com.xueqiu.android.cube.CubeTopListActivity;
import com.xueqiu.android.cube.RebalanceActivity;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.CubeRankCategory;
import com.xueqiu.android.message.ChatActivity;
import com.xueqiu.android.message.GroupProfileActivity;
import com.xueqiu.android.stock.BondBuyBackActivity;
import com.xueqiu.android.stock.FinancialDataActivity;
import com.xueqiu.android.stock.InvestmentCalEventAddActivity;
import com.xueqiu.android.stock.InvestmentCalendarActivity;
import com.xueqiu.android.stock.LHBActivity;
import com.xueqiu.android.stock.RZRQActivity;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.tactic.TacticDetailActivity;
import com.xueqiu.android.tactic.TacticStoreActivity;
import com.xueqiu.android.tactic.c.b;
import com.xueqiu.android.trade.c.w;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class q
{
  public static final String a = com.xueqiu.android.base.v.b("/mp/");
  
  private static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, MainActivity.class);
    paramContext.putExtra("extra_notification", 11);
    if (paramString != null) {
      paramContext.putExtra("extra_exchange_type", paramString);
    }
    paramContext.setFlags(67108864);
    return paramContext;
  }
  
  private static Intent a(User paramUser, Context paramContext)
  {
    paramContext = new Intent(paramContext, UserProfileActivity.class);
    paramContext.putExtra("extra_user", paramUser);
    return paramContext;
  }
  
  private static Intent a(Long paramLong, Context paramContext)
  {
    paramContext = new Intent(paramContext, StatusDetailActivity.class);
    paramContext.putExtra("status_id", paramLong);
    return paramContext;
  }
  
  private static Intent a(String paramString, Context paramContext, boolean paramBoolean)
  {
    Object localObject4 = null;
    boolean bool = false;
    Object localObject3 = localObject4;
    if (paramString != null)
    {
      if (paramString.trim().length() != 0) {
        break label31;
      }
      localObject3 = localObject4;
    }
    label31:
    String str2;
    String str1;
    Object localObject2;
    do
    {
      do
      {
        Object localObject1;
        do
        {
          do
          {
            return (Intent)localObject3;
            if (com.xueqiu.android.base.v.a(paramString)) {
              break;
            }
            localObject3 = localObject4;
          } while (!paramString.matches("/n/\\S+"));
          str2 = paramString.split("\\?")[0];
          i = str2.indexOf('/', 8);
          str1 = str2.substring(i + 1);
          localObject1 = str1.split("/");
          localObject3 = localObject4;
        } while (localObject1.length == 0);
        if (str1.matches("[g|G]/\\S+"))
        {
          l = Long.parseLong(localObject1[(localObject1.length - 1)]);
          paramString = new Intent(paramContext, GroupProfileActivity.class);
          paramString.putExtra("extra_group_id", Long.valueOf(l));
          return paramString;
        }
        if (str2.contains("/people")) {
          return new Intent(paramContext, FindPeopleActivity.class);
        }
        if (str2.contains("calendar")) {
          return d(str2, paramContext);
        }
        if (str2.contains("/performance"))
        {
          paramString = new Intent(paramContext, MainActivity.class);
          paramString.putExtra("extra_notification", 10);
          paramString.setFlags(67108864);
          return paramString;
        }
        if (str2.contains("/n/"))
        {
          localObject1 = str2.substring(str2.lastIndexOf("/") + 1, str2.length());
          paramString = new User();
          try
          {
            paramString.setScreenName(URLDecoder.decode((String)localObject1, "UTF-8"));
            return a(paramString, paramContext);
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            for (;;)
            {
              localUnsupportedEncodingException.printStackTrace();
            }
          }
        }
        if (str2.contains("/p/discover"))
        {
          paramString = paramString.split("\\?");
          if (paramString.length > 1)
          {
            paramString = az.c(paramString[1]);
            localObject2 = (String)paramString.get("action");
            if (((String)localObject2).equals("editorial"))
            {
              l = Long.parseLong((String)paramString.get("editorialId"));
              paramString = new Intent(paramContext, CubeEditorialActivity.class);
              paramString.putExtra("extra_editorial_id", l);
            }
          }
          for (;;)
          {
            return paramString;
            if (((String)localObject2).equals("hot"))
            {
              paramString = new Intent(paramContext, CubeCardListActivity.class);
              paramString.putExtra("extra_rank_category", CubeRankCategory.MOST_POPULAR.value());
            }
            else
            {
              paramString = new Intent(paramContext, CubeCardListActivity.class);
              paramString.putExtra("extra_rank_category", CubeRankCategory.MOST_VALUABLE.value());
              continue;
              paramString = new Intent(paramContext, MainActivity.class);
              paramString.putExtra("extra_notification", 8);
            }
          }
        }
        if (str2.contains("/arena")) {
          return new Intent(paramContext, CubeTopListActivity.class);
        }
        if (str2.contains("/today/lc"))
        {
          paramString = new Intent(paramContext, TodayTopicActivity.class);
          paramString.putExtra("view_which", 4);
          return paramString;
        }
        if (!str2.contains("/paidMention/ask")) {
          break;
        }
        paramString = paramString.split("/");
        localObject3 = localObject4;
      } while (paramString.length == 0);
      paramContext = new Intent(paramContext, ReplierProfileActivity.class);
      paramContext.putExtra("extra_write_type", 5);
      paramContext.putExtra("user_id", paramString[(paramString.length - 1)]);
      paramContext.putExtra("from_user_profile", true);
      paramContext.putExtra("extra_check_show_hint", true);
      return paramContext;
      if (!str2.contains("special/item")) {
        break;
      }
      paramString = paramString.split("/");
      localObject3 = localObject4;
    } while (paramString.length == 0);
    long l = Long.parseLong(paramString[(paramString.length - 1)]);
    paramString = new Intent(paramContext, TopicDetailActivity.class);
    paramString.putExtra("topic_id", l);
    return paramString;
    if (str2.contains("strategy/store"))
    {
      paramString = paramString.split("\\?");
      if (paramString.length <= 1) {
        break label2208;
      }
      paramString = az.c(paramString[1]);
      if (!paramString.containsKey("category")) {
        break label2208;
      }
    }
    label2200:
    label2208:
    for (int i = Integer.parseInt((String)paramString.get("category"));; i = 0)
    {
      paramString = new Intent(paramContext, TacticStoreActivity.class);
      paramString.putExtra("extra_category", i);
      return paramString;
      if (str2.contains("strategy/message"))
      {
        localObject2 = paramString.split("/");
        localObject3 = localObject4;
        if (localObject2.length == 0) {
          break;
        }
        l = Long.parseLong(localObject2[(localObject2.length - 1)]);
        localObject2 = new Bundle();
        ((Bundle)localObject2).putLong("extra_push_id", l);
        localObject2 = SingleFragmentActivity.a(paramContext, b.class, (Bundle)localObject2);
      }
      for (;;)
      {
        localObject3 = paramString.substring(str2.indexOf("xueqiu.com/") + 11, paramString.length());
        if (((String)localObject3).matches("^hq"))
        {
          return a(paramContext, null);
          if (str1.equalsIgnoreCase("broker/myaccount"))
          {
            paramString = new Intent(paramContext, MainActivity.class);
            paramString.putExtra("extra_notification", 9);
            paramString.setFlags(67108864);
            return paramString;
          }
          if (str1.equalsIgnoreCase("broker/notifyList")) {
            return SingleFragmentActivity.a(paramContext, w.class);
          }
          if (str1.equalsIgnoreCase("service/live")) {
            return new Intent(paramContext, LiveNewsActivity.class);
          }
          if (str1.equalsIgnoreCase("special/list")) {
            return new Intent(paramContext, TopicFeaturedListActivity.class);
          }
          if (str1.equalsIgnoreCase("pm"))
          {
            localObject2 = paramString.split("\\?");
            paramString = new Bundle();
            if (localObject2.length > 1)
            {
              localObject2 = (String)az.c(localObject2[1]).get("type");
              if ((localObject2 == null) || (!"0".equals(localObject2))) {
                paramString.putString("page_type", "comment");
              }
            }
            for (;;)
            {
              return SingleFragmentActivity.a(paramContext, l.class, paramString);
              paramString.putString("page_type", "question");
            }
          }
          if (localObject2[0].equalsIgnoreCase("S"))
          {
            if ((localObject2.length > 2) && (localObject2[(localObject2.length - 1)].matches("\\d+#\\d+")))
            {
              paramString = localObject2[(localObject2.length - 1)];
              return a(Long.valueOf(Integer.parseInt(paramString.substring(0, paramString.indexOf('#')))), paramContext);
            }
            if (localObject2.length > 2)
            {
              localObject3 = localObject2[(localObject2.length - 1)];
              if (((String)localObject3).matches("\\d+")) {
                return a(Long.valueOf(Long.parseLong(localObject2[(localObject2.length - 1)])), paramContext);
              }
              if ((((String)localObject3).equals("ZCFZB")) || (((String)localObject3).equals("XJLLB")) || (((String)localObject3).equals("GSLRB")))
              {
                paramString = localObject2[1];
                paramContext = new Intent(paramContext, FinancialDataActivity.class);
                paramContext.putExtra("extra_symbol", paramString);
                paramContext.putExtra("extra_page_name", (String)localObject3);
                return paramContext;
              }
              if (((String)localObject3).equals("RZRQ"))
              {
                paramString = localObject2[1];
                paramContext = new Intent(paramContext, RZRQActivity.class);
                paramContext.putExtra("extra_symbol", paramString);
                return paramContext;
              }
              if (((String)localObject3).equals("LHB"))
              {
                paramString = localObject2[1];
                paramContext = new Intent(paramContext, LHBActivity.class);
                paramContext.putExtra("extra_symbol", paramString);
                return paramContext;
              }
              localObject2 = null;
              continue;
            }
            if (localObject2.length == 2) {
              return com.xueqiu.android.base.util.q.a(paramContext, new StockQuote(localObject2[(localObject2.length - 1)]));
            }
          }
          else if ((localObject2[0].matches("^\\d+$")) && (localObject2.length < 3) && (!str1.matches("^(\\d+)/(cubes|friends|follows|stocks|answers|hot|fund)$")))
          {
            if (localObject2.length > 1)
            {
              localObject2 = localObject2[(localObject2.length - 1)];
              paramString = (String)localObject2;
              if (((String)localObject2).contains("#")) {
                paramString = ((String)localObject2).substring(0, ((String)localObject2).indexOf("#"));
              }
              return a(Long.valueOf(Long.parseLong(paramString.trim())), paramContext);
            }
            if (localObject2[0].length() >= 4)
            {
              paramString = new User();
              paramString.setUserId(Long.parseLong(localObject2[0]));
              return a(paramString, paramContext);
            }
          }
          else if (((localObject2.length == 1) && (!localObject2[0].equals("dh")) && (localObject2.length == 1) && (!localObject2[0].equals("today")) && (localObject2[0].length() >= 4) && (localObject2[0].matches("\\w+"))) || ((localObject2.length == 2) && (localObject2[1].equals("profile"))))
          {
            paramString = new User();
            paramString.setUserId(0L);
            paramString.setDomain(localObject2[0]);
            return a(paramString, paramContext);
          }
        }
        else
        {
          if (((String)localObject3).matches("^hq#.+"))
          {
            localObject3 = ((String)localObject3).substring(((String)localObject3).indexOf("#") + 1, ((String)localObject3).length());
            if (((String)localObject3).equals("repurchase")) {
              return new Intent(paramContext, BondBuyBackActivity.class);
            }
            if (((String)localObject3).startsWith("exchange=")) {
              return a(paramContext, ((String)localObject3).substring(9, ((String)localObject3).length()));
            }
            if (((String)localObject3).equals("AH")) {
              return a(paramContext, "AH");
            }
          }
          for (;;)
          {
            localObject3 = localObject2;
            if (localObject2 != null) {
              break;
            }
            localObject3 = localObject2;
            if (!paramBoolean) {
              break;
            }
            paramContext = new Intent(paramContext, H5Activity.class);
            if (f.a().b.find(str1) != null)
            {
              paramContext.putExtra("extra_url", paramString.substring(i + 1));
              paramContext.putExtra("extra_is_module", true);
              return paramContext;
              if (((String)localObject3).matches("^today$")) {
                return new Intent(paramContext, TodayTopicActivity.class);
              }
              if (((String)localObject3).matches("^u\\?q=.*"))
              {
                paramString = az.a(paramString).getString("q");
                paramContext = new Intent(paramContext, SearchActivity.class);
                paramContext.putExtra("search_word", paramString);
                paramContext.putExtra("search_type", 2);
                return paramContext;
              }
              if (((String)localObject3).matches("^k\\?q=.*"))
              {
                localObject2 = new HotEvent();
                ((HotEvent)localObject2).setTag(az.a(paramString).getString("q"));
                paramString = new Bundle();
                paramString.putParcelable("topic_data", (Parcelable)localObject2);
                paramContext = new Intent(paramContext, TopicWordActivity.class);
                paramContext.putExtras(paramString);
                return paramContext;
              }
              if (((String)localObject3).matches("^strategy/[1-9]\\d*$"))
              {
                paramString = paramString.split("/");
                localObject3 = localObject4;
                if (paramString.length == 0) {
                  break;
                }
                l = Long.parseLong(paramString[(paramString.length - 1)]);
                paramString = new Intent(paramContext, TacticDetailActivity.class);
                paramString.putExtra("tactic_id", l);
                return paramString;
              }
              if (((String)localObject3).matches("^im/session/\\d{1,1}/\\d+"))
              {
                i = ((String)localObject3).lastIndexOf('/');
                l = Long.parseLong(((String)localObject3).substring(i + 1));
                paramBoolean = bool;
                if (Integer.parseInt(((String)localObject3).substring(i - 1, i)) == 1) {
                  paramBoolean = true;
                }
                paramString = new Intent(paramContext, ChatActivity.class);
                paramString.putExtra("extra_talk_id", l);
                paramString.putExtra("extra_talk_is_group", paramBoolean);
                return paramString;
              }
              if (((String)localObject3).matches("^[p|P]/([z|Z][h|H]\\d+)/history(.*)"))
              {
                localObject3 = Pattern.compile("^[p|P]/([z|Z][h|H]\\d+)/history(.*)").matcher((CharSequence)localObject3);
                if (((Matcher)localObject3).matches())
                {
                  localObject2 = new Intent(paramContext, CubeRbHistoryActivity.class);
                  ((Intent)localObject2).putExtra("extra_symbol", ((Matcher)localObject3).group(1));
                  localObject3 = az.c(((Matcher)localObject3).group(2));
                  if (((Map)localObject3).containsKey("sell_flag")) {
                    ((Intent)localObject2).putExtra("extra_sell_flag", Boolean.valueOf((String)((Map)localObject3).get("sell_flag")));
                  }
                }
                continue;
              }
              if (((String)localObject3).matches("^[p|P]/((([z|Z][h|H])|([s|S][p|P]))\\d+).*"))
              {
                localObject3 = Pattern.compile("^[p|P]/((([z|Z][h|H])|([s|S][p|P]))\\d+).*").matcher((CharSequence)localObject3);
                if (((Matcher)localObject3).matches()) {
                  localObject2 = com.xueqiu.android.base.util.q.a(paramContext, CubeActivity.class, "extra_cube_symbol", ((Matcher)localObject3).group(1));
                }
                continue;
              }
              if (!((String)localObject3).matches("^p/create")) {
                break label2200;
              }
              return new Intent(paramContext, CreateCubeActivity.class);
            }
            paramContext.putExtra("extra_url", paramString);
            paramContext.putExtra("extra_is_module", false);
            return paramContext;
          }
        }
        localObject2 = null;
      }
    }
  }
  
  public static void a(String paramString, Context paramContext)
  {
    if ((!b(paramString, paramContext)) && (!TextUtils.isEmpty(paramString)))
    {
      if ((!TextUtils.isEmpty(paramString)) && ((paramString.endsWith(".pdf")) || (paramString.endsWith(".PDF"))))
      {
        localObject = new Bundle();
        ((Bundle)localObject).putString("pdf_file_url", paramString);
        paramString = new Intent(paramContext, PDFViewerActivity.class);
        paramString.putExtras((Bundle)localObject);
        paramContext.startActivity(paramString);
      }
    }
    else {
      return;
    }
    if ((com.xueqiu.android.base.v.a(paramString)) || (a(paramString)))
    {
      localObject = paramString;
      if (paramString.startsWith("https://fund.xueqiu.com/ads/redirect"))
      {
        localObject = String.format("did=%s", new Object[] { i.b() });
        if (!paramString.contains("?")) {
          break label161;
        }
      }
      label161:
      for (localObject = String.format("%s&%s", new Object[] { paramString, localObject });; localObject = String.format("%s?%s", new Object[] { paramString, localObject }))
      {
        b((String)localObject, paramContext, false);
        return;
      }
    }
    Object localObject = new Intent(paramContext, WebViewActivity.class);
    Bundle localBundle = new Bundle();
    if ((!com.xueqiu.android.base.v.a(paramString)) && (!a(paramString))) {
      localBundle.putString("extra_url_path", a + paramString);
    }
    for (;;)
    {
      ((Intent)localObject).putExtras(localBundle);
      paramContext.startActivity((Intent)localObject);
      return;
      localBundle.putString("extra_url_path", paramString);
    }
  }
  
  public static boolean a(String paramString)
  {
    return (paramString.startsWith("http://danjuanapp.com")) || (paramString.startsWith("http://www.danjuanapp.com")) || (paramString.startsWith("https://danjuanapp.com")) || (paramString.startsWith("https://www.danjuanapp.com"));
  }
  
  private static void b(String paramString, Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, H5Activity.class);
    localIntent.putExtra("extra_url", paramString);
    localIntent.putExtra("extra_is_module", paramBoolean);
    paramContext.startActivity(localIntent);
  }
  
  public static boolean b(String paramString)
  {
    if (com.xueqiu.android.base.v.a(paramString))
    {
      paramString = paramString.split("\\?");
      if (paramString.length > 1)
      {
        paramString = az.c(paramString[1]);
        if ((paramString.containsKey("loginneed")) && ("true".equals(paramString.get("loginneed")))) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static boolean b(final String paramString, final Context paramContext)
  {
    if (paramString != null)
    {
      Object localObject1;
      do
      {
        int i;
        Object localObject3;
        try
        {
          if (paramString.trim().length() == 0) {
            break;
          }
          if ((u.a().d) && (b(paramString)))
          {
            if (!(paramContext instanceof Activity)) {
              break label772;
            }
            t.a((Activity)paramContext, false);
            return true;
          }
          if ((!com.xueqiu.android.base.v.a(paramString)) && (!paramString.matches("/n/\\S+"))) {
            continue;
          }
          localObject2 = paramString.split("\\?")[0];
          i = ((String)localObject2).indexOf('/', 8);
          localObject1 = ((String)localObject2).substring(i + 1);
          localObject3 = a(paramString, paramContext, false);
          if (localObject3 != null)
          {
            paramContext.startActivity((Intent)localObject3);
            return true;
          }
          if (((String)localObject1).matches("^(\\d+)/(cubes|friends|follows|stocks|answers|hot|fund)$"))
          {
            paramString = Pattern.compile("^(\\d+)/(cubes|friends|follows|stocks|answers|hot|fund)$").matcher((CharSequence)localObject1);
            if (!paramString.matches()) {
              break label774;
            }
            final long l = Long.valueOf(paramString.group(1)).longValue();
            paramString = paramString.group(2);
            com.xueqiu.android.base.q.a().b().g(l, new p()
            {
              public final void a(y paramAnonymousy)
              {
                aa.a(paramAnonymousy);
              }
            });
            break label774;
          }
          if (((String)localObject1).equalsIgnoreCase("service/p/cubereport"))
          {
            localObject1 = paramString.split("\\?");
            if (localObject1.length <= 1) {
              break label776;
            }
            localObject1 = az.c(localObject1[1]);
            if (((Map)localObject1).containsKey("symbol")) {
              com.xueqiu.android.base.q.a().b().c(0L, (String)((Map)localObject1).get("symbol"), new p()
              {
                public final void a(y paramAnonymousy)
                {
                  aa.a(paramAnonymousy);
                }
              });
            } else {
              b(paramString, paramContext, false);
            }
          }
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return false;
        }
        if (((String)localObject1).contains("talks/item"))
        {
          localObject1 = paramString.split("/");
          if (localObject1.length <= 1) {
            break label778;
          }
          localObject1 = localObject1[(localObject1.length - 1)];
          localObject2 = com.xueqiu.android.base.q.a().b();
          paramString = new p()
          {
            public final void a(y paramAnonymousy)
            {
              aa.a(paramAnonymousy);
            }
          };
          ((ai)localObject2).g.a((String)localObject1, paramString);
          break label778;
        }
        localObject2 = paramString.substring(((String)localObject2).indexOf("xueqiu.com/") + 11, paramString.length());
        if (((String)localObject2).matches("^[p|P]/([z|Z][h|H]\\d+)/holdings.*"))
        {
          paramString = Pattern.compile("^[p|P]/([z|Z][h|H]\\d+)/holdings.*").matcher((CharSequence)localObject2);
          if (!paramString.matches()) {
            break label780;
          }
          localObject1 = new Intent(paramContext, RebalanceActivity.class);
          ((Intent)localObject1).putExtra("extra_cube_symbol", paramString.group(1));
          ((Intent)localObject1).putExtra("extra_readonly", true);
          localObject2 = new Intent(paramContext, CubeActivity.class);
          ((Intent)localObject2).putExtra("extra_cube_symbol", paramString.group(1));
          ((Intent)localObject2).setFlags(67108864);
          paramContext.startActivities(new Intent[] { localObject2, localObject1 });
          break label780;
        }
        if (f.a().b.find((String)localObject1) != null)
        {
          if (paramString.substring(i + 1).matches("^/?cube/contract-result\\?(.*)"))
          {
            localObject1 = paramString.split("\\?");
            if (localObject1.length <= 1) {
              break label782;
            }
            localObject3 = az.c(localObject1[1]);
            localObject1 = new Intent(paramContext, CubeActivity.class);
            ((Intent)localObject1).putExtra("extra_cube_symbol", (String)((Map)localObject3).get("symbol"));
            ((Intent)localObject1).setFlags(67108864);
            localObject2 = new Intent(paramContext, RebalanceActivity.class);
            ((Intent)localObject2).putExtra("extra_cube_symbol", (String)((Map)localObject3).get("symbol"));
            ((Intent)localObject2).putExtra("extra_readonly", true);
            localObject3 = new Intent(paramContext, H5Activity.class);
            ((Intent)localObject3).putExtra("extra_url", paramString.substring(i + 1));
            paramContext.startActivities(new Intent[] { localObject1, localObject2, localObject3 });
            break label782;
          }
          b(paramString.substring(i + 1), paramContext, true);
          return true;
        }
      } while (!paramString.matches("^.*?\\.(jpg|jpeg|png|JPG|JPEG|PNG)$"));
      Object localObject2 = new Intent(paramContext, ImageActivity.class);
      if ((!paramString.contains(".jpg!")) && (!paramString.contains(".jpeg!")))
      {
        localObject1 = paramString;
        if (!paramString.contains(".png!")) {}
      }
      else
      {
        localObject1 = paramString.substring(0, paramString.lastIndexOf('!'));
      }
      ((Intent)localObject2).putExtra("url", (String)localObject1);
      paramContext.startActivity((Intent)localObject2);
      ((Activity)paramContext).overridePendingTransition(2130968583, 2130968584);
      return true;
    }
    return false;
    label772:
    return false;
    label774:
    return true;
    label776:
    return true;
    label778:
    return true;
    label780:
    return true;
    label782:
    return true;
  }
  
  public static Intent c(String paramString, Context paramContext)
  {
    return a(paramString, paramContext, true);
  }
  
  private static Intent d(String paramString, Context paramContext)
  {
    Object localObject = new Intent(paramContext, InvestmentCalendarActivity.class);
    int i = paramString.indexOf("xueqiu.com/");
    String str = paramString.substring("xueqiu.com/".length() + i, paramString.length());
    if ((str.matches("calendar/\\d+$")) || (str.matches("calendar/\\d+#.*")))
    {
      paramContext = new Intent(paramContext, InvestmentCalendarActivity.class);
      localObject = str.substring(str.lastIndexOf("/") + 1);
      paramString = (String)localObject;
      if (((String)localObject).contains("#"))
      {
        paramString = ((String)localObject).split("#");
        localObject = paramString[1];
      }
    }
    do
    {
      do
      {
        try
        {
          paramContext.putExtra("extra_calendar_date", new SimpleDateFormat("yyyy-MM-dd").parse((String)localObject).getTime());
          paramString = paramString[0];
          paramContext.putExtra("extra_calendar_from_url", true);
          paramContext.putExtra("extra_calendar_id", Long.parseLong(paramString));
          paramString = paramContext;
          return paramString;
        }
        catch (ParseException localParseException)
        {
          for (;;)
          {
            com.xueqiu.android.base.util.v.e("SNBLinkJumpHandler", localParseException.getMessage());
          }
        }
        if ((!str.matches("S/\\w+/calendar$")) && (!str.matches("S/\\w+/calendar#.*"))) {
          break;
        }
        paramContext = new Intent(paramContext, InvestmentCalendarActivity.class);
        paramString = str.substring(str.indexOf("S/") + 2, str.indexOf("/calendar"));
        paramContext.putExtra("extra_calendar_from_url", true);
        paramContext.putExtra("sotkc_symbol_extra", paramString);
        paramString = paramContext;
      } while (!str.contains("calendar#"));
      try
      {
        paramString = str.substring(str.lastIndexOf("#") + 1);
        paramContext.putExtra("extra_calendar_date", new SimpleDateFormat("yyyy-MM-dd").parse(paramString).getTime());
        return paramContext;
      }
      catch (ParseException paramString)
      {
        com.xueqiu.android.base.util.v.e("SNBLinkJumpHandler", paramString.getMessage());
        return paramContext;
      }
      if (str.matches("calendar/\\d+/\\d+.*")) {
        break;
      }
      paramString = localParseException;
    } while (!str.matches("S/\\w+/calendar/\\d+.*"));
    if (str.contains("#")) {}
    for (paramString = str.substring(str.lastIndexOf("/") + 1, str.indexOf("#"));; paramString = str.substring(str.lastIndexOf("/") + 1))
    {
      paramContext = new Intent(paramContext, InvestmentCalEventAddActivity.class);
      paramContext.putExtra("extra_push_event_id", paramString);
      return paramContext;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */