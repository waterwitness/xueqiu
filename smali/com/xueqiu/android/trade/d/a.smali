.class public final Lcom/xueqiu/android/trade/d/a;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/b/b;


# instance fields
.field A:Z

.field private B:D

.field private C:Lcom/xueqiu/android/trade/c;

.field private D:Lcom/xueqiu/android/trade/view/a;

.field private E:D

.field private F:I

.field private G:Landroid/os/Handler;

.field a:Lcom/xueqiu/android/trade/c/e;

.field b:Lcom/xueqiu/android/trade/b/c;

.field c:Lcom/xueqiu/android/common/b;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z

.field h:Lcom/xueqiu/android/base/b/ai;

.field i:Lcom/xueqiu/android/trade/model/TradeAccount;

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/lang/String;

.field l:D

.field m:D

.field n:D

.field o:D

.field p:D

.field q:I

.field r:D

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/Double;

.field w:Ljava/lang/String;

.field x:I

.field y:Lcom/xueqiu/android/common/widget/f;

.field z:Lcom/google/gson/JsonArray;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/b/c;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->h:Lcom/xueqiu/android/base/b/ai;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 105
    iput-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->n:D

    .line 106
    iput-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->o:D

    .line 107
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->p:D

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/trade/d/a;->q:I

    .line 109
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->r:D

    .line 127
    iput-boolean p2, p0, Lcom/xueqiu/android/trade/d/a;->g:Z

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/xueqiu/android/trade/c/e;

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 130
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 131
    iput-object p3, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->G:Landroid/os/Handler;

    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    sget-object v2, Lcom/xueqiu/android/message/client/c;->m:Lrx/i/c;

    invoke-static {v1, v2}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/d/a$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/d/a$1;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->a(Lrx/j;)V

    .line 146
    return-void
.end method

