.class public Lcom/xueqiu/android/stock/StockFollowersActivity;
.super Lcom/xueqiu/android/common/b;
.source "StockFollowersActivity.java"


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private p:Lorg/json/JSONObject;

.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Lcom/xueqiu/android/community/model/User;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 324
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    const v1, 0x7f030082

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 326
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 329
    :try_start_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 333
    :goto_0
    const v0, 0x7f0e01f8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const v0, 0x7f0e0210

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 336
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 337
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v3

    .line 2392
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    :cond_0
    :goto_1
    const v0, 0x7f0e01f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 347
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/xueqiu/android/community/a/ba;->a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 356
    if-nez v0, :cond_1

    .line 357
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 358
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_1
    :goto_3
    :try_start_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 368
    :goto_4
    const v0, 0x7f0e0209

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    const v0, 0x7f0e01d1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 372
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserVerifyType;->iconResId()I

    move-result v1

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    :goto_5
    new-instance v0, Lcom/xueqiu/android/stock/StockFollowersActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/stock/StockFollowersActivity$8;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-object v2

    .line 331
    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 2395
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v4

    .line 2396
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v5

    .line 2397
    new-instance v6, Lcom/xueqiu/android/stock/StockFollowersActivity$9;

    invoke-direct {v6, p0, v3}, Lcom/xueqiu/android/stock/StockFollowersActivity$9;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Lcom/xueqiu/android/community/model/User$Gender;)V

    invoke-virtual {v5, v1, v0, v4, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_1

    .line 339
    :cond_3
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v1

    sget-object v3, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v1, v3, :cond_4

    .line 340
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 342
    :cond_4
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 351
    :cond_5
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 360
    :cond_6
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 366
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_4

    .line 376
    :cond_7
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockFollowersActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockFollowersActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->j()V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/StockFollowersActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 317
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 318
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/StockFollowersActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/StockFollowersActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/StockFollowersActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/StockFollowersActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 16

    .prologue
    const/4 v7, 0x1

    const/4 v15, 0x2

    const/4 v4, 0x0

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    .line 98
    const v1, 0x7f0e0196

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    .line 2111
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2112
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v3, Lcom/xueqiu/android/common/model/parser/UserParser;

    invoke-direct {v3}, Lcom/xueqiu/android/common/model/parser/UserParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    const-string v3, "myusers"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2113
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v3, Lcom/xueqiu/android/common/model/parser/UserParser;

    invoke-direct {v3}, Lcom/xueqiu/android/common/model/parser/UserParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    const-string v3, "analystusers"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2116
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v3, Lcom/xueqiu/android/common/model/parser/UserParser;

    invoke-direct {v3}, Lcom/xueqiu/android/common/model/parser/UserParser;-><init>()V

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2119
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v3, Lcom/xueqiu/android/message/model/IMGroup$Parser;

    invoke-direct {v3}, Lcom/xueqiu/android/message/model/IMGroup$Parser;-><init>()V

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "totalcount"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 2125
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2127
    const v1, 0x7f0e0197

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2128
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2130
    const v2, 0x7f0e0198

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2131
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2132
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    move v3, v4

    .line 2135
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    if-ge v3, v15, :cond_1

    .line 2136
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/model/User;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/StockFollowersActivity;->a(Lcom/xueqiu/android/community/model/User;)Landroid/view/View;

    move-result-object v2

    .line 2137
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2138
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->m()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2135
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 2141
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_2

    .line 2142
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->n()Landroid/view/View;

    move-result-object v2

    .line 2143
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2144
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->m()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2145
    new-instance v1, Lcom/xueqiu/android/stock/StockFollowersActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5}, Lcom/xueqiu/android/stock/StockFollowersActivity$2;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2158
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2160
    const v1, 0x7f0e0199

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2161
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2163
    const v2, 0x7f0e019a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2164
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 2165
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_3
    move v3, v4

    .line 2167
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    if-ge v3, v15, :cond_4

    .line 2168
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/model/User;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/StockFollowersActivity;->a(Lcom/xueqiu/android/community/model/User;)Landroid/view/View;

    move-result-object v2

    .line 2169
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2170
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->m()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2167
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 2173
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_5

    .line 2174
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->n()Landroid/view/View;

    move-result-object v2

    .line 2175
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2176
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->m()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2177
    new-instance v1, Lcom/xueqiu/android/stock/StockFollowersActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6}, Lcom/xueqiu/android/stock/StockFollowersActivity$3;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2188
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 2190
    const v1, 0x7f0e019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2191
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2193
    const v2, 0x7f0e019e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2194
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 2195
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_6
    move v5, v4

    .line 2197
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_b

    if-ge v5, v15, :cond_b

    .line 2198
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    move-object v3, v0

    .line 2281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f03016c

    const/4 v11, 0x0

    invoke-virtual {v2, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 2283
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/View;->setClickable(Z)V

    .line 2284
    const v2, 0x7f0e0569

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2286
    const v2, 0x7f0e0568

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2287
    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2288
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v6

    .line 2289
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v12

    .line 2290
    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v14}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v12, v13, v2, v6, v14}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 2293
    :cond_7
    const v2, 0x7f0e00c6

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2294
    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/IMGroup;->getStar()I

    move-result v12

    move v6, v7

    .line 2296
    :goto_3
    const/4 v13, 0x5

    if-gt v6, v13, :cond_a

    .line 2297
    add-int/lit8 v13, v6, -0x1

    mul-int/lit8 v13, v13, 0x14

    if-le v12, v13, :cond_8

    .line 2298
    const v13, 0x7f02023b

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xueqiu/android/stock/StockFollowersActivity;->b(I)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2296
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2300
    :cond_8
    const v13, 0x7f02023c

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xueqiu/android/stock/StockFollowersActivity;->b(I)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2276
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2277
    :cond_9
    :goto_5
    return-void

    .line 2304
    :cond_a
    :try_start_1
    new-instance v2, Lcom/xueqiu/android/stock/StockFollowersActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/xueqiu/android/stock/StockFollowersActivity$7;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Lcom/xueqiu/android/message/model/IMGroup;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2199
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2200
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->m()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2197
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_2

    .line 2203
    :cond_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_c

    .line 2204
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->n()Landroid/view/View;

    move-result-object v2

    .line 2205
    new-instance v3, Lcom/xueqiu/android/stock/StockFollowersActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity$4;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2215
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2216
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->m()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2220
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 2222
    const v1, 0x7f0e019b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2223
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2225
    const v2, 0x7f0e019c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2226
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 2227
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_d
    move v3, v4

    .line 2234
    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_e

    if-ge v3, v15, :cond_e

    .line 2235
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/model/User;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/stock/StockFollowersActivity;->a(Lcom/xueqiu/android/community/model/User;)Landroid/view/View;

    move-result-object v2

    .line 2236
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2237
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->m()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2234
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 2239
    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_f

    .line 2240
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->n()Landroid/view/View;

    move-result-object v2

    .line 2241
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2242
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->m()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2243
    new-instance v1, Lcom/xueqiu/android/stock/StockFollowersActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity$5;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2258
    :cond_f
    const v1, 0x7f0e01a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2261
    const v1, 0x7f0e019f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2262
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2263
    new-instance v2, Lcom/xueqiu/android/stock/StockFollowersActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity$6;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f010139

    aput v2, v1, v3

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 418
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f01013a

    aput v2, v1, v3

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 421
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private m()Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 426
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 427
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v3, [I

    const v3, 0x7f01012e

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 431
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 432
    return-object v0
.end method

.method private n()Landroid/view/View;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 437
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 438
    const-string v1, "\u70b9\u51fb\u67e5\u770b\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 441
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 442
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 443
    invoke-virtual {v0, v5, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 445
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 446
    iget-object v2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 447
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 449
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 451
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 453
    return-object v0

    .line 446
    :array_0
    .array-data 4
        0x7f010053
        0x7f010031
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->setContentView(I)V

    .line 67
    iput-object p0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->q:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->j:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->k:Ljava/lang/String;

    .line 70
    const-string v0, "\u7403\u53cb"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->p:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 1180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1076
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity;->j:Ljava/lang/String;

    new-instance v2, Lcom/xueqiu/android/stock/StockFollowersActivity$1;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/StockFollowersActivity$1;-><init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1090
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 1091
    :goto_0
    return-void

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->j()V

    goto :goto_0
.end method
