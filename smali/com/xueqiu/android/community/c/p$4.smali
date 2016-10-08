.class final Lcom/xueqiu/android/community/c/p$4;
.super Lcom/xueqiu/android/base/b/p;
.source "RewardListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/community/model/RewardCash;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/community/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/p;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/community/c/p$4;->b:Lcom/xueqiu/android/community/c/p;

    iput-boolean p3, p0, Lcom/xueqiu/android/community/c/p$4;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p$4;->b:Lcom/xueqiu/android/community/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/p;->c(Lcom/xueqiu/android/community/c/p;)V

    .line 124
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 120
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1128
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p$4;->b:Lcom/xueqiu/android/community/c/p;

    iget-boolean v1, p0, Lcom/xueqiu/android/community/c/p$4;->a:Z

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/community/c/p;->a(Lcom/xueqiu/android/community/c/p;ZLcom/xueqiu/android/common/model/PagedList;)V

    .line 120
    return-void
.end method
