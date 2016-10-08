package com.xueqiu.android.community.a;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import com.d.a.b.c.c;
import com.d.a.b.d;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.RecommendCube;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class at
  extends BaseAdapter
{
  private static final String c = at.class.getSimpleName();
  public List<av> a = new ArrayList();
  public aw b;
  private Context d;
  private f e = f.a();
  private d f;
  
  public at(Context paramContext)
  {
    e locale = n.a();
    locale.b = 2130838024;
    locale.c = 2130838024;
    locale.a = 2130838024;
    locale.q = new c((int)com.xueqiu.android.base.util.ay.a(73.0F));
    this.f = locale.b();
    this.d = paramContext;
  }
  
  public final void a(List<User> paramList, List<RecommendStock> paramList1, List<RecommendCube> paramList2)
  {
    int k = 0;
    int m;
    int i;
    int j;
    if (paramList != null)
    {
      m = paramList.size();
      av localav;
      if (m >= 6)
      {
        i = 0;
        while (i < 6)
        {
          localav = new av(this);
          localav.a = paramList.get(i);
          localav.b = ay.a;
          localav.c = true;
          this.a.add(localav);
          i += 1;
        }
      }
      i = 0;
      for (;;)
      {
        j = m;
        if (i >= m) {
          break;
        }
        localav = new av(this);
        localav.a = paramList.get(i);
        localav.b = ay.a;
        localav.c = true;
        this.a.add(localav);
        i += 1;
      }
      while (j < 6)
      {
        paramList = new av(this);
        paramList.a = null;
        paramList.b = ay.a;
        paramList.c = false;
        this.a.add(paramList);
        j += 1;
      }
    }
    if (paramList1 != null)
    {
      m = paramList1.size();
      if (m >= 6)
      {
        i = k;
        while (i < m)
        {
          paramList = new av(this);
          paramList.a = paramList1.get(i);
          paramList.b = ay.b;
          paramList.c = true;
          this.a.add(paramList);
          i += 1;
        }
      }
      i = 0;
      for (;;)
      {
        j = m;
        if (i >= m) {
          break;
        }
        paramList = new av(this);
        paramList.a = paramList1.get(i);
        paramList.b = ay.b;
        paramList.c = true;
        this.a.add(paramList);
        i += 1;
      }
      while (j < 6)
      {
        paramList = new av(this);
        paramList.a = null;
        paramList.b = ay.b;
        paramList.c = false;
        this.a.add(paramList);
        j += 1;
      }
    }
    if (paramList2 != null)
    {
      paramList = paramList2.iterator();
      while (paramList.hasNext())
      {
        paramList1 = (RecommendCube)paramList.next();
        paramList2 = new av(this);
        paramList2.a = paramList1;
        paramList2.b = ay.c;
        paramList2.c = true;
        this.a.add(paramList2);
      }
    }
  }
  
  public int getCount()
  {
    if (this.a != null) {
      return this.a.size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    if (this.a != null) {
      return (av)this.a.get(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (this.a == null) {
      return super.getItemViewType(paramInt);
    }
    if (((av)this.a.get(paramInt)).b == ay.a) {
      return ay.a.d;
    }
    if (((av)this.a.get(paramInt)).b == ay.b) {
      return ay.b.d;
    }
    if (((av)this.a.get(paramInt)).b == ay.c) {
      return ay.c.d;
    }
    return super.getItemViewType(paramInt);
  }
  
  /* Error */
  public View getView(final int paramInt, View paramView, final android.view.ViewGroup paramViewGroup)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: iload_1
    //   11: invokevirtual 162	com/xueqiu/android/community/a/at:getItemViewType	(I)I
    //   14: istore 10
    //   16: aload_2
    //   17: ifnonnull +724 -> 741
    //   20: iload 10
    //   22: getstatic 117	com/xueqiu/android/community/a/ay:a	Lcom/xueqiu/android/community/a/ay;
    //   25: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   28: if_icmpne +395 -> 423
    //   31: new 164	com/xueqiu/android/community/a/az
    //   34: dup
    //   35: iconst_0
    //   36: invokespecial 167	com/xueqiu/android/community/a/az:<init>	(B)V
    //   39: astore 8
    //   41: aload_0
    //   42: getfield 87	com/xueqiu/android/community/a/at:d	Landroid/content/Context;
    //   45: invokestatic 173	android/view/LayoutInflater:from	(Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   48: ldc -82
    //   50: aload_3
    //   51: iconst_0
    //   52: invokevirtual 178	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    //   55: astore_2
    //   56: aload 8
    //   58: aload_2
    //   59: ldc -77
    //   61: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   64: checkcast 187	android/widget/ImageView
    //   67: putfield 190	com/xueqiu/android/community/a/az:b	Landroid/widget/ImageView;
    //   70: aload 8
    //   72: aload_2
    //   73: ldc -65
    //   75: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   78: checkcast 193	android/widget/TextView
    //   81: putfield 196	com/xueqiu/android/community/a/az:c	Landroid/widget/TextView;
    //   84: aload 8
    //   86: aload_2
    //   87: ldc -59
    //   89: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   92: checkcast 193	android/widget/TextView
    //   95: putfield 199	com/xueqiu/android/community/a/az:d	Landroid/widget/TextView;
    //   98: aload 8
    //   100: aload_2
    //   101: ldc -56
    //   103: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   106: putfield 203	com/xueqiu/android/community/a/az:e	Landroid/view/View;
    //   109: aload 8
    //   111: aload_2
    //   112: ldc -52
    //   114: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   117: checkcast 187	android/widget/ImageView
    //   120: putfield 206	com/xueqiu/android/community/a/az:f	Landroid/widget/ImageView;
    //   123: aload 8
    //   125: aload_2
    //   126: ldc -49
    //   128: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   131: checkcast 209	android/widget/RelativeLayout
    //   134: putfield 212	com/xueqiu/android/community/a/az:a	Landroid/widget/RelativeLayout;
    //   137: aload_2
    //   138: aload 8
    //   140: invokevirtual 216	android/view/View:setTag	(Ljava/lang/Object;)V
    //   143: aconst_null
    //   144: astore_3
    //   145: aconst_null
    //   146: astore 7
    //   148: iload 10
    //   150: getstatic 117	com/xueqiu/android/community/a/ay:a	Lcom/xueqiu/android/community/a/ay;
    //   153: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   156: if_icmpne +834 -> 990
    //   159: getstatic 33	com/xueqiu/android/community/a/at:c	Ljava/lang/String;
    //   162: new 218	java/lang/StringBuilder
    //   165: dup
    //   166: ldc -36
    //   168: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   171: aload_0
    //   172: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   175: iload_1
    //   176: invokeinterface 109 2 0
    //   181: checkcast 102	com/xueqiu/android/community/a/av
    //   184: getfield 112	com/xueqiu/android/community/a/av:a	Ljava/lang/Object;
    //   187: instanceof 225
    //   190: invokevirtual 229	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   193: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   196: invokestatic 237	com/xueqiu/android/base/util/v:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   199: aload_0
    //   200: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   203: iload_1
    //   204: invokeinterface 109 2 0
    //   209: checkcast 102	com/xueqiu/android/community/a/av
    //   212: getfield 112	com/xueqiu/android/community/a/av:a	Ljava/lang/Object;
    //   215: instanceof 225
    //   218: ifeq +203 -> 421
    //   221: aload_0
    //   222: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   225: iload_1
    //   226: invokeinterface 109 2 0
    //   231: checkcast 102	com/xueqiu/android/community/a/av
    //   234: getfield 112	com/xueqiu/android/community/a/av:a	Ljava/lang/Object;
    //   237: checkcast 225	com/xueqiu/android/community/model/User
    //   240: astore_3
    //   241: aload_3
    //   242: ifnull -235 -> 7
    //   245: aload_0
    //   246: getfield 50	com/xueqiu/android/community/a/at:e	Lcom/d/a/b/f;
    //   249: aload_3
    //   250: invokevirtual 240	com/xueqiu/android/community/model/User:getProfileLargeImageUrl	()Ljava/lang/String;
    //   253: aload 8
    //   255: getfield 190	com/xueqiu/android/community/a/az:b	Landroid/widget/ImageView;
    //   258: aload_0
    //   259: getfield 85	com/xueqiu/android/community/a/at:f	Lcom/d/a/b/d;
    //   262: invokevirtual 243	com/d/a/b/f:a	(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V
    //   265: aload 8
    //   267: getfield 196	com/xueqiu/android/community/a/az:c	Landroid/widget/TextView;
    //   270: aload_3
    //   271: invokevirtual 246	com/xueqiu/android/community/model/User:getScreenName	()Ljava/lang/String;
    //   274: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   277: aload 8
    //   279: getfield 199	com/xueqiu/android/community/a/az:d	Landroid/widget/TextView;
    //   282: aload_3
    //   283: invokevirtual 253	com/xueqiu/android/community/model/User:getRecommendReason	()Ljava/lang/String;
    //   286: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   289: aload_0
    //   290: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   293: iload_1
    //   294: invokeinterface 109 2 0
    //   299: checkcast 102	com/xueqiu/android/community/a/av
    //   302: getfield 122	com/xueqiu/android/community/a/av:c	Z
    //   305: ifeq +520 -> 825
    //   308: aload 8
    //   310: getfield 206	com/xueqiu/android/community/a/az:f	Landroid/widget/ImageView;
    //   313: iconst_0
    //   314: invokevirtual 256	android/widget/ImageView:setVisibility	(I)V
    //   317: aload 8
    //   319: getfield 212	com/xueqiu/android/community/a/az:a	Landroid/widget/RelativeLayout;
    //   322: new 6	com/xueqiu/android/community/a/at$1
    //   325: dup
    //   326: aload_0
    //   327: iload_1
    //   328: aload_3
    //   329: invokespecial 259	com/xueqiu/android/community/a/at$1:<init>	(Lcom/xueqiu/android/community/a/at;ILcom/xueqiu/android/community/model/User;)V
    //   332: invokevirtual 263	android/widget/RelativeLayout:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   335: iload_1
    //   336: iconst_3
    //   337: irem
    //   338: ifne +535 -> 873
    //   341: aload 8
    //   343: getfield 203	com/xueqiu/android/community/a/az:e	Landroid/view/View;
    //   346: invokevirtual 267	android/view/View:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   349: checkcast 269	android/widget/RelativeLayout$LayoutParams
    //   352: astore_3
    //   353: ldc_w 270
    //   356: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   359: fstore 6
    //   361: fload 6
    //   363: f2i
    //   364: istore 10
    //   366: aload_3
    //   367: iload 10
    //   369: putfield 273	android/widget/RelativeLayout$LayoutParams:leftMargin	I
    //   372: aload 8
    //   374: getfield 203	com/xueqiu/android/community/a/az:e	Landroid/view/View;
    //   377: aload_3
    //   378: invokevirtual 277	android/view/View:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   381: iload_1
    //   382: iconst_3
    //   383: idiv
    //   384: ifgt +37 -> 421
    //   387: aload 8
    //   389: getfield 203	com/xueqiu/android/community/a/az:e	Landroid/view/View;
    //   392: bipush 8
    //   394: invokevirtual 278	android/view/View:setVisibility	(I)V
    //   397: ldc_w 270
    //   400: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   403: fstore 6
    //   405: fload 6
    //   407: f2i
    //   408: istore_1
    //   409: aload 8
    //   411: getfield 212	com/xueqiu/android/community/a/az:a	Landroid/widget/RelativeLayout;
    //   414: iconst_0
    //   415: iload_1
    //   416: iconst_0
    //   417: iconst_0
    //   418: invokevirtual 282	android/widget/RelativeLayout:setPadding	(IIII)V
    //   421: aload_2
    //   422: areturn
    //   423: iload 10
    //   425: getstatic 127	com/xueqiu/android/community/a/ay:b	Lcom/xueqiu/android/community/a/ay;
    //   428: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   431: if_icmpne +161 -> 592
    //   434: new 284	com/xueqiu/android/community/a/ax
    //   437: dup
    //   438: iconst_0
    //   439: invokespecial 285	com/xueqiu/android/community/a/ax:<init>	(B)V
    //   442: astore 7
    //   444: aload_0
    //   445: getfield 87	com/xueqiu/android/community/a/at:d	Landroid/content/Context;
    //   448: invokestatic 173	android/view/LayoutInflater:from	(Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   451: ldc_w 286
    //   454: aload_3
    //   455: iconst_0
    //   456: invokevirtual 178	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    //   459: astore_2
    //   460: aload 7
    //   462: aload_2
    //   463: ldc_w 287
    //   466: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   469: checkcast 289	android/widget/LinearLayout
    //   472: putfield 292	com/xueqiu/android/community/a/ax:b	Landroid/widget/LinearLayout;
    //   475: aload 7
    //   477: aload_2
    //   478: ldc_w 293
    //   481: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   484: checkcast 193	android/widget/TextView
    //   487: putfield 294	com/xueqiu/android/community/a/ax:c	Landroid/widget/TextView;
    //   490: aload 7
    //   492: aload_2
    //   493: ldc_w 295
    //   496: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   499: checkcast 193	android/widget/TextView
    //   502: putfield 296	com/xueqiu/android/community/a/ax:d	Landroid/widget/TextView;
    //   505: aload 7
    //   507: aload_2
    //   508: ldc -65
    //   510: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   513: checkcast 193	android/widget/TextView
    //   516: putfield 298	com/xueqiu/android/community/a/ax:e	Landroid/widget/TextView;
    //   519: aload 7
    //   521: aload_2
    //   522: ldc_w 299
    //   525: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   528: checkcast 193	android/widget/TextView
    //   531: putfield 301	com/xueqiu/android/community/a/ax:f	Landroid/widget/TextView;
    //   534: aload 7
    //   536: aload_2
    //   537: ldc -56
    //   539: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   542: putfield 304	com/xueqiu/android/community/a/ax:g	Landroid/view/View;
    //   545: aload 7
    //   547: aload_2
    //   548: ldc -52
    //   550: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   553: checkcast 187	android/widget/ImageView
    //   556: putfield 307	com/xueqiu/android/community/a/ax:h	Landroid/widget/ImageView;
    //   559: aload 7
    //   561: aload_2
    //   562: ldc_w 308
    //   565: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   568: checkcast 209	android/widget/RelativeLayout
    //   571: putfield 309	com/xueqiu/android/community/a/ax:a	Landroid/widget/RelativeLayout;
    //   574: aload_2
    //   575: aload 7
    //   577: invokevirtual 216	android/view/View:setTag	(Ljava/lang/Object;)V
    //   580: aload 7
    //   582: astore_3
    //   583: aconst_null
    //   584: astore 8
    //   586: aconst_null
    //   587: astore 7
    //   589: goto -441 -> 148
    //   592: iload 10
    //   594: getstatic 145	com/xueqiu/android/community/a/ay:c	Lcom/xueqiu/android/community/a/ay;
    //   597: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   600: if_icmpne +1237 -> 1837
    //   603: new 311	com/xueqiu/android/community/a/au
    //   606: dup
    //   607: iconst_0
    //   608: invokespecial 312	com/xueqiu/android/community/a/au:<init>	(B)V
    //   611: astore 7
    //   613: aload_0
    //   614: getfield 87	com/xueqiu/android/community/a/at:d	Landroid/content/Context;
    //   617: invokestatic 173	android/view/LayoutInflater:from	(Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   620: ldc_w 313
    //   623: aload_3
    //   624: iconst_0
    //   625: invokevirtual 178	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    //   628: astore_2
    //   629: aload 7
    //   631: aload_2
    //   632: ldc_w 314
    //   635: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   638: checkcast 289	android/widget/LinearLayout
    //   641: putfield 315	com/xueqiu/android/community/a/au:b	Landroid/widget/LinearLayout;
    //   644: aload 7
    //   646: aload_2
    //   647: ldc_w 316
    //   650: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   653: checkcast 193	android/widget/TextView
    //   656: putfield 317	com/xueqiu/android/community/a/au:c	Landroid/widget/TextView;
    //   659: aload 7
    //   661: aload_2
    //   662: ldc -65
    //   664: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   667: checkcast 193	android/widget/TextView
    //   670: putfield 318	com/xueqiu/android/community/a/au:d	Landroid/widget/TextView;
    //   673: aload 7
    //   675: aload_2
    //   676: ldc -59
    //   678: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   681: checkcast 193	android/widget/TextView
    //   684: putfield 319	com/xueqiu/android/community/a/au:e	Landroid/widget/TextView;
    //   687: aload 7
    //   689: aload_2
    //   690: ldc -56
    //   692: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   695: putfield 321	com/xueqiu/android/community/a/au:f	Landroid/view/View;
    //   698: aload 7
    //   700: aload_2
    //   701: ldc -52
    //   703: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   706: checkcast 187	android/widget/ImageView
    //   709: putfield 323	com/xueqiu/android/community/a/au:g	Landroid/widget/ImageView;
    //   712: aload 7
    //   714: aload_2
    //   715: ldc_w 324
    //   718: invokevirtual 185	android/view/View:findViewById	(I)Landroid/view/View;
    //   721: checkcast 209	android/widget/RelativeLayout
    //   724: putfield 325	com/xueqiu/android/community/a/au:a	Landroid/widget/RelativeLayout;
    //   727: aload_2
    //   728: aload 7
    //   730: invokevirtual 216	android/view/View:setTag	(Ljava/lang/Object;)V
    //   733: aconst_null
    //   734: astore_3
    //   735: aconst_null
    //   736: astore 8
    //   738: goto -590 -> 148
    //   741: iload 10
    //   743: getstatic 117	com/xueqiu/android/community/a/ay:a	Lcom/xueqiu/android/community/a/ay;
    //   746: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   749: if_icmpne +20 -> 769
    //   752: aload_2
    //   753: invokevirtual 328	android/view/View:getTag	()Ljava/lang/Object;
    //   756: checkcast 164	com/xueqiu/android/community/a/az
    //   759: astore 8
    //   761: aconst_null
    //   762: astore 7
    //   764: aconst_null
    //   765: astore_3
    //   766: goto -618 -> 148
    //   769: iload 10
    //   771: getstatic 127	com/xueqiu/android/community/a/ay:b	Lcom/xueqiu/android/community/a/ay;
    //   774: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   777: if_icmpne +20 -> 797
    //   780: aload_2
    //   781: invokevirtual 328	android/view/View:getTag	()Ljava/lang/Object;
    //   784: checkcast 284	com/xueqiu/android/community/a/ax
    //   787: astore_3
    //   788: aconst_null
    //   789: astore 7
    //   791: aconst_null
    //   792: astore 8
    //   794: goto -646 -> 148
    //   797: iload 10
    //   799: getstatic 145	com/xueqiu/android/community/a/ay:c	Lcom/xueqiu/android/community/a/ay;
    //   802: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   805: if_icmpne +1032 -> 1837
    //   808: aload_2
    //   809: invokevirtual 328	android/view/View:getTag	()Ljava/lang/Object;
    //   812: checkcast 311	com/xueqiu/android/community/a/au
    //   815: astore 7
    //   817: aconst_null
    //   818: astore_3
    //   819: aconst_null
    //   820: astore 8
    //   822: goto -674 -> 148
    //   825: aload 8
    //   827: getfield 206	com/xueqiu/android/community/a/az:f	Landroid/widget/ImageView;
    //   830: bipush 8
    //   832: invokevirtual 256	android/widget/ImageView:setVisibility	(I)V
    //   835: goto -518 -> 317
    //   838: astore 7
    //   840: getstatic 33	com/xueqiu/android/community/a/at:c	Ljava/lang/String;
    //   843: new 218	java/lang/StringBuilder
    //   846: dup
    //   847: ldc_w 330
    //   850: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   853: aload 7
    //   855: invokevirtual 333	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   858: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   861: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   864: invokestatic 338	com/xueqiu/android/base/util/v:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   867: iconst_0
    //   868: istore 10
    //   870: goto -504 -> 366
    //   873: iload_1
    //   874: iconst_3
    //   875: irem
    //   876: iconst_2
    //   877: if_icmpne -496 -> 381
    //   880: aload 8
    //   882: getfield 203	com/xueqiu/android/community/a/az:e	Landroid/view/View;
    //   885: invokevirtual 267	android/view/View:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   888: checkcast 269	android/widget/RelativeLayout$LayoutParams
    //   891: astore_3
    //   892: ldc_w 270
    //   895: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   898: fstore 6
    //   900: fload 6
    //   902: f2i
    //   903: istore 10
    //   905: aload_3
    //   906: iload 10
    //   908: putfield 341	android/widget/RelativeLayout$LayoutParams:rightMargin	I
    //   911: aload 8
    //   913: getfield 203	com/xueqiu/android/community/a/az:e	Landroid/view/View;
    //   916: aload_3
    //   917: invokevirtual 277	android/view/View:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   920: goto -539 -> 381
    //   923: astore 7
    //   925: getstatic 33	com/xueqiu/android/community/a/at:c	Ljava/lang/String;
    //   928: new 218	java/lang/StringBuilder
    //   931: dup
    //   932: ldc_w 330
    //   935: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   938: aload 7
    //   940: invokevirtual 333	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   943: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   946: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   949: invokestatic 338	com/xueqiu/android/base/util/v:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   952: iconst_0
    //   953: istore 10
    //   955: goto -50 -> 905
    //   958: astore_3
    //   959: getstatic 33	com/xueqiu/android/community/a/at:c	Ljava/lang/String;
    //   962: new 218	java/lang/StringBuilder
    //   965: dup
    //   966: ldc_w 330
    //   969: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   972: aload_3
    //   973: invokevirtual 333	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   976: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   979: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   982: invokestatic 338	com/xueqiu/android/base/util/v:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   985: iconst_0
    //   986: istore_1
    //   987: goto -578 -> 409
    //   990: iload 10
    //   992: getstatic 127	com/xueqiu/android/community/a/ay:b	Lcom/xueqiu/android/community/a/ay;
    //   995: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   998: if_icmpne +543 -> 1541
    //   1001: aload_0
    //   1002: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   1005: iload_1
    //   1006: invokeinterface 109 2 0
    //   1011: checkcast 102	com/xueqiu/android/community/a/av
    //   1014: getfield 112	com/xueqiu/android/community/a/av:a	Ljava/lang/Object;
    //   1017: instanceof 343
    //   1020: ifeq -599 -> 421
    //   1023: aload_0
    //   1024: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   1027: iload_1
    //   1028: invokeinterface 109 2 0
    //   1033: checkcast 102	com/xueqiu/android/community/a/av
    //   1036: getfield 112	com/xueqiu/android/community/a/av:a	Ljava/lang/Object;
    //   1039: checkcast 343	com/xueqiu/android/community/model/RecommendStock
    //   1042: astore 8
    //   1044: aload 8
    //   1046: ifnull -1039 -> 7
    //   1049: aload 8
    //   1051: invokevirtual 347	com/xueqiu/android/community/model/RecommendStock:getCurrent	()D
    //   1054: dstore 4
    //   1056: dload 4
    //   1058: invokestatic 353	java/lang/String:valueOf	(D)Ljava/lang/String;
    //   1061: astore 7
    //   1063: aload_3
    //   1064: getfield 294	com/xueqiu/android/community/a/ax:c	Landroid/widget/TextView;
    //   1067: aload 7
    //   1069: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1072: aload_3
    //   1073: getfield 296	com/xueqiu/android/community/a/ax:d	Landroid/widget/TextView;
    //   1076: invokestatic 359	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   1079: ldc_w 361
    //   1082: iconst_2
    //   1083: anewarray 363	java/lang/Object
    //   1086: dup
    //   1087: iconst_0
    //   1088: aload 8
    //   1090: invokevirtual 366	com/xueqiu/android/community/model/RecommendStock:getChange	()D
    //   1093: invokestatic 371	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   1096: aastore
    //   1097: dup
    //   1098: iconst_1
    //   1099: aload 8
    //   1101: invokevirtual 374	com/xueqiu/android/community/model/RecommendStock:getPercentage	()D
    //   1104: invokestatic 371	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   1107: aastore
    //   1108: invokestatic 378	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1111: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1114: aload_3
    //   1115: getfield 298	com/xueqiu/android/community/a/ax:e	Landroid/widget/TextView;
    //   1118: aload 8
    //   1120: invokevirtual 381	com/xueqiu/android/community/model/RecommendStock:getName	()Ljava/lang/String;
    //   1123: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1126: aload_3
    //   1127: getfield 301	com/xueqiu/android/community/a/ax:f	Landroid/widget/TextView;
    //   1130: aload 8
    //   1132: invokevirtual 384	com/xueqiu/android/community/model/RecommendStock:getSymbol	()Ljava/lang/String;
    //   1135: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1138: aload_0
    //   1139: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   1142: iload_1
    //   1143: invokeinterface 109 2 0
    //   1148: checkcast 102	com/xueqiu/android/community/a/av
    //   1151: getfield 122	com/xueqiu/android/community/a/av:c	Z
    //   1154: ifeq +178 -> 1332
    //   1157: aload_3
    //   1158: getfield 307	com/xueqiu/android/community/a/ax:h	Landroid/widget/ImageView;
    //   1161: iconst_0
    //   1162: invokevirtual 256	android/widget/ImageView:setVisibility	(I)V
    //   1165: aload_3
    //   1166: getfield 309	com/xueqiu/android/community/a/ax:a	Landroid/widget/RelativeLayout;
    //   1169: new 8	com/xueqiu/android/community/a/at$2
    //   1172: dup
    //   1173: aload_0
    //   1174: iload_1
    //   1175: aload 8
    //   1177: invokespecial 387	com/xueqiu/android/community/a/at$2:<init>	(Lcom/xueqiu/android/community/a/at;ILcom/xueqiu/android/community/model/RecommendStock;)V
    //   1180: invokevirtual 263	android/widget/RelativeLayout:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1183: iload_1
    //   1184: iconst_3
    //   1185: irem
    //   1186: ifne +193 -> 1379
    //   1189: aload_3
    //   1190: getfield 304	com/xueqiu/android/community/a/ax:g	Landroid/view/View;
    //   1193: invokevirtual 267	android/view/View:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   1196: checkcast 269	android/widget/RelativeLayout$LayoutParams
    //   1199: astore 7
    //   1201: ldc_w 270
    //   1204: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   1207: fstore 6
    //   1209: fload 6
    //   1211: f2i
    //   1212: istore 10
    //   1214: aload 7
    //   1216: iload 10
    //   1218: putfield 273	android/widget/RelativeLayout$LayoutParams:leftMargin	I
    //   1221: aload_3
    //   1222: getfield 304	com/xueqiu/android/community/a/ax:g	Landroid/view/View;
    //   1225: aload 7
    //   1227: invokevirtual 277	android/view/View:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   1230: iload_1
    //   1231: iconst_3
    //   1232: idiv
    //   1233: iconst_2
    //   1234: if_icmpne +35 -> 1269
    //   1237: aload_3
    //   1238: getfield 304	com/xueqiu/android/community/a/ax:g	Landroid/view/View;
    //   1241: bipush 8
    //   1243: invokevirtual 278	android/view/View:setVisibility	(I)V
    //   1246: ldc_w 270
    //   1249: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   1252: fstore 6
    //   1254: fload 6
    //   1256: f2i
    //   1257: istore_1
    //   1258: aload_3
    //   1259: getfield 309	com/xueqiu/android/community/a/ax:a	Landroid/widget/RelativeLayout;
    //   1262: iconst_0
    //   1263: iload_1
    //   1264: iconst_0
    //   1265: iconst_0
    //   1266: invokevirtual 282	android/widget/RelativeLayout:setPadding	(IIII)V
    //   1269: aload 8
    //   1271: invokevirtual 366	com/xueqiu/android/community/model/RecommendStock:getChange	()D
    //   1274: dconst_0
    //   1275: dcmpl
    //   1276: ifle +223 -> 1499
    //   1279: aload_3
    //   1280: getfield 292	com/xueqiu/android/community/a/ax:b	Landroid/widget/LinearLayout;
    //   1283: ldc_w 388
    //   1286: invokestatic 392	com/xueqiu/android/base/r:a	(I)I
    //   1289: invokevirtual 395	android/widget/LinearLayout:setBackgroundColor	(I)V
    //   1292: goto -871 -> 421
    //   1295: astore 9
    //   1297: ldc_w 397
    //   1300: astore 7
    //   1302: getstatic 33	com/xueqiu/android/community/a/at:c	Ljava/lang/String;
    //   1305: new 218	java/lang/StringBuilder
    //   1308: dup
    //   1309: ldc_w 399
    //   1312: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1315: aload 9
    //   1317: invokevirtual 333	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1320: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1323: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1326: invokestatic 338	com/xueqiu/android/base/util/v:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1329: goto -266 -> 1063
    //   1332: aload_3
    //   1333: getfield 307	com/xueqiu/android/community/a/ax:h	Landroid/widget/ImageView;
    //   1336: bipush 8
    //   1338: invokevirtual 256	android/widget/ImageView:setVisibility	(I)V
    //   1341: goto -176 -> 1165
    //   1344: astore 9
    //   1346: getstatic 33	com/xueqiu/android/community/a/at:c	Ljava/lang/String;
    //   1349: new 218	java/lang/StringBuilder
    //   1352: dup
    //   1353: ldc_w 330
    //   1356: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1359: aload 9
    //   1361: invokevirtual 333	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1364: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1367: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1370: invokestatic 338	com/xueqiu/android/base/util/v:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1373: iconst_0
    //   1374: istore 10
    //   1376: goto -162 -> 1214
    //   1379: iload_1
    //   1380: iconst_3
    //   1381: irem
    //   1382: iconst_2
    //   1383: if_icmpne -153 -> 1230
    //   1386: aload_3
    //   1387: getfield 304	com/xueqiu/android/community/a/ax:g	Landroid/view/View;
    //   1390: invokevirtual 267	android/view/View:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   1393: checkcast 269	android/widget/RelativeLayout$LayoutParams
    //   1396: astore 7
    //   1398: ldc_w 270
    //   1401: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   1404: fstore 6
    //   1406: fload 6
    //   1408: f2i
    //   1409: istore 10
    //   1411: aload 7
    //   1413: iload 10
    //   1415: putfield 341	android/widget/RelativeLayout$LayoutParams:rightMargin	I
    //   1418: aload_3
    //   1419: getfield 304	com/xueqiu/android/community/a/ax:g	Landroid/view/View;
    //   1422: aload 7
    //   1424: invokevirtual 277	android/view/View:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   1427: goto -197 -> 1230
    //   1430: astore 9
    //   1432: getstatic 33	com/xueqiu/android/community/a/at:c	Ljava/lang/String;
    //   1435: new 218	java/lang/StringBuilder
    //   1438: dup
    //   1439: ldc_w 330
    //   1442: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1445: aload 9
    //   1447: invokevirtual 333	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1450: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1453: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1456: invokestatic 338	com/xueqiu/android/base/util/v:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1459: iconst_0
    //   1460: istore 10
    //   1462: goto -51 -> 1411
    //   1465: astore 7
    //   1467: getstatic 33	com/xueqiu/android/community/a/at:c	Ljava/lang/String;
    //   1470: new 218	java/lang/StringBuilder
    //   1473: dup
    //   1474: ldc_w 330
    //   1477: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1480: aload 7
    //   1482: invokevirtual 333	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1485: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1488: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1491: invokestatic 338	com/xueqiu/android/base/util/v:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1494: iconst_0
    //   1495: istore_1
    //   1496: goto -238 -> 1258
    //   1499: aload 8
    //   1501: invokevirtual 366	com/xueqiu/android/community/model/RecommendStock:getChange	()D
    //   1504: dconst_0
    //   1505: dcmpg
    //   1506: ifge +19 -> 1525
    //   1509: aload_3
    //   1510: getfield 292	com/xueqiu/android/community/a/ax:b	Landroid/widget/LinearLayout;
    //   1513: ldc_w 400
    //   1516: invokestatic 392	com/xueqiu/android/base/r:a	(I)I
    //   1519: invokevirtual 395	android/widget/LinearLayout:setBackgroundColor	(I)V
    //   1522: goto -1101 -> 421
    //   1525: aload_3
    //   1526: getfield 292	com/xueqiu/android/community/a/ax:b	Landroid/widget/LinearLayout;
    //   1529: ldc_w 401
    //   1532: invokestatic 392	com/xueqiu/android/base/r:a	(I)I
    //   1535: invokevirtual 395	android/widget/LinearLayout:setBackgroundColor	(I)V
    //   1538: goto -1117 -> 421
    //   1541: iload 10
    //   1543: getstatic 145	com/xueqiu/android/community/a/ay:c	Lcom/xueqiu/android/community/a/ay;
    //   1546: getfield 157	com/xueqiu/android/community/a/ay:d	I
    //   1549: if_icmpne -1128 -> 421
    //   1552: aload_0
    //   1553: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   1556: iload_1
    //   1557: invokeinterface 109 2 0
    //   1562: checkcast 102	com/xueqiu/android/community/a/av
    //   1565: getfield 112	com/xueqiu/android/community/a/av:a	Ljava/lang/Object;
    //   1568: instanceof 143
    //   1571: ifeq -1150 -> 421
    //   1574: aload_0
    //   1575: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   1578: iload_1
    //   1579: invokeinterface 109 2 0
    //   1584: checkcast 102	com/xueqiu/android/community/a/av
    //   1587: getfield 112	com/xueqiu/android/community/a/av:a	Ljava/lang/Object;
    //   1590: checkcast 143	com/xueqiu/android/cube/model/RecommendCube
    //   1593: astore_3
    //   1594: aload_3
    //   1595: ifnull -1588 -> 7
    //   1598: aload 7
    //   1600: getfield 317	com/xueqiu/android/community/a/au:c	Landroid/widget/TextView;
    //   1603: invokestatic 359	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   1606: ldc_w 403
    //   1609: iconst_1
    //   1610: anewarray 363	java/lang/Object
    //   1613: dup
    //   1614: iconst_0
    //   1615: aload_3
    //   1616: invokevirtual 407	com/xueqiu/android/cube/model/RecommendCube:getCube	()Lcom/xueqiu/android/cube/model/Cube;
    //   1619: invokevirtual 413	com/xueqiu/android/cube/model/Cube:getTotalGain	()Ljava/lang/Double;
    //   1622: aastore
    //   1623: invokestatic 378	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1626: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1629: aload 7
    //   1631: getfield 318	com/xueqiu/android/community/a/au:d	Landroid/widget/TextView;
    //   1634: aload_3
    //   1635: invokevirtual 407	com/xueqiu/android/cube/model/RecommendCube:getCube	()Lcom/xueqiu/android/cube/model/Cube;
    //   1638: invokevirtual 414	com/xueqiu/android/cube/model/Cube:getName	()Ljava/lang/String;
    //   1641: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1644: aload 7
    //   1646: getfield 319	com/xueqiu/android/community/a/au:e	Landroid/widget/TextView;
    //   1649: new 218	java/lang/StringBuilder
    //   1652: dup
    //   1653: ldc_w 416
    //   1656: invokespecial 223	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1659: aload_3
    //   1660: invokevirtual 420	com/xueqiu/android/cube/model/RecommendCube:getOwner	()Lcom/xueqiu/android/community/model/User;
    //   1663: invokevirtual 246	com/xueqiu/android/community/model/User:getScreenName	()Ljava/lang/String;
    //   1666: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1669: ldc_w 422
    //   1672: invokevirtual 336	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1675: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1678: invokevirtual 250	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1681: new 424	android/graphics/drawable/ShapeDrawable
    //   1684: dup
    //   1685: invokespecial 425	android/graphics/drawable/ShapeDrawable:<init>	()V
    //   1688: astore 8
    //   1690: aload 8
    //   1692: iconst_0
    //   1693: iconst_0
    //   1694: ldc_w 426
    //   1697: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   1700: f2i
    //   1701: ldc_w 426
    //   1704: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   1707: f2i
    //   1708: invokevirtual 429	android/graphics/drawable/ShapeDrawable:setBounds	(IIII)V
    //   1711: new 431	android/graphics/drawable/shapes/OvalShape
    //   1714: dup
    //   1715: invokespecial 432	android/graphics/drawable/shapes/OvalShape:<init>	()V
    //   1718: astore 9
    //   1720: aload 9
    //   1722: ldc_w 426
    //   1725: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   1728: ldc_w 426
    //   1731: invokestatic 73	com/xueqiu/android/base/util/ay:a	(F)F
    //   1734: invokevirtual 438	android/graphics/drawable/shapes/Shape:resize	(FF)V
    //   1737: aload 8
    //   1739: invokevirtual 442	android/graphics/drawable/ShapeDrawable:getPaint	()Landroid/graphics/Paint;
    //   1742: aload_3
    //   1743: invokevirtual 407	com/xueqiu/android/cube/model/RecommendCube:getCube	()Lcom/xueqiu/android/cube/model/Cube;
    //   1746: invokevirtual 446	com/xueqiu/android/cube/model/Cube:getStyle	()Lcom/xueqiu/android/cube/model/Style;
    //   1749: invokevirtual 451	com/xueqiu/android/cube/model/Style:getColor0	()Ljava/lang/String;
    //   1752: invokestatic 457	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1755: invokevirtual 462	android/graphics/Paint:setColor	(I)V
    //   1758: aload 8
    //   1760: aload 9
    //   1762: invokevirtual 466	android/graphics/drawable/ShapeDrawable:setShape	(Landroid/graphics/drawable/shapes/Shape;)V
    //   1765: aload 7
    //   1767: getfield 315	com/xueqiu/android/community/a/au:b	Landroid/widget/LinearLayout;
    //   1770: aload 8
    //   1772: invokevirtual 470	android/widget/LinearLayout:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   1775: aload_0
    //   1776: getfield 43	com/xueqiu/android/community/a/at:a	Ljava/util/List;
    //   1779: iload_1
    //   1780: invokeinterface 109 2 0
    //   1785: checkcast 102	com/xueqiu/android/community/a/av
    //   1788: getfield 122	com/xueqiu/android/community/a/av:c	Z
    //   1791: ifeq +33 -> 1824
    //   1794: aload 7
    //   1796: getfield 323	com/xueqiu/android/community/a/au:g	Landroid/widget/ImageView;
    //   1799: iconst_0
    //   1800: invokevirtual 256	android/widget/ImageView:setVisibility	(I)V
    //   1803: aload 7
    //   1805: getfield 325	com/xueqiu/android/community/a/au:a	Landroid/widget/RelativeLayout;
    //   1808: new 10	com/xueqiu/android/community/a/at$3
    //   1811: dup
    //   1812: aload_0
    //   1813: iload_1
    //   1814: aload_3
    //   1815: invokespecial 473	com/xueqiu/android/community/a/at$3:<init>	(Lcom/xueqiu/android/community/a/at;ILcom/xueqiu/android/cube/model/RecommendCube;)V
    //   1818: invokevirtual 263	android/widget/RelativeLayout:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1821: goto -1400 -> 421
    //   1824: aload 7
    //   1826: getfield 323	com/xueqiu/android/community/a/au:g	Landroid/widget/ImageView;
    //   1829: bipush 8
    //   1831: invokevirtual 256	android/widget/ImageView:setVisibility	(I)V
    //   1834: goto -31 -> 1803
    //   1837: aconst_null
    //   1838: astore 7
    //   1840: aconst_null
    //   1841: astore_3
    //   1842: aconst_null
    //   1843: astore 8
    //   1845: goto -1697 -> 148
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1848	0	this	at
    //   0	1848	1	paramInt	int
    //   0	1848	2	paramView	View
    //   0	1848	3	paramViewGroup	android.view.ViewGroup
    //   1054	3	4	d1	double
    //   359	1048	6	f1	float
    //   146	670	7	localObject1	Object
    //   838	16	7	localException1	Exception
    //   923	16	7	localException2	Exception
    //   1061	362	7	localObject2	Object
    //   1465	360	7	localException3	Exception
    //   1838	1	7	localObject3	Object
    //   39	1805	8	localObject4	Object
    //   1295	21	9	localException4	Exception
    //   1344	16	9	localException5	Exception
    //   1430	16	9	localException6	Exception
    //   1718	43	9	localOvalShape	android.graphics.drawable.shapes.OvalShape
    //   14	1536	10	i	int
    // Exception table:
    //   from	to	target	type
    //   353	361	838	java/lang/Exception
    //   892	900	923	java/lang/Exception
    //   397	405	958	java/lang/Exception
    //   1049	1056	1295	java/lang/Exception
    //   1201	1209	1344	java/lang/Exception
    //   1398	1406	1430	java/lang/Exception
    //   1246	1254	1465	java/lang/Exception
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */