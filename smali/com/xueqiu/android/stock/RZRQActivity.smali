.class public Lcom/xueqiu/android/stock/RZRQActivity;
.super Lcom/xueqiu/android/common/b;
.source "RZRQActivity.java"

# interfaces
.implements Lcom/xueqiu/android/stock/q;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private p:Lcom/xueqiu/android/stock/view/TableFixHeaders;

.field private q:[Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:Lcom/google/gson/JsonArray;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->k:Ljava/lang/String;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u878d\u8d44\u4f59\u989d"

    aput-object v1, v0, v3

    const-string v1, "\u878d\u8d44\u4e70\u5165\u989d"

    aput-object v1, v0, v4

    const-string v1, "\u878d\u8d44\u507f\u8fd8\u989d"

    aput-object v1, v0, v5

    const-string v1, "\u878d\u5238\u4f59\u91cf"

    aput-object v1, v0, v6

    const-string v1, "\u878d\u5238\u5356\u51fa\u91cf"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u878d\u5238\u507f\u8fd8\u91cf"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->q:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "finbalance"

    aput-object v1, v0, v3

    const-string v1, "finbuyamt"

    aput-object v1, v0, v4

    const-string v1, "finrepayamt"

    aput-object v1, v0, v5

    const-string v1, "mrgnresqty"

    aput-object v1, v0, v6

    const-string v1, "mrgnsellamt"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mrgnrepayamt"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->r:[Ljava/lang/String;

    .line 43
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/RZRQActivity;->t:Z

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/RZRQActivity;Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/stock/RZRQActivity;->s:Lcom/google/gson/JsonArray;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/RZRQActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/stock/RZRQActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/RZRQActivity;)V
    .locals 2

    .prologue
    .line 30
    .line 5078
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->p:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    new-instance v1, Lcom/xueqiu/android/stock/n;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/stock/n;-><init>(Lcom/xueqiu/android/stock/RZRQActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setAdapter(Lcom/xueqiu/android/stock/a/ai;)V

    .line 5079
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->p:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setVisibility(I)V

    .line 30
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/RZRQActivity;)Lcom/google/gson/JsonArray;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->s:Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/RZRQActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/RZRQActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/RZRQActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->q:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final j()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->t:Z

    .line 85
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->t:Z

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/RZRQActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->j:Ljava/lang/String;

    .line 50
    const-string v0, "\u878d\u8d44\u878d\u5238"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/RZRQActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/RZRQActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f0e0194

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/RZRQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/view/TableFixHeaders;

    iput-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->p:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->p:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setTouchListener(Lcom/xueqiu/android/stock/q;)V

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->p:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setVisibility(I)V

    .line 55
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x641

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 56
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/RZRQActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4062
    iget-object v1, p0, Lcom/xueqiu/android/stock/RZRQActivity;->j:Ljava/lang/String;

    new-instance v2, Lcom/xueqiu/android/stock/RZRQActivity$1;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/RZRQActivity$1;-><init>(Lcom/xueqiu/android/stock/RZRQActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4323
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->h(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 59
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/RZRQActivity;->t:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
