.class public Lcom/xueqiu/android/stock/PrivateFundActivity;
.super Lcom/xueqiu/android/common/b;
.source "PrivateFundActivity.java"


# static fields
.field private static final j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:I

.field private static r:I

.field private static s:I


# instance fields
.field private A:Landroid/support/v4/view/ViewPager;

.field private B:Lcom/xueqiu/android/stock/j;

.field private C:Lcom/viewpagerindicator/CirclePageIndicator;

.field private D:Landroid/view/ViewGroup;

.field private E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private F:Lcom/xueqiu/android/community/widget/i;

.field private G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

.field private H:Lcom/xueqiu/android/community/a/ak;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/LinearLayout;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/view/ViewGroup;

.field private P:Lcom/xueqiu/chart/view/LineChart;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/view/ViewGroup;

.field private V:Lcom/google/gson/JsonObject;

.field private W:Lcom/xueqiu/android/common/widget/z;

.field private X:Lcom/d/a/b/d;

.field private t:J

.field private u:Lcom/xueqiu/android/stock/i;

.field private v:Lcom/xueqiu/android/community/model/User;

.field private w:Lcom/xueqiu/android/stock/model/StockQuote;

.field private x:Ljava/lang/String;

.field private y:[Ljava/lang/String;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->j:Ljava/lang/String;

    .line 113
    const-string v0, "extra_income_rate"

    sput-object v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->k:Ljava/lang/String;

    .line 115
    const-string v0, "extra_income_type"

    sput-object v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->p:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    sput v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->q:I

    .line 119
    const/4 v0, 0x1

    sput v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->r:I

    .line 121
    const/16 v0, 0xa

    sput v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->s:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x7f020208

    .line 105
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->t:J

    .line 131
    const-string v0, "all"

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->x:Ljava/lang/String;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u7ba1\u7406\u8d39\u7387"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e1a\u7ee9\u63d0\u6210\u6bd4\u7387"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8ba4\u8d2d\u8d77\u70b9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->y:[Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 2293
    iput v3, v0, Lcom/d/a/b/e;->c:I

    .line 3270
    iput v3, v0, Lcom/d/a/b/e;->b:I

    .line 4248
    iput v3, v0, Lcom/d/a/b/e;->a:I

    .line 186
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x42100000    # 36.0f

    .line 187
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 4445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 188
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->X:Lcom/d/a/b/d;

    .line 1075
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->v:Lcom/xueqiu/android/community/model/User;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    return-object v0
.end method

.method static synthetic a(Landroid/widget/TextView;Z)V
    .locals 0

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->b(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/google/gson/JsonArray;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const v9, 0x7f0e0666

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 15517
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 15584
    :cond_0
    :goto_0
    return-void

    .line 15521
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/i;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/i;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 15522
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    if-eqz v0, :cond_0

    .line 15523
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 16098
    iget-wide v0, v0, Lcom/xueqiu/android/stock/i;->xueqiuId:J

    .line 15523
    iput-wide v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->t:J

    .line 15524
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->F:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/community/widget/i;->a(Z)V

    .line 15525
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 16102
    iget-object v1, v1, Lcom/xueqiu/android/stock/i;->managerName:Ljava/lang/String;

    .line 15525
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15526
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->M:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 16110
    iget-object v1, v1, Lcom/xueqiu/android/stock/i;->investmentName:Ljava/lang/String;

    .line 15526
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15527
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 16118
    iget-object v0, v0, Lcom/xueqiu/android/stock/i;->fundIntro:Ljava/lang/String;

    .line 15527
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f070171

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15529
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 18098
    iget-wide v0, v0, Lcom/xueqiu/android/stock/i;->xueqiuId:J

    .line 15529
    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    .line 18180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 15530
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 19098
    iget-wide v2, v1, Lcom/xueqiu/android/stock/i;->xueqiuId:J

    .line 15530
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/PrivateFundActivity$5;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$5;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 19934
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 15550
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 20098
    iget-wide v4, v0, Lcom/xueqiu/android/stock/i;->xueqiuId:J

    .line 21180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 20887
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "owner"

    aput-object v3, v1, v7

    const/4 v3, 0x1

    const-string v6, "all"

    aput-object v6, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v6, Lcom/xueqiu/android/stock/PrivateFundActivity$13;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$13;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 21488
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;Ljava/util/List;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 15553
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 22114
    iget-wide v0, v0, Lcom/xueqiu/android/stock/i;->investmentXueqiuId:J

    .line 15553
    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    .line 15554
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15555
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->M:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$6;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15577
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 22122
    iget-object v0, v0, Lcom/xueqiu/android/stock/i;->fundIntroUrl:Ljava/lang/String;

    .line 15577
    if-eqz v0, :cond_5

    .line 15578
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->O:Landroid/view/ViewGroup;

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$7;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15584
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->O:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 15527
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    .line 17118
    iget-object v0, v0, Lcom/xueqiu/android/stock/i;->fundIntro:Ljava/lang/String;

    goto/16 :goto_1

    .line 15573
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 15586
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->O:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    .line 105
    .line 14603
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->V:Lcom/google/gson/JsonObject;

    .line 14604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->z:Ljava/util/List;

    .line 14605
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14606
    sget-object v1, Lcom/xueqiu/android/stock/PrivateFundActivity;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14607
    sget-object v1, Lcom/xueqiu/android/stock/PrivateFundActivity;->p:Ljava/lang/String;

    sget v2, Lcom/xueqiu/android/stock/PrivateFundActivity;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14608
    new-instance v1, Lcom/xueqiu/android/stock/k;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/k;-><init>()V

    .line 14609
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/k;->e(Landroid/os/Bundle;)V

    .line 14610
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14612
    new-instance v0, Lcom/xueqiu/android/stock/k;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/k;-><init>()V

    .line 14613
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14614
    sget-object v2, Lcom/xueqiu/android/stock/PrivateFundActivity;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14615
    sget-object v2, Lcom/xueqiu/android/stock/PrivateFundActivity;->p:Ljava/lang/String;

    sget v3, Lcom/xueqiu/android/stock/PrivateFundActivity;->r:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14616
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/k;->e(Landroid/os/Bundle;)V

    .line 14617
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14619
    new-instance v0, Lcom/xueqiu/android/stock/j;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/stock/j;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->B:Lcom/xueqiu/android/stock/j;

    .line 14620
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->A:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 14621
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->A:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->B:Lcom/xueqiu/android/stock/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 14622
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->C:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->A:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 14623
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->C:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$8;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/stock/model/StockQuote;)V
    .locals 10

    .prologue
    .line 105
    .line 22453
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 22454
    invoke-direct {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->p()V

    .line 22781
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->isPrivateOpen()Z

    move-result v0

    .line 22782
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setVisibility(I)V

    .line 22783
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 22786
    if-eqz v0, :cond_2

    .line 22787
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0006

    const v2, 0x7f0700bc

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    const v5, 0x7f020082

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 22788
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0003

    const v2, 0x7f070057

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    const v5, 0x7f0200b8

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 22792
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0005

    const v2, 0x7f0702fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 22793
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0015

    const v2, 0x7f070376

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 22795
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$11;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setOnMenuItemSelectedListener(Lcom/xueqiu/android/common/widget/j;)V

    .line 22457
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 22458
    const-string v0, ""

    .line 22459
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzConvertTime()Ljava/lang/String;

    move-result-object v2

    .line 23197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 22459
    if-nez v2, :cond_0

    .line 22460
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzConvertTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 22462
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22465
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "- -"

    .line 22466
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22468
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetAssets()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "--"

    .line 22469
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->T:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22471
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22472
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 23592
    const-string v1, "\uff08\u6210\u7acb\u4e8eyyyy-MM-dd\uff09"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23593
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6536\u76ca\u7387\u8d70\u52bf"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 23594
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 23595
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#aaaaaa"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 23596
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 23597
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v4, 0x11

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 23598
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22475
    :cond_1
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "%.2f%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPb()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "%.2f%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 22476
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getEps()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    .line 22477
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarketCapital()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_5

    const-string v0, "- -"

    :goto_3
    aput-object v0, v3, v1

    .line 22478
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    const/4 v0, 0x3

    if-ge v2, v0, :cond_6

    .line 22479
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->U:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0668

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22480
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->U:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0e0669

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 22482
    iget-object v4, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->y:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22483
    aget-object v0, v3, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22478
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 22790
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0006

    const v2, 0x7f0700bc

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0200b8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 22465
    :cond_3
    const-string v0, "%.4f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 22468
    :cond_4
    const-string v0, "%.4f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetAssets()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 22477
    :cond_5
    const-string v0, "%.0f\u4e07"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarketCapital()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 22486
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->U:Landroid/view/ViewGroup;

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$4;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22496
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 22497
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->I:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22498
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 22499
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    const v1, 0x7f0e0658

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22500
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    const v1, 0x7f0e065b

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22501
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    const v1, 0x7f0e065a

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22502
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->S:Landroid/widget/TextView;

    const v1, 0x7f0d0051

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22503
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->T:Landroid/widget/TextView;

    const v1, 0x7f0d0051

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22505
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 22506
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/k;

    .line 22507
    invoke-static {v0}, Lcom/xueqiu/android/stock/k;->a(Lcom/xueqiu/android/stock/k;)V

    goto :goto_5

    .line 22512
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->I:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22508
    :cond_8
    return-void

    .line 22783
    :array_0
    .array-data 4
        0x7f0100b6
        0x7f0100bc
    .end array-data
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/PrivateFundActivity;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 105
    .line 24446
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->x:Ljava/lang/String;

    .line 24447
    iput-wide p2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->t:J

    .line 24448
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->F:Lcom/xueqiu/android/community/widget/i;

    .line 25393
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 24448
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setRefreshing(Z)V

    .line 105
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/PrivateFundActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/widget/TextView;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 437
    if-eqz p1, :cond_0

    .line 438
    const v0, 0x7f0203bf

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 442
    :goto_0
    invoke-virtual {p0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 443
    return-void

    .line 440
    :cond_0
    const v0, 0x7f020460

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/community/model/User;)V
    .locals 2

    .prologue
    .line 105
    .line 25881
    const-class v0, Lcom/xueqiu/android/community/UserProfileActivity;

    const-string v1, "extra_user"

    invoke-static {p0, v0, v1, p1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 25882
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/PrivateFundActivity;)J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->t:J

    return-wide v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/community/widget/i;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->F:Lcom/xueqiu/android/community/widget/i;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 4

    .prologue
    .line 10644
    new-instance v0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$9;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 10683
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 10684
    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 10688
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->h()Landroid/app/Dialog;

    .line 10689
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x834

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 10690
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 10691
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 105
    return-void

    .line 12180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 10686
    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 2

    .prologue
    .line 105
    .line 13913
    new-instance v0, Lcom/xueqiu/android/common/widget/z;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->W:Lcom/xueqiu/android/common/widget/z;

    .line 13914
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->W:Lcom/xueqiu/android/common/widget/z;

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$14;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    .line 14086
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/z;->a:Lcom/xueqiu/android/common/widget/aa;

    .line 13927
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->W:Lcom/xueqiu/android/common/widget/z;

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$15;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/z;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 13936
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->W:Lcom/xueqiu/android/common/widget/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->show()V

    .line 105
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/i;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->u:Lcom/xueqiu/android/stock/i;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/stock/PrivateFundActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->K:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->s:I

    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/d/a/b/d;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->X:Lcom/d/a/b/d;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->v:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/stock/PrivateFundActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/google/gson/JsonObject;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->V:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->q:I

    return v0
.end method

.method static synthetic n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->P:Lcom/xueqiu/chart/view/LineChart;

    return-object v0
.end method

.method static synthetic o()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/xueqiu/android/stock/PrivateFundActivity;->r:I

    return v0
.end method

.method static synthetic o(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 3

    .prologue
    .line 27069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 27186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 26825
    if-eqz v0, :cond_0

    .line 28152
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 26827
    :goto_0
    return-void

    .line 26830
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->v:Lcom/xueqiu/android/community/model/User;

    if-nez v0, :cond_1

    .line 26831
    const v0, 0x7f070177

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 26835
    :goto_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x834

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 26836
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 26837
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 26833
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->v:Lcom/xueqiu/android/community/model/User;

    invoke-static {v0, p0}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)V

    goto :goto_1
.end method

.method private p()V
    .locals 4

    .prologue
    const v3, 0x7f0e000b

    .line 302
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    const v1, 0x7f0e00ce

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$17;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$17;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    const v1, 0x7f070555

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$18;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$18;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    const v1, 0x7f0e05d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 318
    :cond_3
    const v1, 0x7f070160

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic p(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 4

    .prologue
    .line 29817
    const-string v0, "https://xueqiu.com/S/%s/subscribe?isQualified=1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29818
    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 29819
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x834

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 29820
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 29821
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 105
    return-void
.end method

.method static synthetic q(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 31186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 30841
    if-eqz v0, :cond_0

    .line 32152
    invoke-static {p0, v6}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 30842
    :goto_0
    return-void

    .line 30844
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30845
    const-string v0, "extra_write_type"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30847
    const-string v0, ""

    .line 30848
    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->v:Lcom/xueqiu/android/community/model/User;

    if-eqz v2, :cond_1

    .line 30849
    const-string v0, "@%s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->v:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30851
    :cond_1
    const-string v2, "extra_auto_add_text"

    const-string v3, "$%s(%s)$ %s "

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 30852
    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30851
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30853
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32859
    const-wide/16 v0, 0x0

    .line 32860
    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->V:Lcom/google/gson/JsonObject;

    const-string v3, "since_founded_growth_rate"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->V:Lcom/google/gson/JsonObject;

    const-string v3, "since_founded_growth_rate"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32861
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->V:Lcom/google/gson/JsonObject;

    const-string v1, "since_founded_growth_rate"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 32863
    :cond_0
    const-string v2, "$%s(%s)$ \u6700\u65b0\u51c0\u503c%.4f\uff0c\u603b\u6536\u76ca%.2f%%\u3002"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 32864
    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v9

    .line 32863
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32865
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/S/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32866
    const-string v2, "%s%s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 32867
    new-instance v3, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v3}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 33113
    iput-object v2, v3, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 34075
    iget-object v2, v3, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 32869
    const-string v4, "wx_content_type"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35075
    iget-object v2, v3, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 32870
    const-string v4, "wx_friend_content"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36065
    iget-object v2, v3, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 32871
    const-string v4, "wx_title"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36129
    iput-object v1, v3, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 32873
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37101
    iput-object v0, v3, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 32874
    const/4 v0, 0x0

    invoke-static {p0, v3, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    .line 32875
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x834

    invoke-direct {v0, v1, v9}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 32876
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 32877
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 105
    return-void
.end method

.method static synthetic s(Lcom/xueqiu/android/stock/PrivateFundActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->J:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/common/widget/z;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->W:Lcom/xueqiu/android/common/widget/z;

    return-object v0
.end method

.method static synthetic u(Lcom/xueqiu/android/stock/PrivateFundActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->z:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 193
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->setContentView(I)V

    .line 5066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 195
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->finish()V

    .line 203
    :goto_0
    return-void

    .line 5223
    :cond_1
    const v0, 0x7f0e01a2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->D:Landroid/view/ViewGroup;

    .line 5224
    const v0, 0x7f0e01a1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 5225
    const v0, 0x7f0e0172

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 5226
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0301b9

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5227
    const v0, 0x7f0e03dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/xueqiu/android/stock/PrivateFundActivity$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$1;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5238
    const v0, 0x7f0e0659

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->I:Landroid/widget/ImageView;

    .line 5239
    const v0, 0x7f0e0465

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->C:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 5240
    const v0, 0x7f0e0464

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->A:Landroid/support/v4/view/ViewPager;

    .line 5241
    const v0, 0x7f0e0661

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->K:Landroid/widget/ImageView;

    .line 5242
    const v0, 0x7f0e0662

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->L:Landroid/widget/TextView;

    .line 5243
    const v0, 0x7f0e0664

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->M:Landroid/widget/TextView;

    .line 5244
    const v0, 0x7f0e0665

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->N:Landroid/widget/TextView;

    .line 5245
    const v0, 0x7f0e0660

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->O:Landroid/view/ViewGroup;

    .line 5247
    const v0, 0x7f0e065c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->R:Landroid/widget/TextView;

    .line 5248
    const v0, 0x7f0e065f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->S:Landroid/widget/TextView;

    .line 5249
    const v0, 0x7f0e065d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->T:Landroid/widget/TextView;

    .line 5250
    const v0, 0x7f0e0667

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->U:Landroid/view/ViewGroup;

    .line 5252
    const v0, 0x7f0e03b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/view/LineChart;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->P:Lcom/xueqiu/chart/view/LineChart;

    .line 5253
    const v0, 0x7f0e03de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->Q:Landroid/widget/TextView;

    .line 5255
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 5256
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 5257
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->H:Lcom/xueqiu/android/community/a/ak;

    .line 5258
    new-instance v0, Lcom/xueqiu/android/community/widget/i;

    iget-object v3, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->E:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v4, Lcom/xueqiu/android/stock/PrivateFundActivity$12;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$12;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-direct {v0, v3, v4}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->F:Lcom/xueqiu/android/community/widget/i;

    .line 5281
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->F:Lcom/xueqiu/android/community/widget/i;

    new-instance v3, Lcom/xueqiu/android/stock/PrivateFundActivity$16;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$16;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5290
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->F:Lcom/xueqiu/android/community/widget/i;

    iget-object v3, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->H:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 5291
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->F:Lcom/xueqiu/android/community/widget/i;

    const v3, 0x7f07029b

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(Ljava/lang/CharSequence;)V

    .line 5292
    const v0, 0x7f0e036b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->J:Landroid/widget/LinearLayout;

    .line 5293
    invoke-direct {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->p()V

    .line 5408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 5409
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 5410
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0e036d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5409
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5412
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 5413
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070254

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5414
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5415
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/xueqiu/android/stock/PrivateFundActivity;->b(Landroid/widget/TextView;Z)V

    .line 5416
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->b(Landroid/widget/TextView;Z)V

    .line 5418
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$2;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/stock/PrivateFundActivity$2;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5426
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$3;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/stock/PrivateFundActivity$3;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 5697
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "all"

    new-instance v4, Lcom/xueqiu/android/stock/PrivateFundActivity$10;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$10;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 6602
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v3, v4}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 5296
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x834

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 5297
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 5298
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 8180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 7365
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/PrivateFundActivity$20;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$20;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 8594
    iget-object v3, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v3, v1, v2}, Lcom/xueqiu/android/base/b/ak;->b(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 7378
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/PrivateFundActivity$21;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$21;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 8598
    iget-object v3, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v3, v1, v2}, Lcom/xueqiu/android/base/b/ak;->c(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 7392
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->w:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/PrivateFundActivity$22;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$22;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V

    new-instance v3, Lcom/xueqiu/android/base/b/r;

    invoke-direct {v3}, Lcom/xueqiu/android/base/b/r;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 9069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 9186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 209
    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 212
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->finish()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->W:Lcom/xueqiu/android/common/widget/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->W:Lcom/xueqiu/android/common/widget/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity;->W:Lcom/xueqiu/android/common/widget/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10180
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 9336
    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$19;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$19;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->d(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 220
    :cond_2
    return-void
.end method