.method private a(II)I
    .locals 4

    .prologue
    .line 662
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return p1

    .line 666
    :cond_1
    if-gez p1, :cond_2

    .line 667
    const/4 p1, 0x0

    .line 669
    :cond_2
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->r:D

    rem-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 670
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->r:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->r:D

    mul-double/2addr v0, v2

    double-to-int p1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/a/a;)V
    .locals 6

    .prologue
    .line 12982
    .line 13092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 12982
    if-eqz v0, :cond_0

    .line 12985
    const-string v1, "\u6ce8\u610f"

    .line 12986
    new-instance v2, Lcom/xueqiu/android/common/widget/StatusDetailTextView;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;-><init>(Landroid/content/Context;)V

    .line 12987
    invoke-virtual {p1}, Lcom/xueqiu/android/base/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    invoke-static {v0, v3, v2}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v0

    .line 12988
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    .line 12989
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->setPadding(IIII)V

    .line 12990
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->setText(Ljava/lang/CharSequence;)V

    .line 14092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 12991
    const-string v3, "callback_path"

    .line 14106
    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 12992
    const-string v4, "params"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 12993
    const-string v4, "params"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 12994
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/trade/d/a$7;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/trade/d/a$7;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    .line 12995
    invoke-virtual {v5}, Lcom/xueqiu/android/trade/d/a$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 12994
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 12996
    const-string v4, "tid"

    iget-object v5, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12997
    iget-object v4, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v5, Lcom/xueqiu/android/trade/d/a$8;

    invoke-direct {v5, p0, v0, v3}, Lcom/xueqiu/android/trade/d/a$8;-><init>(Lcom/xueqiu/android/trade/d/a;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 13014
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 13015
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/view/View;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 16127
    const/16 v1, 0x11

    iput v1, v0, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 13016
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    const v2, 0x7f070070

    .line 13017
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    const v2, 0x7f0700b1

    .line 13018
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 13019
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 69
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/trade/model/TradeAccount;I)V
    .locals 4

    .prologue
    .line 12185
    if-eqz p1, :cond_1

    .line 12186
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12187
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->d_(Z)V

    .line 12191
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/c;->b(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 12192
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRealAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12196
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 12197
    invoke-direct {p0}, Lcom/xueqiu/android/trade/d/a;->o()V

    .line 69
    return-void

    .line 12189
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->d_(Z)V

    goto :goto_0

    .line 12194
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->G_()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;DDD)V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;DDD)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/trade/d/c;)V
    .locals 3

    .prologue
    .line 69
    .line 12355
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v1, Lcom/xueqiu/android/trade/d/a$18;

    invoke-direct {v1, p0, p3}, Lcom/xueqiu/android/trade/d/a$18;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/trade/d/c;)V

    new-instance v2, Lcom/xueqiu/android/trade/d/a$19;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/d/a$19;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    invoke-static {p1, p2, v0, v1, v2}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;Lcom/xueqiu/android/trade/c/c;)Lcom/xueqiu/android/trade/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->C:Lcom/xueqiu/android/trade/c;

    .line 12385
    if-nez p3, :cond_0

    .line 12386
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->C:Lcom/xueqiu/android/trade/c;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c;->a(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    .line 12388
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->C:Lcom/xueqiu/android/trade/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 12

    .prologue
    .line 69
    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/trade/d/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;DDD)V
    .locals 12

    .prologue
    .line 782
    const-string v0, "BUY"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const-string v10, "\u786e\u8ba4\u4e70\u5165"

    .line 793
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/d/a$2;

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    move-object v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/trade/d/a$2;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;DDDLjava/lang/String;)V

    .line 11633
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;DLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 887
    return-void

    .line 784
    :cond_0
    const-string v0, "SELL"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    const-string v10, "\u786e\u8ba4\u5356\u51fa"

    goto :goto_0

    .line 786
    :cond_1
    const-string v0, "BUY_COVER"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    const-string v10, "\u786e\u8ba4\u5356\u7a7a\u8865\u56de"

    goto :goto_0

    .line 788
    :cond_2
    const-string v0, "SELL_SHORT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 789
    const-string v10, "\u786e\u8ba4\u5356\u7a7a"

    goto :goto_0

    .line 791
    :cond_3
    const-string v10, "\u786e\u8ba4\u8ba2\u5355"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 890
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;DDD)V

    .line 907
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/d/a$3;

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    move-object v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/xueqiu/android/trade/d/a$3;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;DD)V

    .line 11637
    iget-object v2, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/base/b/x;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 11

    .prologue
    .line 447
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v9, Lcom/xueqiu/android/trade/d/a$22;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {v9, p0, v1, p1}, Lcom/xueqiu/android/trade/d/a$22;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;Z)V

    .line 4629
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v9}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 497
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1321
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, v2}, Lcom/xueqiu/android/trade/b/c;->c(Z)V

    .line 1330
    :goto_0
    return-void

    .line 1325
    :cond_0
    const/16 v0, 0x11

    iget v1, p0, Lcom/xueqiu/android/trade/d/a;->F:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, v2}, Lcom/xueqiu/android/trade/b/c;->c(Z)V

    goto :goto_0

    .line 1328
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->c(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1212
    return-void
.end method

.method public final a(I)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iput p1, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    .line 619
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v8

    .line 620
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->E:D

    cmpl-double v0, v0, v8

    if-eqz v0, :cond_2

    .line 621
    iput-wide v8, p0, Lcom/xueqiu/android/trade/d/a;->E:D

    .line 622
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 623
    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    iget-object v10, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/trade/d/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_2
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/d/a;->g:Z

    if-eqz v0, :cond_3

    .line 630
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5e1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 634
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 654
    :goto_2
    invoke-direct {p0, v2, p1}, Lcom/xueqiu/android/trade/d/a;->a(II)I

    move-result v1

    .line 655
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/d/a;->c()V

    .line 656
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/xueqiu/android/trade/b/c;->b(Ljava/lang/String;)V

    .line 8053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 657
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 658
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/c;->b(I)V

    goto :goto_0

    .line 632
    :cond_3
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5ed

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    goto :goto_1

    .line 636
    :pswitch_0
    iget v1, p0, Lcom/xueqiu/android/trade/d/a;->q:I

    div-int/lit8 v2, v1, 0x1

    .line 637
    const-string v1, "type"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 640
    :pswitch_1
    iget v1, p0, Lcom/xueqiu/android/trade/d/a;->q:I

    div-int/lit8 v2, v1, 0x2

    .line 641
    const-string v1, "type"

    const-string v3, "2"

    invoke-virtual {v0, v1, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 644
    :pswitch_2
    iget v1, p0, Lcom/xueqiu/android/trade/d/a;->q:I

    div-int/lit8 v2, v1, 0x3

    .line 645
    const-string v1, "type"

    const-string v3, "3"

    invoke-virtual {v0, v1, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 648
    :pswitch_3
    iget v1, p0, Lcom/xueqiu/android/trade/d/a;->q:I

    div-int/lit8 v2, v1, 0x4

    .line 649
    const-string v1, "type"

    const-string v3, "4"

    invoke-virtual {v0, v1, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/xueqiu/android/stock/model/StockQuote;)V
    .locals 2

    .prologue
    .line 676
    const-string v0, "MKT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    .line 678
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/d/a;->c()V

    .line 680
    :cond_0
    return-void
.end method

.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->G_()V

    .line 159
    :goto_0
    invoke-direct {p0}, Lcom/xueqiu/android/trade/d/a;->o()V

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 4168
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SELL_SHORT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4169
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, v4}, Lcom/xueqiu/android/trade/b/c;->d_(Z)V

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/c;->b(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRealAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 4171
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->d_(Z)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/d/a;->d()V

    .line 209
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 211
    const-string v0, "799999"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->b(Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 4220
    const/4 v0, 0x0

    .line 4221
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v2, :cond_1

    .line 4222
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    .line 4224
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/d/a$12;

    iget-object v4, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {v3, p0, v4}, Lcom/xueqiu/android/trade/d/a$12;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/ai;->h(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 217
    :cond_2
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 393
    invoke-static {p1}, Lcom/xueqiu/android/base/util/as;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->J_()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getEtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/trade/d/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/d/a$20;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/trade/d/a$20;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V

    .line 4429
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p2, v1}, Lcom/xueqiu/android/base/b/ak;->j(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 927
    const-string v0, "LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AFTER_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRE_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    :cond_0
    const/4 v7, 0x0

    .line 930
    :goto_0
    new-instance v14, Lcom/xueqiu/android/trade/d/b;

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v0, Lcom/xueqiu/android/trade/d/c;

    move-object v1, p0

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/trade/d/c;-><init>(Lcom/xueqiu/android/trade/d/a;DD)V

    invoke-direct {v14, p0, v6, v0}, Lcom/xueqiu/android/trade/d/b;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/trade/d/c;)V

    .line 931
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 11645
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v14}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 934
    return-void

    :cond_1
    move-object/from16 v7, p6

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 937
    new-instance v0, Lcom/xueqiu/android/trade/d/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v2, Lcom/xueqiu/android/trade/d/c;

    invoke-direct {v2, p0, p2, p1}, Lcom/xueqiu/android/trade/d/c;-><init>(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/xueqiu/android/trade/d/b;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/trade/d/c;)V

    .line 938
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 11649
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v1, p2, p1, v0}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 939
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 940
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 11

    .prologue
    .line 501
    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/xueqiu/android/base/util/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 503
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/trade/d/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method public final a(Z)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 535
    iget-boolean v1, p0, Lcom/xueqiu/android/trade/d/a;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v0

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v1}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2

    .line 539
    if-eqz p1, :cond_0

    .line 540
    const-string v1, "\u4ea4\u6613\u6570\u91cf\u4e0d\u53ef\u4e3a0"

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_2
    const-string v1, "LMT"

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "AFTER_LMT"

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PRE_LMT"

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v1}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 547
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->G:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1217
    return-void
