.class final Lcom/xueqiu/android/stock/c/x$4;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1097
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1098
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 1099
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v4}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/xueqiu/android/stock/c/x;->d(Lcom/xueqiu/android/stock/c/x;I)Lcom/xueqiu/android/stock/c/y;

    move-result-object v4

    .line 1100
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->h(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v3

    .line 2413
    iget v5, v3, Lcom/xueqiu/android/common/r;->f:I

    .line 1102
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 1103
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    iget v4, v4, Lcom/xueqiu/android/stock/c/y;->a:I

    move-object v6, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    .line 1122
    :cond_0
    :goto_0
    return-object v1

    .line 1105
    :cond_1
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1106
    const-string v3, "all"

    iget v4, v4, Lcom/xueqiu/android/stock/c/y;->a:I

    const-string v6, "alpha"

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    goto :goto_0

    .line 1108
    :cond_2
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 1109
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    const v3, 0x7f0703b4

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1110
    iget v4, v4, Lcom/xueqiu/android/stock/c/y;->a:I

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    goto :goto_0

    .line 1112
    :cond_3
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    .line 1113
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    const v3, 0x7f0703b5

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1114
    iget v4, v4, Lcom/xueqiu/android/stock/c/y;->a:I

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    goto :goto_0

    .line 1116
    :cond_4
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    const v3, 0x7f0703b8

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1118
    iget v4, v4, Lcom/xueqiu/android/stock/c/y;->a:I

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/base/b/p;->a(Ljava/lang/Object;)V

    .line 1044
    const/4 v0, 0x0

    .line 1050
    :goto_0
    return-object v0

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/x;->d(Lcom/xueqiu/android/stock/c/x;I)Lcom/xueqiu/android/stock/c/y;

    move-result-object v0

    .line 1048
    const/4 v1, 0x1

    iput v1, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    .line 1050
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/x$4;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1062
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1062
    if-nez v0, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    instance-of v0, p1, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1067
    check-cast v0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    .line 1069
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->B(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/a/ak;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Lcom/xueqiu/android/community/a/ak;)V

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/stock/c/x;->d(Lcom/xueqiu/android/stock/c/x;I)Lcom/xueqiu/android/stock/c/y;

    move-result-object v0

    .line 1075
    if-eqz p1, :cond_3

    if-eqz p2, :cond_6

    .line 1076
    :cond_3
    if-eqz v0, :cond_4

    .line 1077
    iget v2, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    .line 1079
    iget v2, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    if-gtz v2, :cond_4

    .line 1080
    iput v1, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    .line 1084
    :cond_4
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1089
    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    if-ne v0, v1, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->C(Lcom/xueqiu/android/stock/c/x;)V

    .line 1091
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    .line 1092
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/x;->b(Lcom/xueqiu/android/stock/c/x;Z)V

    goto :goto_0

    .line 1085
    :cond_6
    if-nez p3, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1086
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->h(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/i;->c()V

    goto :goto_1

    .line 1091
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$4;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/x;->d(Lcom/xueqiu/android/stock/c/x;I)Lcom/xueqiu/android/stock/c/y;

    move-result-object v0

    .line 1056
    iget v1, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    .line 1057
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/x$4;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method
