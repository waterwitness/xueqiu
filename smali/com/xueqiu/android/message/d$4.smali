.class final Lcom/xueqiu/android/message/d$4;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/d;->C()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Talk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/xueqiu/android/message/d$4;->a:Lcom/xueqiu/android/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 272
    check-cast p1, Ljava/util/List;

    .line 1275
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/xueqiu/android/message/d$4;->a:Lcom/xueqiu/android/message/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 1280
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/d$4;->a:Lcom/xueqiu/android/message/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/xueqiu/android/message/d$4;->a:Lcom/xueqiu/android/message/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/d$4;->a:Lcom/xueqiu/android/message/d;

    invoke-static {v1}, Lcom/xueqiu/android/message/d;->b(Lcom/xueqiu/android/message/d;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/z;->c(Ljava/util/List;)Lcom/xueqiu/android/message/a/z;

    .line 1282
    iget-object v0, p0, Lcom/xueqiu/android/message/d$4;->a:Lcom/xueqiu/android/message/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 272
    :cond_0
    return-void

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/d$4;->a:Lcom/xueqiu/android/message/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
