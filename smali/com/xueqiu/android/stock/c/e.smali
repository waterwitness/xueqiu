.class public final Lcom/xueqiu/android/stock/c/e;
.super Lcom/xueqiu/android/stock/c/b;
.source "IndustryIndexFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field private a:Ljava/lang/String;

.field private ak:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private al:I

.field private am:Ljava/lang/String;

.field private an:Z

.field private ao:Z

.field private ap:[Ljava/lang/String;

.field private aq:[Ljava/lang/String;

.field private ar:[I

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/ViewGroup;

.field private d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

.field private e:Lcom/xueqiu/android/stock/model/F10Table;

.field private f:Lcom/google/gson/JsonObject;

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/b;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->h:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    .line 61
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/c/e;->ao:Z

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6bcf\u80a1\u6536\u76ca"

    aput-object v1, v0, v3

    const-string v1, "\u6bcf\u80a1\u51c0\u8d44\u4ea7"

    aput-object v1, v0, v4

    const-string v1, "\u6bcf\u80a1\u73b0\u91d1\u6d41"

    aput-object v1, v0, v5

    const-string v1, "\u51c0\u5229\u6da6"

    aput-object v1, v0, v6

    const-string v1, "\u8425\u4e1a\u6536\u5165"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u603b\u8d44\u4ea7"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ap:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "basiceps"

    aput-object v1, v0, v3

    const-string v1, "naps"

    aput-object v1, v0, v4

    const-string v1, "opercashpershare"

    aput-object v1, v0, v5

    const-string v1, "netprofit"

    aput-object v1, v0, v6

    const-string v1, "mainbusiincome"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "totalassets"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->aq:[Ljava/lang/String;

    .line 65
    const-string v0, "order_desc"

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->as:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->aq:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->at:Ljava/lang/String;

    .line 523
    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/e;->an:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/e;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/e;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->a:Ljava/lang/String;

    new-instance v2, Lcom/xueqiu/android/stock/c/e$1;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/c/e$1;-><init>(Lcom/xueqiu/android/stock/c/e;Lcom/xueqiu/android/base/b/q;)V

    .line 4327
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->i(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/e;I)I
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/xueqiu/android/stock/c/e;->g:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/e;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/e;->f:Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/e;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/e;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/e;->an:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/e;)Lcom/google/gson/JsonObject;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->f:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/xueqiu/android/stock/c/e;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/xueqiu/android/stock/c/e;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/e;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v2, "arg_symbol"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/e;->e(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/e;->am:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/e;->as:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/e;)V
    .locals 4

    .prologue
    .line 43
    .line 5135
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/e;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/e;->b:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/stock/c/e$2;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/stock/c/e$2;-><init>(Lcom/xueqiu/android/stock/c/e;Lcom/xueqiu/android/base/b/q;)V

    .line 5331
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ak;->h(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 43
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/e;->at:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/e;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 43
    .line 6265
    new-instance v0, Lcom/xueqiu/android/stock/model/F10Table;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/F10Table;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->e:Lcom/xueqiu/android/stock/model/F10Table;

    .line 6266
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->e:Lcom/xueqiu/android/stock/model/F10Table;

    const-string v1, "\u884c\u4e1a\u5730\u4f4d"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setTitle(Ljava/lang/String;)V

    .line 6267
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->e:Lcom/xueqiu/android/stock/model/F10Table;

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setWidth([I)V

    .line 6268
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->e:Lcom/xueqiu/android/stock/model/F10Table;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "left"

    aput-object v2, v1, v5

    const-string v2, "left"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setAlign([Ljava/lang/String;)V

    .line 6270
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->f:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_2

    .line 6271
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->f:Lcom/google/gson/JsonObject;

    const-string v1, "indName"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 6272
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->e:Lcom/xueqiu/android/stock/model/F10Table;

    new-array v2, v6, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u6240\u5c5e\u884c\u4e1a"

    aput-object v4, v3, v5

    aput-object v0, v3, v7

    aput-object v3, v2, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "\u516c\u53f8\u6570\u91cf"

    aput-object v3, v0, v5

    iget v3, p0, Lcom/xueqiu/android/stock/c/e;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stock/model/F10Table;->setRowdata([[Ljava/lang/String;)V

    .line 6273
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->e:Lcom/xueqiu/android/stock/model/F10Table;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->am:Ljava/lang/String;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setTime(Ljava/lang/String;)V

    .line 6278
    :goto_0
    new-instance v0, Lcom/xueqiu/android/stock/c/f;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/f;-><init>(Lcom/xueqiu/android/stock/c/e;)V

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->c:Landroid/view/ViewGroup;

    .line 6533
    new-instance v2, Lcom/xueqiu/android/stock/c/f;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/f;->h:Lcom/xueqiu/android/stock/c/e;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/stock/c/f;-><init>(Lcom/xueqiu/android/stock/c/e;)V

    .line 6534
    const v0, 0x7f0e0468

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/f;->a:Landroid/view/View;

    .line 6535
    const v0, 0x7f0e0469

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/f;->b:Landroid/widget/TextView;

    .line 6536
    const v0, 0x7f0e046a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/f;->c:Landroid/widget/TextView;

    .line 6537
    const v0, 0x7f0e046b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/f;->d:Landroid/widget/TextView;

    .line 6538
    const v0, 0x7f0e046c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/f;->e:Landroid/widget/ImageView;

    .line 6539
    const v0, 0x7f0e046e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/f;->f:Landroid/view/ViewGroup;

    .line 6540
    const v0, 0x7f0e046d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/f;->g:Landroid/view/View;

    .line 6279
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->e:Lcom/xueqiu/android/stock/model/F10Table;

    .line 6546
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 7197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6546
    if-eqz v1, :cond_3

    .line 6547
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->a:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 6548
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->g:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 6565
    :goto_1
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 6566
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->h:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/e;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6570
    new-instance v1, Lcom/xueqiu/android/common/widget/ag;

    iget-object v3, v2, Lcom/xueqiu/android/stock/c/f;->h:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/e;->f()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/xueqiu/android/common/widget/ag;-><init>(Landroid/content/Context;)V

    .line 6571
    iget-object v2, v2, Lcom/xueqiu/android/stock/c/f;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6573
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getRowdata()[[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6574
    new-array v2, v5, [[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/F10Table;->setRowdata([[Ljava/lang/String;)V

    .line 6576
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getWidth()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/ag;->setColumnsWidth([I)V

    .line 6577
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getHeader()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/ag;->setHeadNames([Ljava/lang/String;)V

    .line 6578
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getRowdata()[[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/ag;->setData([[Ljava/lang/String;)V

    .line 6579
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getAlign()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ag;->setColumnsAlign([Ljava/lang/String;)V

    .line 9339
    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/ag;->postInvalidate()V

    .line 43
    :cond_1
    return-void

    .line 6275
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->e:Lcom/xueqiu/android/stock/model/F10Table;

    new-array v1, v5, [[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setRowdata([[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6550
    :cond_3
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6552
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 8197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6552
    if-eqz v1, :cond_4

    .line 6553
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6558
    :goto_2
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getTime()Ljava/lang/String;

    move-result-object v1

    .line 9197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6558
    if-eqz v1, :cond_5

    .line 6559
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6555
    :cond_4
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6561
    :cond_5
    iget-object v1, v2, Lcom/xueqiu/android/stock/c/f;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6267
    :array_0
    .array-data 4
        0x2
        0x8
    .end array-data
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/c/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/c/e;)V
    .locals 2

    .prologue
    .line 43
    .line 10167
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/xueqiu/android/stock/c/e$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/e$3;-><init>(Lcom/xueqiu/android/stock/c/e;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/c/e;)V
    .locals 13

    .prologue
    .line 43
    .line 10200
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 10201
    const/16 v0, 0xa

    if-gt v9, v0, :cond_1

    .line 10202
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    .line 10203
    :cond_0
    :goto_0
    return-void

    .line 10206
    :cond_1
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ar:[I

    .line 10207
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10208
    const/4 v5, 0x0

    .line 10209
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v9, :cond_5

    .line 10210
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 10211
    const-string v1, "symbol"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 10214
    add-int/lit8 v4, v8, 0x1

    .line 10215
    if-lez v8, :cond_7

    .line 10216
    add-int/lit8 v11, v8, -0x1

    .line 10217
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 10219
    const-wide/16 v2, 0x0

    .line 10220
    iget-object v6, p0, Lcom/xueqiu/android/stock/c/e;->at:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-nez v6, :cond_2

    .line 10221
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/e;->at:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    .line 10224
    :cond_2
    const-wide/16 v6, 0x0

    .line 10225
    iget-object v12, p0, Lcom/xueqiu/android/stock/c/e;->at:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v12

    if-nez v12, :cond_3

    .line 10226
    iget-object v6, p0, Lcom/xueqiu/android/stock/c/e;->at:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v6

    .line 10229
    :cond_3
    cmpl-double v1, v2, v6

    if-nez v1, :cond_7

    .line 10230
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->ar:[I

    aget v1, v1, v11

    .line 10234
    :goto_2
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/e;->ar:[I

    aput v1, v2, v8

    .line 10236
    const/16 v1, 0xa

    if-ge v8, v1, :cond_4

    .line 10237
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10239
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->a:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10240
    const/4 v0, 0x1

    .line 10241
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->ar:[I

    aget v1, v1, v8

    iput v1, p0, Lcom/xueqiu/android/stock/c/e;->al:I

    .line 10209
    :goto_3
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v5, v0

    goto :goto_1

    .line 10244
    :cond_4
    if-nez v5, :cond_5

    .line 10247
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->a:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10248
    const/4 v5, 0x1

    .line 10249
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10250
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10251
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ar:[I

    aget v0, v0, v8

    iput v0, p0, Lcom/xueqiu/android/stock/c/e;->al:I

    .line 10259
    :cond_5
    if-nez v5, :cond_0

    .line 10260
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_6
    move v0, v5

    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_2
.end method

.method static synthetic h(Lcom/xueqiu/android/stock/c/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/stock/c/e;)V
    .locals 3

    .prologue
    .line 43
    .line 10283
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/e;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10284
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/F10Activity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setTouchListener(Lcom/xueqiu/android/stock/q;)V

    .line 10285
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    new-instance v1, Lcom/xueqiu/android/stock/c/g;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/e;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/stock/c/g;-><init>(Lcom/xueqiu/android/stock/c/e;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setAdapter(Lcom/xueqiu/android/stock/a/ai;)V

    .line 10286
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setVisibility(I)V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->at:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->as:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/stock/c/e;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ap:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/stock/c/e;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->aq:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/stock/c/e;)[I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->ar:[I

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/xueqiu/android/stock/c/e;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/xueqiu/android/stock/c/e;->al:I

    return v0
.end method

.method static synthetic q(Lcom/xueqiu/android/stock/c/e;)Lcom/xueqiu/android/stock/view/TableFixHeaders;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    return-object v0
.end method


# virtual methods
.method public final C_()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/e;->C()V

    .line 293
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/stock/c/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 94
    const v0, 0x7f030142

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->c:Landroid/view/ViewGroup;

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0e0194

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/view/TableFixHeaders;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setVisibility(I)V

    .line 99
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/e;->ao:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/e;->y()Landroid/app/Dialog;

    .line 101
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/e;->C()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/xueqiu/android/stock/c/b;->a(Landroid/os/Bundle;)V

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 88
    const-string v1, "arg_symbol"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/e;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/e;->ao:Z

    .line 75
    return-void
.end method
