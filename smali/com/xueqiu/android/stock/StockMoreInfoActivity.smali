.class public Lcom/xueqiu/android/stock/StockMoreInfoActivity;
.super Lcom/xueqiu/android/common/b;
.source "StockMoreInfoActivity.java"


# instance fields
.field private j:[Ljava/lang/String;

.field private k:[Landroid/support/v4/a/i;

.field private p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private q:Lcom/viewpagerindicator/TabPageIndicator;

.field private r:Lcom/xueqiu/android/stock/model/StockQuote;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    .line 32
    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 33
    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->r:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 90
    return-void
.end method

.method private static a(Lcom/xueqiu/android/stock/model/StockQuote;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    if-nez p0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockQuote;->getIssueType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockQuote;->getIssueType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockQuote;->hasWarrant()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockQuote;->hasWarrant()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 212
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)[Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->r:Lcom/xueqiu/android/stock/model/StockQuote;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const/16 v13, 0x19

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03022b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->r:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->r:Lcom/xueqiu/android/stock/model/StockQuote;

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->finish()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->r:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->r:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getExchange()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->r:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v1, Lcom/xueqiu/android/stock/p;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/stock/p;-><init>(Lcom/xueqiu/android/stock/StockMoreInfoActivity;Landroid/support/v4/a/q;)V

    .line 52
    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->r:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1124
    new-instance v3, Lcom/xueqiu/android/community/c/n;

    invoke-direct {v3}, Lcom/xueqiu/android/community/c/n;-><init>()V

    .line 1125
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1126
    const-string v4, "extra_stock"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1127
    invoke-virtual {v3, v0}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 1129
    new-instance v0, Lcom/xueqiu/android/community/c/a;

    invoke-direct {v0}, Lcom/xueqiu/android/community/c/a;-><init>()V

    .line 1130
    new-instance v4, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1131
    const-string v5, "extra_stock"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1132
    invoke-virtual {v0, v4}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 1134
    new-instance v5, Lcom/xueqiu/android/community/c/b;

    invoke-direct {v5}, Lcom/xueqiu/android/community/c/b;-><init>()V

    .line 1135
    new-instance v6, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1136
    const-string v7, "extra_stock"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1137
    invoke-virtual {v5, v4}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 1139
    new-instance v4, Lcom/xueqiu/android/community/c/k;

    invoke-direct {v4}, Lcom/xueqiu/android/community/c/k;-><init>()V

    .line 1140
    new-instance v6, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1141
    const-string v7, "extra_stock"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1142
    invoke-virtual {v4, v6}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 1143
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v6

    .line 1145
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c001a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    .line 1146
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/support/v4/a/i;

    aput-object v3, v7, v9

    aput-object v0, v7, v10

    aput-object v4, v7, v11

    aput-object v5, v7, v12

    iput-object v7, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    .line 1149
    const-string v0, "\u671f\u6743"

    .line 1150
    const/16 v4, 0x20

    if-ne v6, v4, :cond_4

    .line 1151
    const v0, 0x7f0703c3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1157
    :cond_2
    :goto_1
    sparse-switch v6, :sswitch_data_0

    .line 1197
    invoke-static {v2}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->a(Lcom/xueqiu/android/stock/model/StockQuote;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1198
    new-array v0, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v10

    aput-object v2, v0, v10

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v12

    aput-object v2, v0, v11

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    .line 1199
    new-array v0, v12, [Landroid/support/v4/a/i;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v10

    aput-object v2, v0, v10

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v12

    aput-object v2, v0, v11

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    .line 54
    :cond_3
    :goto_2
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOffscreenPageLimit(I)V

    .line 58
    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;-><init>(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    array-length v0, v0

    if-ne v0, v10, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setVisibility(I)V

    goto/16 :goto_0

    .line 1152
    :cond_4
    if-ne v6, v13, :cond_5

    .line 1153
    const v0, 0x7f0703c2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1154
    :cond_5
    const/16 v4, 0x1e

    if-ne v6, v4, :cond_2

    .line 1155
    iget-object v4, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    const-string v5, "\u6da1\u8f6e"

    aput-object v5, v4, v11

    goto/16 :goto_1

    .line 1166
    :sswitch_0
    invoke-static {v2}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->a(Lcom/xueqiu/android/stock/model/StockQuote;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1167
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    if-ne v2, v13, :cond_6

    .line 1168
    new-array v2, v11, [Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v3, v3, v9

    aput-object v3, v2, v9

    aput-object v0, v2, v10

    iput-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    .line 1172
    :goto_3
    new-array v0, v11, [Landroid/support/v4/a/i;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v11

    aput-object v2, v0, v10

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    goto :goto_2

    .line 1170
    :cond_6
    new-array v0, v11, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v11

    aput-object v2, v0, v10

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    goto :goto_3

    .line 1174
    :cond_7
    new-array v0, v10, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    .line 1175
    new-array v0, v10, [Landroid/support/v4/a/i;

    aput-object v3, v0, v9

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    goto/16 :goto_2

    .line 1184
    :sswitch_1
    invoke-static {v2}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->a(Lcom/xueqiu/android/stock/model/StockQuote;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1185
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_8

    .line 1186
    new-array v2, v12, [Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v3, v3, v9

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v3, v3, v10

    aput-object v3, v2, v10

    aput-object v0, v2, v11

    iput-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    .line 1190
    :goto_4
    new-array v0, v12, [Landroid/support/v4/a/i;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v10

    aput-object v2, v0, v10

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v11

    aput-object v2, v0, v11

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    goto/16 :goto_2

    .line 1188
    :cond_8
    new-array v0, v12, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v10

    aput-object v2, v0, v10

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v11

    aput-object v2, v0, v11

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    goto :goto_4

    .line 1192
    :cond_9
    new-array v0, v11, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v10

    aput-object v2, v0, v10

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->j:[Ljava/lang/String;

    .line 1193
    new-array v0, v11, [Landroid/support/v4/a/i;

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v9

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    aget-object v2, v2, v10

    aput-object v2, v0, v10

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->k:[Landroid/support/v4/a/i;

    goto/16 :goto_2

    .line 1157
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x12 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1e -> :sswitch_1
        0x20 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
