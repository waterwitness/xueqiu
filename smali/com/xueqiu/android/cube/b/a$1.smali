.class final Lcom/xueqiu/android/cube/b/a$1;
.super Lcom/xueqiu/android/base/b/p;
.source "IndustryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/b/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/cube/model/Industry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/a$1;->a:Lcom/xueqiu/android/cube/b/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/a$1;->a:Lcom/xueqiu/android/cube/b/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/a;->z()V

    .line 87
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 82
    check-cast p1, Ljava/util/List;

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/a$1;->a:Lcom/xueqiu/android/cube/b/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/a;->z()V

    .line 1092
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/a$1;->a:Lcom/xueqiu/android/cube/b/a;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/a;->a(Lcom/xueqiu/android/cube/b/a;)Lcom/xueqiu/android/cube/b/b;

    move-result-object v0

    .line 1138
    iput-object p1, v0, Lcom/xueqiu/android/cube/b/b;->a:Ljava/util/List;

    .line 1093
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/a$1;->a:Lcom/xueqiu/android/cube/b/a;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/a;->a(Lcom/xueqiu/android/cube/b/a;)Lcom/xueqiu/android/cube/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/b;->notifyDataSetChanged()V

    .line 82
    return-void
.end method
