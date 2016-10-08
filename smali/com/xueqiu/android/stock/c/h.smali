.class public final Lcom/xueqiu/android/stock/c/h;
.super Lcom/xueqiu/android/common/c;
.source "IndustryListItemFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/c;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/stock/model/IndustryInStock;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/xueqiu/android/stock/c/i;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/stock/c/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/h;->c:Lcom/xueqiu/android/common/r;

    .line 42
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/h;->d:Lcom/xueqiu/android/stock/c/i;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/c/h;->f:I

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/h;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h;->c:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/xueqiu/android/stock/c/h;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/xueqiu/android/stock/c/h;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/h;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v2, "arg_page_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/h;->e(Landroid/os/Bundle;)V

    .line 51
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/h;)Lcom/xueqiu/android/stock/c/i;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h;->d:Lcom/xueqiu/android/stock/c/i;

    return-object v0
.end method

.method private c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/h;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/c/h;->f:I

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/h;->e:Ljava/lang/String;

    .line 4614
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    const/16 v2, 0x32

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ak;->a(IILjava/lang/String;Lcom/xueqiu/android/base/b/r;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 124
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f0301c8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/h;->b:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h;->b:Landroid/view/View;

    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/c/h;->f:I

    .line 114
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/h;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 56
    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 57
    const-string v1, "arg_page_type"

    sget-object v2, Lcom/xueqiu/android/stock/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/h;->e:Ljava/lang/String;

    .line 59
    :cond_0
    const-string v0, "\u677f\u5757\u884c\u60c5"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/h;->a(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4076
    new-instance v0, Lcom/xueqiu/android/stock/c/i;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/h;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/stock/c/i;-><init>(Lcom/xueqiu/android/stock/c/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/h;->d:Lcom/xueqiu/android/stock/c/i;

    .line 4077
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h;->b:Landroid/view/View;

    const v1, 0x7f0e016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 4078
    new-instance v1, Lcom/xueqiu/android/common/r;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/h;->c:Lcom/xueqiu/android/common/r;

    .line 4079
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h;->c:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/h;->d:Lcom/xueqiu/android/stock/c/i;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 4080
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h;->c:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/stock/c/h$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/h$1;-><init>(Lcom/xueqiu/android/stock/c/h;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4092
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/h;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4093
    const v0, 0x7f0e066d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4094
    const v0, 0x7f0e066e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4095
    const v0, 0x7f0e066f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h;->c:Lcom/xueqiu/android/common/r;

    .line 4225
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 73
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h;->c:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 109
    :cond_1
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget v0, p0, Lcom/xueqiu/android/stock/c/h;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/c/h;->f:I

    .line 120
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/h;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method
