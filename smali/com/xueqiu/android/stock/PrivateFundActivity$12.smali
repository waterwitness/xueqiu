.class final Lcom/xueqiu/android/stock/PrivateFundActivity$12;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
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
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;

.field private b:I

.field private c:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->b:I

    .line 260
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->c:Lcom/xueqiu/android/base/b/ai;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 9
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
    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->b:I

    .line 265
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->c:Lcom/xueqiu/android/base/b/ai;

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->b(Lcom/xueqiu/android/stock/PrivateFundActivity;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->b:I

    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->j()I

    move-result v5

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->c(Lcom/xueqiu/android/stock/PrivateFundActivity;)J

    move-result-wide v6

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;IIJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
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
    .line 276
    if-nez p3, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->d(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->c()V

    .line 279
    :cond_0
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 9
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
    .line 270
    iget v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->b:I

    .line 271
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->c:Lcom/xueqiu/android/base/b/ai;

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->b(Lcom/xueqiu/android/stock/PrivateFundActivity;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->b:I

    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->j()I

    move-result v5

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$12;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->c(Lcom/xueqiu/android/stock/PrivateFundActivity;)J

    move-result-wide v6

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;IIJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method
