.class final Lcom/xueqiu/android/stock/c/b$1;
.super Lcom/xueqiu/android/base/b/p;
.source "F10PageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/b;->C()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/stock/model/F10Page;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/b;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/b$1;->a:Lcom/xueqiu/android/stock/c/b;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 92
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 88
    check-cast p1, Lcom/xueqiu/android/stock/model/F10Page;

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/F10Page;->getTables()[Lcom/xueqiu/android/stock/model/F10Table;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1097
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/b$1;->a:Lcom/xueqiu/android/stock/c/b;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/b;->a(Lcom/xueqiu/android/stock/c/b;)Lcom/xueqiu/android/stock/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/a/d;->a(Ljava/util/ArrayList;)V

    .line 1098
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/b$1;->a:Lcom/xueqiu/android/stock/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/b;->b(Lcom/xueqiu/android/stock/c/b;)Z

    .line 88
    return-void
.end method