.end method

.method public final b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 589
    .line 590
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    .line 591
    if-ne p1, v4, :cond_1

    .line 592
    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->r:D

    double-to-int v2, v2

    add-int/2addr v0, v2

    .line 605
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/trade/d/a;->a(II)I

    move-result v0

    .line 606
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/b/c;->b(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/d/a;->c()V

    .line 608
    :cond_0
    :goto_1
    return-void

    .line 593
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 594
    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->r:D

    double-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 595
    :cond_2
    if-nez p1, :cond_4

    .line 596
    iget v0, p0, Lcom/xueqiu/android/trade/d/a;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 597
    iget v0, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    .line 598
    iget v0, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 599
    iput v4, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    .line 601
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/d/a;->a(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 687
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 688
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>()V

    .line 689
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->setSymbol(Ljava/lang/String;)V

    .line 690
    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xueqiu/android/common/b;->startActivity(Landroid/content/Intent;)V

    .line 692
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    .line 703
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    const/16 v2, 0x11

    iget v3, p0, Lcom/xueqiu/android/trade/d/a;->F:I

    if-eq v2, v3, :cond_9

    .line 707
    const-string v2, "LMT"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "PRE_LMT"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "AFTER_LMT"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 709
    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    .line 710
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    invoke-interface {v0, v2, v3, v4}, Lcom/xueqiu/android/trade/b/c;->a(DZ)V

    .line 725
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v0

    if-nez v0, :cond_3

    .line 726
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->v:Ljava/lang/Double;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->v:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 727
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, v5}, Lcom/xueqiu/android/trade/b/c;->a(Z)V

    .line 732
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->v:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 733
    const-string v0, "BUY"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 734
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->v:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    :cond_4
    const-string v2, "BUY"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 714
    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->n:D

    cmpl-double v0, v2, v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    .line 718
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    .line 719
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    invoke-interface {v0, v2, v3, v5}, Lcom/xueqiu/android/trade/b/c;->a(DZ)V

    goto :goto_1

    .line 714
    :cond_6
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->n:D

    goto :goto_3

    .line 715
    :cond_7
    const-string v2, "SELL"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 716
    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->o:D

    cmpl-double v0, v2, v0

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    goto :goto_3

    :cond_8
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->o:D

    goto :goto_3

    .line 722
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    .line 723
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    invoke-interface {v0, v2, v3, v4}, Lcom/xueqiu/android/trade/b/c;->a(DZ)V

    goto/16 :goto_1

    .line 729
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, v4}, Lcom/xueqiu/android/trade/b/c;->a(Z)V

    goto :goto_2

    .line 735
    :cond_b
    const-string v0, "SELL"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->v:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final c(I)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 563
    const-string v0, "LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AFTER_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRE_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    :cond_0
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    .line 565
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v2

    .line 566
    packed-switch p1, :pswitch_data_0

    .line 576
    :goto_0
    cmpg-double v2, v0, v8

    if-gez v2, :cond_3

    .line 579
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 580
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    iget-object v10, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/trade/d/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/d/a;->c()V

    .line 583
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/String;)V

    .line 585
    :cond_2
    return-void

    .line 568
    :pswitch_0
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->p:D

    .line 8027
    new-instance v4, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8028
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8029
    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 571
    :pswitch_1
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->p:D

    .line 8040
    new-instance v4, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8041
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8042
    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v8, v0

    goto :goto_1

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 510
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 511
    const-string v0, "LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AFTER_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRE_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->B:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->B:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/String;)V

    .line 519
    :goto_0
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/d/a;->g:Z

    if-eqz v0, :cond_4

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 520
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5e1

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 531
    :cond_1
    :goto_1
    return-void

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->B:D

    goto :goto_0

    .line 522
    :cond_4
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5ed

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 523
    const-string v1, "LMT"

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 524
    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_1

    .line 526
    :cond_5
    const-string v1, "MKT"

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 528
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    .line 316
    const-string v0, "LMT"

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 317
    iput-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->l:D

    .line 318
    iput-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    .line 319
    const-string v0, "BUY"

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 320
    iput-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->B:D

    .line 321
    iput-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->n:D

    .line 322
    iput-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->o:D

    .line 323
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->p:D

    .line 324
    iput v5, p0, Lcom/xueqiu/android/trade/d/a;->q:I

    .line 325
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->r:D

    .line 326
    iput v5, p0, Lcom/xueqiu/android/trade/d/a;->F:I

    .line 327
    iput-object v4, p0, Lcom/xueqiu/android/trade/d/a;->s:Ljava/lang/String;

    .line 328
    iput-object v4, p0, Lcom/xueqiu/android/trade/d/a;->v:Ljava/lang/Double;

    .line 329
    iput-object v4, p0, Lcom/xueqiu/android/trade/d/a;->w:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 1334
    iput p1, p0, Lcom/xueqiu/android/trade/d/a;->F:I

    .line 1335
    invoke-direct {p0}, Lcom/xueqiu/android/trade/d/a;->o()V

    .line 1336
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 552
    const-string v0, "LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AFTER_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRE_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 555
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    invoke-static {p1}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/trade/d/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 557
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/d/a;->c()V

    .line 558
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/String;)V

    .line 560
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 8

    .prologue
    const/16 v5, 0x5ed

    const-wide/16 v0, 0x0

    .line 746
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v2, :cond_9

    .line 747
    iget-boolean v2, p0, Lcom/xueqiu/android/trade/d/a;->g:Z

    if-eqz v2, :cond_3

    .line 748
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x5e1

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 749
    const-string v3, "tid"

    iget-object v4, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v3

    .line 750
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 756
    :cond_0
    :goto_0
    const-string v2, "LMT"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PRE_LMT"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AFTER_LMT"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 758
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 760
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    move-object v0, p0

    .line 759
    invoke-direct/range {v0 .. v7}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->y()Landroid/app/Dialog;

    .line 778
    :cond_2
    :goto_1
    return-void

    .line 751
    :cond_3
    const-string v2, "BUY"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 752
    new-instance v3, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v4, 0x10

    invoke-direct {v3, v5, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 753
    :cond_4
    const-string v2, "SELL"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 754
    new-instance v3, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 764
    :cond_5
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 766
    const-string v2, "BUY"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 767
    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->n:D

    cmpl-double v0, v2, v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    :goto_2
    move-wide v2, v0

    .line 771
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->y()Landroid/app/Dialog;

    goto :goto_1

    .line 767
    :cond_6
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->n:D

    goto :goto_2

    .line 768
    :cond_7
    const-string v2, "SELL"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 769
    iget-wide v2, p0, Lcom/xueqiu/android/trade/d/a;->o:D

    cmpl-double v0, v2, v0

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->m:D

    :goto_4
    move-wide v2, v0

    goto :goto_3

    :cond_8
    iget-wide v0, p0, Lcom/xueqiu/android/trade/d/a;->o:D

    goto :goto_4

    .line 776
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->G_()V

    goto/16 :goto_1

    :cond_a
    move-wide v2, v0

    goto :goto_3
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public final f()V
    .locals 5

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1101
    new-instance v0, Lcom/xueqiu/android/trade/view/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->j:Ljava/util/ArrayList;

    new-instance v4, Lcom/xueqiu/android/trade/d/a$13;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/trade/d/a$13;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/trade/view/a;-><init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/util/ArrayList;Lcom/xueqiu/android/trade/view/b;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->D:Lcom/xueqiu/android/trade/view/a;

    .line 1118
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->D:Lcom/xueqiu/android/trade/view/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/view/a;->a()V

    .line 1120
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 683
    const-string v0, "%s/broker/transfer?tid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://xueqiu.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 684
    return-void
.end method

.method public final h()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 695
    const-string v0, "PAMID"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    const-string v0, "%s/broker/trade-history?tid=%s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "https://xueqiu.com"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    const-string v0, "%s/broker/orders?tid=%s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "https://xueqiu.com"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 1123
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/trade/d/a;->x:I

    .line 1124
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/d/a;->g:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "/broker/open/open-guide?from=orderlite"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "/broker/open/open-guide?from=order"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 6

    .prologue
    .line 1128
    const-string v2, "\u5206\u4eab\u7ed9\u7403\u53cb"

    .line 1129
    const-string v0, "\u4e70\u5165"

    .line 1130
    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1146
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1147
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v1}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 1149
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6211\u521a\u521a\u5728#\u96ea\u7403\u5b9e\u76d8\u4ea4\u6613#\u59d4\u6258"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u59d4\u6258"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4ef7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u3002"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1151
    const-string v4, "MKT"

    iget-object v5, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u6211\u521a\u521a\u5728#\u96ea\u7403\u5b9e\u76d8\u4ea4\u6613#\u5e02\u4ef7\u59d4\u6258"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    :goto_2
    const-string v1, "\u786e\u5b9a"

    .line 1156
    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v4, Lcom/xueqiu/android/trade/d/a$14;

    invoke-direct {v4, p0, v0}, Lcom/xueqiu/android/trade/d/a$14;-><init>(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v3

    .line 1182
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v2

    .line 1183
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 12127
    const/16 v2, 0x11

    iput v2, v0, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 1184
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    const v3, 0x7f070070

    .line 1185
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 1186
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 1187
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 1188
    return-void

    .line 1130
    :sswitch_0
    const-string v4, "BUY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "SELL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "BUY_COVER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "SELL_SHORT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1132
    :pswitch_0
    const-string v0, "\u4e70\u5165"

    goto/16 :goto_1

    .line 1135
    :pswitch_1
    const-string v0, "\u5356\u51fa"

    goto/16 :goto_1

    .line 1138
    :pswitch_2
    const-string v0, "\u5356\u7a7a\u8865\u56de"

    goto/16 :goto_1

    .line 1141
    :pswitch_3
    const-string v0, "\u5356\u7a7a"

    goto/16 :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    .line 1130
    :sswitch_data_0
    .sparse-switch
        -0x3e9b2382 -> :sswitch_2
        0x10266 -> :sswitch_0
        0x26c752 -> :sswitch_1
        0x5c44712f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 11

    .prologue
    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->G:Landroid/os/Handler;

    new-instance v1, Lcom/xueqiu/android/trade/d/a$21;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/d/a$21;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/trade/d/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
